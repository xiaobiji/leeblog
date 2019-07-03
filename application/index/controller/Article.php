<?php

namespace app\index\controller;

use think\Lang;
use think\Controller;
use think\Request;
use Think\Db;
use App\Models\Comment;
use App\Models\CommentsReply;

class Article extends Common
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index($id)
    {
        //获取当前文章信息
        $articleData=Db::name('article')
            ->alias('a')
            ->join('category b','b.id=a.cid','LEFT')
            ->join('pics c','c.aid=a.id','LEFT')
            ->join('click k','k.aid=a.id','LEFT')
            ->where('a.id',$id)
            ->field('count(k.aid) as click,a.id,a.cid,a.title,a.content,a.desc,a.remark,a.author,a.addtime,a.cmt_count,a.keyword,a.desc,b.name,b.mark,GROUP_CONCAT(c.pic) as pic')
            ->find();

        if(!$articleData['cid'] ||!$articleData['name'] ){

            return $this->fetch(APP_PATH.'/error/404.html');//404页面我放在application下面，可以自行指定
        }

            $articleData['pic']=explode(',',$articleData['pic']);
        if(empty($articleData['pic'][0])){
            preg_match ('<img.*src=["](.*?)["].*?>',$articleData['content'],$match);
            if($match){
                $articleData['pic'][0]='../'.$match[1];
            }
}

        //添加浏览量，点击量 判断浏览ip
        $ip = $this->getip();
        $clickData=Db::name('click')
            ->where('ip',$ip)
            ->where('aid',$articleData['id'])
            ->field('id,num')
            ->find();
        if($clickData['id']){
            $click['ip']=$ip;
            $click['aid']=$articleData['id'];
            $click['view_time']=time();
            $click['num']=$clickData['num']+1;
            model('Click')->allowField(true)->save($click,['id' => $clickData['id']]);
        }else{
            $click['aid']=$articleData['id'];
            $click['view_time']=time();
            $click['num']=$clickData['num']+1;
            $click['ip']=$ip;
            model('Click')->allowField(true)->save($click);
            $articleData['click'] = $articleData['click']+1;

            model('Article')->allowField(true)->save(array('click_num',$articleData['click']),['id' => $id]);
        }
        //添加浏览量，点击量 判断浏览ip  结束


        $seo['title']=$articleData['title'];
        $seo['keyword']=$articleData['remark'];
        $seo['desc']=$articleData['desc'];
        //获取ci文章栏目的文章模板
        $art_template = Db::name('category')
            ->where('id',$articleData['cid'])
            ->field('id,art_template')
            ->find();

        //获取标签名称
        $keywords_id = explode(",",$articleData['keyword']);
        $keywords=[];
        foreach ($keywords_id as $k => $v){
            $a=Db::name('tags')
                ->where('id',$v)
                ->field('id,tname')
                ->find();
            array_push($keywords,$a);
        }

        $articleData['keyword'] = $keywords;
        //面包屑导航
        $position = $this->position($articleData['cid']);
        //上一篇
        $front=Db::name('article')
            ->where("id<".$id)
            ->order('id desc')
            ->limit('1')
            ->find();
        //下一篇
        $after=Db::name('article')
            ->where("id>".$id)
            ->order('id asc')
            ->limit('1')
            ->find();

        //查询当前栏目下所有子栏目
        $childCate = $this->getChildCate($articleData['cid']);
        $style='block';
        if(empty($childCate)){
            //获取手機端导航栏HTML样式
            $childCate = $this->getAllCate();
            $style = 'none';
        }
        //获取左侧导航栏HTML样式
//        $childCate = $this->getLfetMenuHtml($childCate,$id,$style);

        foreach ($childCate as $k=>$v){
            //获取当前栏目下所有子栏目id；用于文章查询
            $vcids = $this->getAllChildcateIds($v['id']);
            //获取当前栏目下所有文章，包括子栏目下文章
            $childCate[$k]['articles'] = $this->getArticles(10,$vcids);
        }

        //获取文章内容视频链接 开始
        if($articleData['mark']=='video'){
            preg_match('/<video.+src=\"?(.+\.(mp4))\"?.+>/i',$articleData['content'],$match);
            $articleData['video']=$match[1];
        }
        //获取文章内容视频链接 结束

        //获取文章所属顶级栏目下所有文章 推荐产品 案例 新闻
        $tuijianArticle = $this->getTuijianArticle(4,$this->getAllChildcateIds($this->getParentId($articleData['cid'])),$id);

        $yanfa=$this->getchanpin('yanfa',8);
        $this->assign([
            'childCate'=>$childCate,
            'tuijianArticle'=>$tuijianArticle,
            'articleData'=>$articleData,
            'position'=>$position,
            'front'=>$front,
            'after'=>$after,
            'keyData'=>$articleData['keyword'],
            'yanfa'=>$yanfa,
            'seo'=>$seo
        ]);

        $this->show(4);
        return $this->fetch($art_template['art_template']);
    }



    /**
     * lee获取栏目页文章,按照发布时间排序
     */
    private function getTuijianArticle($num='4',$cid,$id){
        $map['a.cid']= array('in',$cid);
        $map['a.id']= array('neq',$id);
        //获取当前文章信息
        $tuijianArticle=Db::name('article')
            ->alias('a')
            ->join('pics c','c.aid=a.id','LEFT')
            ->where($map)
            ->where('a.id')
            ->order('a.istop desc,a.toptime Desc,a.addtime Desc')
            ->limit($num)
            ->field('a.id,a.title,GROUP_CONCAT(c.pic) as pic')
            ->select();
            foreach ($tuijianArticle as $k=>$v){
                $tuijianArticle[$k]['pic']=explode(',',$v['pic']);
            };
        return $tuijianArticle;
    }



    //无限极循环 取出回复信息
    public function get_reply($comment_id,$from_id){
        $reply=db('comments_reply')
            ->alias('c')
            ->JOIN('member m','m.id=c.from_uid','left')
            ->JOIN('member n','n.id=c.to_uid','left')
            ->where(['c.reply_type'=>2,'c.reply_id'=>$from_id,'c.comment_id'=>$comment_id])
            ->field('c.*,m.username from_user,n.username to_user')
            ->order('c.create_time','desc')
            ->select();
        $html='';
        if(!empty($reply)){
            foreach ($reply as $k=>$v){
                $like= db('like')
                    ->where(['reply_id'=>$v['id'],'uid'=>$this->user_id])
                    ->field('id')
                    ->find();
                if($like['id']){
                    $reply[$k]['is_like']='1';
                    $like_style = 'color:red';
                }else{
                    $reply[$k]['is_like']='';
                    $like_style = '';
                }

                $html .="<div class='item cl'> <a href='#'><i class='avatar size-L radius'><img alt='' src='http://qzapp.qlogo.cn/qzapp/101388738/696C8A17B3383B88804BA92ECBAA5D81/100'></i></a>";
                $html .="<div class='comment-main'>";
                $html .="<header class='comment-header'>";
                $html .="<div class='comment-meta'><a class='comment-author' href='#'>".$v['from_user']."回复".$v['to_user']."</a>";
                $html .="<a href='javascript:;' onclick='reply_like(".$v['id'].")' class='f-r' style='font-size: 20px;".$like_style."; line-height: 18px;'><i class='Hui-iconfont Hui-iconfont-zan2'></i>".$v['like_num']."</a>";
                $html .="<time title='".date('Y年m月d日 H:i:s',$v['create_time'])."' datetime='".date('Y-m-dTH:i:s',$v['create_time'])."' style='margin-right:10px' class='f-r'>".date('Y-m-d H:i:s',$v['create_time'])."</time>";
                $html .="</div>";
                $html .="</header>";
                $html .="<div class='comment-body'>";
                $html .="<p>".$v['content']."</p>";
                $html .="<a onclick='reply(".$v['id'].")' class='btn size-MINI btn-primary radius' style='float: right;'>回复</a>";
                $html .="<a onclick='modaldemo(".$v['id'].")' class='btn size-MINI btn-primary radius' style='float: right;'>回复</a>";
                $html .="</div>";
                $html .="</div>";
                $html .="</div>";
                $html .= $this->get_reply($v['comment_id'],$v['id']);

            }
        }
        return $html ? $html : $html ;
    }


    //内容查看
    public function show($id){
        $res=db('questions')
            ->alias('q')
            ->JOIN('member m','m.id=q.uid','left')
            ->where('q.qid',$id)
            ->field('q.*,m.username questioner')
            ->find();

        $comment=db('comments')
            ->alias('c')
            ->JOIN('member m','m.id=c.from_uid','left')
            ->where('c.topic_id',$id)
            ->field('c.*,m.username answerer')
            ->order('c.create_time','desc')
            ->paginate(4,false)
            ->each(function($item, $key){
                $like_id = db('like')
                    ->where(['com_id'=>$item['id'],'uid'=>$this->user_id])
                    ->field('id')
                    ->find();
                if($like_id['id']){
                    $item['is_like']='1';
                }else{
                    $item['is_like']='';
                }
                $reply=db('comments_reply')
                    ->alias('c')
                    ->JOIN('member m','m.id=c.from_uid','left')
                    ->JOIN('member n','n.id=c.to_uid','left')
                    ->where(['c.reply_type'=>1,'c.reply_id'=>$item['id']])
                    ->field('c.*,m.username from_user,n.username to_user')
                    ->order('c.create_time','desc')
                    ->select();
                foreach ($reply as $k=>$v){
                    $like= db('like')
                        ->where(['reply_id'=>$v['id'],'uid'=>$this->user_id])
                        ->field('id')
                        ->find();
                    if($like['id']){
                        $reply[$k]['is_like']='1';
                    }else{
                        $reply[$k]['is_like']='';
                    }
                    $reply_coments = $this->get_reply($v['comment_id'],$v['id']);
                    $reply[$k]['reply_coments'] = $reply_coments;

                }
                $item['com_reply']=$reply;
                return $item;
            });
        $this->assign('show_data',$res);
        $this->assign('comment',$comment);
        $this->assign('floor',count($comment));
//        return view('questions_show');
    }


}

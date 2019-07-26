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
        $map['b.isshow']=array('=',1);
        $map['a.id']=array('=',$id);
        $map['a.is_show']= array('=',1);
        //获取当前文章信息
        $articleData=Db::name('article')
            ->alias('a')
            ->join('category b','b.id=a.cid','LEFT')
            ->join('pics c','c.aid=a.id','LEFT')
//            ->join('click k','a.id = k.aid','LEFT')
            ->join('articlelike e','a.id = e.aid','LEFT')
            ->where($map)
            ->field('a.id,a.cid,count(e.aid) as likenum,a.title,a.content,a.desc,a.source,a.sourceurl,a.remark,a.author,a.addtime,a.reply_num,a.keyword,a.click_num as click,a.desc,b.name as cname,b.mark,GROUP_CONCAT(c.pic) as pic')
            ->find();
        if(!$articleData['cid'] ||!$articleData['cname'] ){

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
//            Db::name('article')->where('id',$id)->update(['click_num'=>$articleData['click']]);
        }
        $res=db('click')
            ->where('aid',$id)
            ->field('count(id) as click')
            ->find();
        $articleData['click'] = $res['click'];
        //添加浏览量，点击量 判断浏览ip  结束

        //获取ci文章栏目的文章模板
        $art_template = Db::name('category')
            ->where('id',$articleData['cid'])
            ->field('id,art_template')
            ->find();

        //当前所在栏目的推荐文章 开始
        $cids = $this->getAllChildcateIds($articleData['cid']);
        $tuijianArticles = $this->getcateArticles(10,$cids,'a.istuijian,1');
        //当前所在栏目的推荐文章 结束

        //获取随机文章
        $suijiData =$this->getRandArticle(4);
        //根据标签获取相关文章
        $xiangguanData = $this->getTagArticles($id,$articleData['keyword']);

        //获取标签名称
        $keywords_id = explode(",",$articleData['keyword']);
        $keywords=[];
        $seo_keyword ='';
        foreach ($keywords_id as $k => $v){
            $a=Db::name('tags')
                ->where('id',$v)
                ->field('id,tname')
                ->find();
            array_push($keywords,$a);
            $seo_keyword .= $a['tname'].',';
        }

        $articleData['keyword'] = $keywords;
        $seo['title']=$articleData['title'];
        $seo['keyword']=rtrim($seo_keyword, ",");
        $seo['desc']=$articleData['desc'];
        //面包屑导航
        $position = $this->position($articleData['cid']);
        //上一篇
        $mapfront['b.isshow']=array('=',1);
        $mapfront['a.id']=array('<',$id);
        $mapfront['a.is_show']= array('=',1);
        $front=Db::name('article')
                ->alias('a')
                ->join('category b','b.id=a.cid','LEFT')
                ->where($mapfront)
                ->order('id desc')
                ->limit('1')
                ->find();
        //下一篇
        $mapafter['b.isshow']=array('=',1);
        $mapafter['a.id']=array('>',$id);
        $mapafter['a.is_show']= array('=',1);
        $after=Db::name('article')
            ->alias('a')
            ->join('category b','b.id=a.cid','LEFT')
            ->where($mapafter)
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

        $islike = $this->islike($id);
        $this->assign([
            'childCate'=>$childCate,
            'tuijianArticle'=>$tuijianArticle,
            'articleData'=>$articleData,
            'xiangguanData'=>$xiangguanData,
            'suijiData'=>$suijiData,
            'tuijianArticles'=>$tuijianArticles,
            'position'=>$position,
            'front'=>$front,
            'after'=>$after,
            'keyData'=>$articleData['keyword'],
            'yanfa'=>$yanfa,
            'islike'=>$islike,
            'seo'=>$seo
        ]);

        $this->show($id);
        return $this->fetch($art_template['art_template']);
    }


    public function islike($aid){
        $ip = $this->getip();
        $uname = session('username');
        $whereip['ip']=array('eq',$ip);
        $whereip['aid']=array('eq',$aid);
        $likeip =  $likeData = Db::name('articlelike')
            ->where($whereip)
            ->field('id,uname,ip')
            ->find();

        $whereuname['uname']=array('eq',$uname);
        $whereuname['aid']=array('eq',$aid);
        $likeuname = Db::name('articlelike')
            ->where($whereuname)
            ->field('id,uname,ip')
            ->find();
        if($likeuname['id']){
            return 1;
        }
        if($likeip['id']){
            return 1;
        }
        return 0;
    }
    public function like(){
        if(request()->isAjax()){
            $aid = $_REQUEST['aid'];
            if($aid){
                $ip = $this->getip();
                $uname = session('username');
                $whereip['ip']=array('eq',$ip);
                $whereip['aid']=array('eq',$aid);
                $likeip =  $likeData = Db::name('articlelike')
                    ->where($whereip)
                    ->field('id,uname,ip')
                    ->find();

                $whereuname['uname']=array('eq',$uname);
                $whereuname['aid']=array('eq',$aid);
                $likeuname = Db::name('articlelike')
                    ->where($whereuname)
                    ->field('id,uname,ip')
                    ->find();
                if($likeuname['id']){
                    Db::name('articlelike')->where('id',$likeuname['id'])->update(['ip'=>$likeuname['ip']]);
                    return $this->json(202,'','已经点赞');
                }
                if($likeip['id']){
                    return $this->json(203,'','已经点赞');
                }

                $data['ip']=$ip;
                $data['aid']= $aid;
                $data['uname']= $uname;
                $data['like_time']= time();
                $res = Db::name('articlelike')->insert($data);
                if($res){

                    return $this->json(201,'','点赞成功');
                }else{
                    return $this->json(204,'','点赞失败');
                }
            }else{
                return $this->json(400,'','参数错误');
            }
        }else{
            return $this->json(401,'','违法提交');
        }

    }

    /**
     * lee根据标签来查询相关文章
     */
    private function getTagArticles($aid,$keywords){
        $map['b.isshow']= array('=',1);
        $map['a.is_show']= array('=',1);
        $map['a.keyword']= array('in',$keywords);
        $map['a.id']= array('neq',$aid);
        //获取当前文章信息
        $xiangguanArticle=Db::name('article')
            ->alias('a')
            ->join('category b','a.cid=b.id','LEFT')
            ->join('pics c','c.aid=a.id','LEFT')
            ->where($map)
            ->limit(4)
            ->field('a.title,a.id,GROUP_CONCAT(c.pic) as pic,a.content')
            ->select();
        foreach ($xiangguanArticle as $k=>$v){
            $xiangguanArticle[$k]['pic']=explode(',',$v['pic']);
            if(empty($xiangguanArticle[$k]['pic'][0])){
                preg_match ('<img.*src=["](.*?)["].*?>',$xiangguanArticle[$k]['content'],$match);
                if($match){
                    $xiangguanArticle[$k]['pic'][0]='../'.$match[1];
                }
            }
        }
        return $xiangguanArticle;
    }
    /**
     * lee获取栏目页文章,按照发布时间排序
     */
    private function getTuijianArticle($num='4',$cid,$id){
        $map['a.cid']= array('in',$cid);
        $map['a.id']= array('neq',$id);
        $map['b.isshow']= array('=',1);
        $map['a.is_show']= array('=',1);
        //获取当前文章信息
        $tuijianArticle=Db::name('article')
            ->alias('a')
            ->join('pics c','c.aid=a.id','LEFT')
            ->join('category b','a.cid=b.id','LEFT')
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
    /**
     * lee获取随机文章,按照发布时间排序
     */
    private function getRandArticle($num){
        $map['a.is_show']= array('=',1);
        $map['b.isshow']= array('=',1);
        //获取随机文章
        $res =Db::name('article')
            ->alias('a')
            ->join('pics c','c.aid=a.id','LEFT')
            ->join('category b','a.cid=b.id','LEFT')
            ->where($map)
            ->orderRaw('rand()')
            ->field('a.id,a.title,a.content,a.remark,GROUP_CONCAT(c.pic) as pic')
            ->group('a.id')
            ->limit($num)
            ->select();
        foreach($res as $k=>$v){
            $res[$k]['pic']=explode(',',$v['pic']);
            if(empty($v['pic'][0])){
                preg_match ('<img.*src=["](.*?)["].*?>',$v['content'],$match);
                if($match){
                    $res[$k]['pic'][0]='../'.$match[1];
                }
            }
        }
        return $res;

    }


    /**
     * lee获取栏目页本栏目下推荐文章,
     */
    protected function getcateArticles($num='10',$id){
        $map['a.cid']= array('in',$id);
        $map['b.isshow']= array('=',1);
        $map['a.is_show']= array('=',1);
        $res=db('article')
            ->join('category b','b.id=a.cid')
            ->alias('a')
            ->where($map)
            ->select();
        $count = count($res);
        $data = db('article')
            ->alias('a')
            ->join('category b','b.id=a.cid')
            ->join('pics c','c.aid=a.id','LEFT')
            ->order('a.istop desc,a.toptime Desc,a.addtime Desc')
            ->where($map)
            ->where('istuijian',1)
            ->field('a.id,a.title,a.istop,a.istuijian,a.cid,a.desc,a.thumb,a.author,a.addtime,a.content,a.remark,b.mark,GROUP_CONCAT(c.pic) as pic,b.name as cname')
            ->group('a.id')
            ->paginate($num,$count)
            ->each(function($item, $key){
                $item['pic']=explode(',',$item['pic']);
                if(empty($item['pic'][0])){
                    preg_match ('<img.*src=["](.*?)["].*?>',$item['content'],$match);
                    if($match){
                        $item['pic'][0]='../'.$match[1];
                    }
                }
                return $item;
            });
        return $data;
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

//                $html .="<div class='item cl'> <a href='#'><i class='avatar size-L radius'><img alt='' src='http://qzapp.qlogo.cn/qzapp/101388738/696C8A17B3383B88804BA92ECBAA5D81/100'></i></a>";
//                $html .="<div class='comment-main'>";
//                $html .="<header class='comment-header'>";
//                $html .="<div class='comment-meta'><a class='comment-author' href='#'>".$v['from_user']."回复".$v['to_user']."</a>";
//                $html .="<a href='javascript:;' onclick='reply_like(".$v['id'].")' class='f-r' style='font-size: 20px;".$like_style."; line-height: 18px;'><i class='Hui-iconfont Hui-iconfont-zan2'></i>".$v['like_num']."</a>";
//                $html .="<time title='".date('Y年m月d日 H:i:s',$v['create_time'])."' datetime='".date('Y-m-dTH:i:s',$v['create_time'])."' style='margin-right:10px' class='f-r'>".date('Y-m-d H:i:s',$v['create_time'])."</time>";
//                $html .="</div>";
//                $html .="</header>";
//                $html .="<div class='comment-body'>";
//                $html .="<p>".$v['content']."</p>";
//                $html .="<a onclick='reply(".$v['id'].")' class='btn size-MINI btn-primary radius' style='float: right;'>回复</a>";
//                $html .="<a onclick='modaldemo(".$v['id'].")' class='btn size-MINI btn-primary radius' style='float: right;'>回复</a>";
//                $html .="</div>";
//                $html .="</div>";
//                $html .="</div>";

                $html .="<div class='ecomment'>";
                $html .="<span class='ecommentauthor'>".$v['from_user']."回复".$v['to_user']."：<span class='ecommentauthor' style='float: right;font-size: 12px'>".date('Y-m-d H:i:s',$v['create_time'])."<a href='#plpost' onclick='comments_reply_id(".$v['id'].")' style='font-size:12px;display: block;background: #040404;color: #fff;border: 0;line-height: 20px;padding: 0 5px;margin-left:5px;border-radius: 5px;float: right;'>回复 </a></span></span>";
                $html .="<p  id='comments_reply_".$v['id']."' class='ecommenttext'>".$v['content']."</p>";
                $html .="</div>";



                $html .= $this->get_reply($v['comment_id'],$v['id']);
            }
        }
        return $html ? $html : $html ;
    }


    //内容查看
    public function show($id){
//        $res=db('questions')
//            ->alias('q')
//            ->JOIN('member m','m.id=q.uid','left')
//            ->where('q.qid',$id)
//            ->field('q.*,m.username questioner')
//            ->find();

        $comment=db('comments')
            ->alias('c')
            ->JOIN('member m','m.id=c.from_uid','left')
            ->where('c.topic_id',$id)
            ->field('c.*,m.username answerer')
//            ->field('c.*,c.nickname as answerer')
            ->order('c.create_time','desc')
            ->paginate(8,false)
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
//        $this->assign('show_data',$res);
        $this->assign('comment',$comment);
        $this->assign('floor',count($comment));
//        return view('questions_show');
    }


}

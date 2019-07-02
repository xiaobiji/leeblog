<?php
namespace app\index\controller;

use think\Db;

class Index extends Common
{
    public function index()
    {
        //获取首页排序值前6的栏目，并分别获取里面7个文章
        $six_cates = $chanpinpids=db('category')
            ->field('id,name,sort')
            ->order('sort Desc,id asc')
            ->limit(6)
            ->select();
        foreach ($six_cates as $k =>$v){
            $six_cates[$k]['arts'] = $this->getArticles(7,$six_cates[$k]['id']);
        }

        //获取首页两篇推荐文章
        $tuijianData = $this->get_tuijian_articles(2);
        //获取首页推荐栏目标签
        $indexTagsData=$this->get_tags(5);

        //获取所有栏目标识
        $chanpinpids=db('category')
            ->where('mark','chanpin')
            ->field('id,name,pid')
            ->order('sort Desc,id asc')
            ->select();

        $chanpin=$this->getchanpin('chanpin',6);
        $xinwen=$this->getchanpin('news',3);
        $anli=$this->getchanpin('anli',3);
        $shipin=$this->getchanpin('video',8);
        $yanfa=$this->getchanpin('yanfa',8);
        foreach ($shipin as $k=>$v){
            preg_match('/<video.+src=\"?(.+\.(mp4))\"?.+>/i',$v['content'],$match);
            $shipin[$k]['content']=$match[1];
        }
        foreach ($chanpinpids as $k=>$v){
            if($v['pid']==0){
                unset($chanpinpids[$k]);
            }
        }


        $chanpinpid = $this->getmarkid('chanpin');
        $yanfaid = $this->getmarkid('yanfa');
        $newsid = $this->getmarkid('news');
        $anliid= $this->getmarkid('anli');
        $shipinid= $this->getmarkid('video');
        $chanpinDatas = $this->getchanpin_art($chanpinpid['id']);
        $yanfaDatas = $this->getchanpin_art($yanfaid['id']);
        //获取当前栏目下所有子栏目id；用于文章查询
        $chanpincids = $this->getAllChildcateIds($chanpinpid['id']);
        $newchanpin = $this->getArticles(6,$chanpincids);
        $about=$this->getabout();
        $huoban=$this->gethuoban();
        $case = $this->getCase();
        $articles = $this->getnewarticle();
        $res_pid = db('category')->where('mark','xinwen')->field('id')->find();
        $news_id = db('category')->where('pid',$res_pid['id'])->field('id,name')->select();
        //获取手機端导航栏HTML样式
        $childCate = $this->getAllCate();
        $style = 'none';
        $childCate = $this->getLfetMenuHtml($childCate,'',$style);

        if(!empty($news_id[0])){
            //查询子栏目文章页
            $news_one_info = db('article')->alias('a')
                ->join('pics b','b.aid=a.id')
                ->where('a.cid',$news_id[0]['id'])
                ->order('a.id desc')
                ->field('a.id,a.title,a.desc,a.content,a.addtime,b.pic')
                ->select();
            $this->assign('news_one_info' ,$news_one_info);
        }
        if (!empty($news_id[1])) {
            $news_two_info = db('article')->alias('a')
            ->join('pics b','b.aid=a.id')
            ->where('a.cid',$news_id[1]['id'])
            ->order('a.id desc')
            ->field('a.id,a.title,a.desc,a.content,a.addtime,b.pic')
            ->select();
            $this->assign('news_two_info' ,$news_two_info);
        }
        //获取网站配置信息
        $config=db('config')->field('config')->find();
        //解码配置信息
        $config=json_decode($config['config'],true);
        $seo['title']=$config['title'];
        $seo['keyword']=$config['keyword'];
        $seo['desc']=$config['desc'];

        $this->assign([
            'six_cates'=>$six_cates,
            'tuijianData'=>$tuijianData,
            'indexTagsData'=>$indexTagsData,
            'newchanpin'=>$newchanpin,
            'chanpinpids'=>$chanpinpids,
            'chanpinDatas'=>$chanpinDatas,
            'yanfaDatas'=>$yanfaDatas,
            'anli'=>$anli,
            'childCate'=>$childCate,
            'chanpinpid'=>$chanpinpid,
            'yanfaid'=>$yanfaid,
            'newsid'=>$newsid,
            'anliid'=>$anliid,
            'shipinid'=>$shipinid,
            'about'=>$about,
            'articles'=>$articles,
            'chanpin'=>$chanpin,
            'xinwen'=>$xinwen,
            'shipin'=>$shipin,
            'yanfa'=>$yanfa,
            'huoban'=>$huoban,
            'case'  =>$case,
            'news_after_name'=>$news_id,
            'seo'=>$seo
        ]);
        return view();
    }
    //获取关于我们
    private function getabout(){
        $res=db('category')->where('mark','about')->field('content')->find();
        return $res['content'];
    }


    /**
     * lee添加首页获取所有文章,按照顶置文章->发布时间排序
     */
    private function getnewarticle($num='10'){
        $res=Db::name('article')
            ->alias('a')
            ->join('pics c','c.aid=a.id','LEFT')
            ->field('a.id')
            ->select();
        $count = count($res);
        $data = Db::name('article')
            ->alias('a')
            ->join('pics c','c.aid=a.id','LEFT')
            ->order('a.addtime Desc')
            ->field('a.id,a.title,a.cid,a.remark,a.thumb,a.addtime,a.content,GROUP_CONCAT(c.pic) as pic')
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


    private function getmarkid($a){
        $chanpinpid=db('category')
            ->where('mark',$a)
            ->where('pid',0)
            ->field('id,name')
            ->order('sort Desc,id asc')
            ->find();
        if(!$chanpinpid){
            $chanpinpid=db('category')
                ->where('mark',$a)
                ->field('id,name')
                ->order('sort Desc,id asc')
                ->limit(1)
                ->find();
        }
        if(!$chanpinpid){
            $chanpinpid['id']=0;
            $chanpinpid['name']='';
        }
        return $chanpinpid;
    }

    //获取所有含有chanpin标识栏目下子栏目名称及其所属文章
    private function getchanpin_art($pid,$cate_num=4,$art_num=6){
        $res_pid=db('category')
            ->where('pid',$pid)
            ->field('id,name,pid,pic')
            ->order('sort Desc,id asc')
            ->limit($cate_num)
            ->select();
        foreach($res_pid as $k=>$v){
            $res_pid[$k]['art']=db('article')
                ->where('cid',$res_pid[$k]['id'])
                ->alias('a')
                ->join('pics c','c.aid=a.id','LEFT')
                ->order('a.istop desc,a.toptime Desc,a.addtime Desc')
                ->field('a.id,a.title,a.cid,a.desc,a.thumb,a.author,a.addtime,a.content,GROUP_CONCAT(c.pic) as pic')
                ->group('a.id')
               ->select();
            foreach ($res_pid[$k]['art'] as $a=>$b){
                $b['pic']=explode(',',$b['pic']);
                if(empty($b['pic'][0])){
                    preg_match ('<img.*src=["](.*?)["].*?>',$b['content'],$match);
                    if($match){
                        $b['pic'][0]='../'.$match[1];
                    }
                }
            }
        }
        return $res_pid;
    }


    //获取工程案例信息
    private  function getCase(){
        $res_pid = db('category')->where('mark','gongcheng')->field('id')->find();
        $res = db('article')->alias('a')
            ->join('pics b','b.aid=a.id')
            ->where('a.cid',$res_pid['id'])
            ->field('a.id,a.title,a.desc,a.content,b.pic')
            ->select();
        return $res;
    }
    //获取合作伙伴
    private function gethuoban(){
        $res_pid=db('category')->where('mark','huoban')->field('id')->find();
        $res=db('article')->alias('a')
            ->join('pics b','b.aid=a.id')
            ->where('a.cid',$res_pid['id'])
            ->order('a.id desc')
            ->field('a.title,a.content,b.pic')
            ->select();
        return $res;
    }

    /**
     * lee获取栏目页文章,按照发布时间排序

    protected function getArticles($num='10',$id){
        $map['a.cid']= array('in',$id);
        $res=Db::name('article')
            ->alias('a')
            ->where($map)
            ->select();
        $count = count($res);
        $data = Db::name('article')
            ->alias('a')
            ->join('pics c','c.aid=a.id','LEFT')
            ->order('a.addtime Desc')
            ->field('a.id,a.title,a.cid,a.remark,a.thumb,a.addtime,a.content,GROUP_CONCAT(c.pic) as pic')
            ->where($map)
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
    }*/


}

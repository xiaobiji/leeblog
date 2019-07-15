<?php

namespace app\index\controller;

use think\Controller;
use think\Request;
use Think\Db;

class Category extends Common
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index($id)
    {
        $cateData = $this->getCate($id);
        $seo['title']=$cateData['name'];
        $seo['keyword']=$cateData['keyword'];
        $seo['desc']=$cateData['desc'];

        //获取当前栏目下所有子栏目id；用于文章查询
        $cids = $this->getAllChildcateIds($id);
        if($cateData['mark']=='video'){
            $articles = $this->getArticles(10,$cids);
            $tuijianArticles = $this->getcateArticles(10,$cids,'a.istuijian,1');
        }else{
            //获取当前栏目下所有文章，包括子栏目下文章
            $articles = $this->getArticles(10,$cids,'video');
            $tuijianArticles = $this->getcateArticles(5,$cids);
            //获取当前栏目信息
        }
        //查询当前栏目下所有子栏目
        $childCate = $this->getChildCate($id);
        $style = 'block';
        if(empty($childCate)){
            $childCate = $this->getAllCate();
            $style = 'none';
        }

        foreach ($childCate as $k=>$v){
            //获取当前栏目下所有子栏目id；用于文章查询
            $vcids = $this->getAllChildcateIds($v['id']);
            //获取当前栏目下所有文章，包括子栏目下文章
            $childCate[$k]['articles'] = $this->getArticles(10,$vcids);
        }
        //获取左侧导航栏HTML样式
//        $childCate = $this->getLfetMenuHtml($childCate,$id,$style);
        //面包屑导航
        $position = $this->position($id);
        $yanfa=$this->getchanpin('yanfa',8);
        $news=$this->getchanpin('news',8);
        $this->assign([
            'cateData'=>$cateData,
            'childCate'=>$childCate,
            'articles'=>$articles,
            'tuijianArticles'=>$tuijianArticles,
            'position'=>$position,
            'floor'=>1,
            'seo'=>$seo,
            'yanfa'=>$yanfa,
            'news'=>$news
        ]);
        $template = '';
        if($cateData['pid']==0 && $cateData['cover_template']!==''){
            $template = $cateData['cover_template'];
        }
        if(!$template){
            $cateData['cate_template']==""?$template='index':$template=$cateData['cate_template'];
        }

        return $this->fetch($template);
    }

    /**
     * lee获取当前栏目信息
     */
    private function getCate($id){
        $map['isshow']= array('=',1);
        $map['id']= array('=',$id);
        $data=Db::name('category')
            ->where($map)
            ->field('id,name,keyword,desc,cate_template,cover_template,pid,mark,content,pic,remark')
            ->find();
        return $data;
    }


    /**
     * lee获取栏目页本栏目下推荐文章,
     */
    protected function getcateArticles($num='10',$id){
        $map['a.cid']= array('in',$id);
        $map['b.isshow']= array('=',1);
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
            ->where('a.istuijian',1)
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
}

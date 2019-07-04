<?php

namespace app\index\controller;

use think\Controller;
use think\Request;
use Think\Db;

class Search extends Common
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        if($_REQUEST){
            $keywords = $_REQUEST['keywords'];
        }else{
            $this->error('非法访问');
        }
        if(isset($keywords) && !empty($keywords)){
            $childCate = $this->getAllCate();
            foreach ($childCate as $k=>$v){
                //获取当前栏目下所有子栏目id；用于文章查询
                $vcids = $this->getAllChildcateIds($v['id']);
                //获取当前栏目下所有文章，包括子栏目下文章
                $childCate[$k]['articles'] = $this->getArticles(10,$vcids);
            }
            $where['a.title'] = array('like','%'.$keywords.'%');
            $style = 'none';
            //获取左侧导航栏HTML样式
//            $childCate = $this->getLfetMenuHtml($childCate,'',$style);
            $res = Db::name('article')
                ->where('title','like','%'.$keywords.'%')
                ->select();
            $count = count($res);
            $articles = Db::name('article')
                ->alias('a')
                ->join('category b','b.id=a.cid')
                ->join('pics c','c.aid=a.id','LEFT')
                ->order('a.istop desc,a.toptime Desc,a.addtime Desc')
                ->field('a.id,a.title,a.istop,a.istuijian,a.cid,a.desc,a.thumb,a.author,a.addtime,a.content,a.remark,b.mark,GROUP_CONCAT(c.pic) as pic,b.name as cname')
                ->where($where)
                ->group('a.id')
                ->paginate(10,$count,['query' => ['keywords'=>$keywords]])
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
            $yanfa=$this->getchanpin('yanfa',8);

            $seo['title']='搜索'.$keywords;
            $seo['keyword']='搜索'.$keywords;
            $seo['desc']='搜索'.$keywords;

            $this->assign([
                'keyWords'=>$keywords,
                'articles'=>$articles,
                'childCate'=>$childCate,
                'yanfa'=>$yanfa,
                'seo'=>$seo,
            ]);

            if($count>0){
                return $this->fetch('index');
            }else{
                $this->error('搜索无数据');
            }
        }else{
            $this->error('请输入关键词');
        }
    }

    /**
     * 关键词搜素 显示 id号  不显示汉字
     */
    public function tags($keywords)
    {
        if(!empty($keywords)){
            $tdata=Db::name('tags')
                ->where('id',$keywords)
                ->field('id,tname')
                ->find();
            $res = Db::name('article')
                ->where('title','like','%'.$tdata['tname'].'%')
                ->select();
            $count = count($res);
            $articles = Db::name('article')
                ->alias('a')
                ->join('category b','b.id=a.cid')
                ->join('pics c','c.aid=a.id','LEFT')
                ->where('title','like','%'.$tdata['tname'].'%')
                ->order('a.istop desc,a.toptime Desc,a.addtime Desc')
                ->field('a.id,a.title,a.istop,a.istuijian,a.cid,a.desc,a.thumb,a.author,a.addtime,a.content,a.remark,b.mark,GROUP_CONCAT(c.pic) as pic,b.name as cname')
                ->paginate(10,$count)
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
            $seo['title']='搜索'.$keywords;
            $seo['keyword']='搜索'.$keywords;
            $seo['desc']='搜索'.$keywords;

            $this->assign([
                'keyWords'=>$keywords,
                'articles'=>$articles,
                'seo'=>$seo,
            ]);
            if($count>0){
                return $this->fetch('index');
            }else{
                $this->error('搜索无数据');
            }
        }else{
            $this->error('请输入关键词');
        }
    }
}

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
        }else{
            //获取当前栏目下所有文章，包括子栏目下文章
            $articles = $this->getArticles(10,$cids,'video');
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
        $data=Db::name('category')
            ->where('id',$id)
            ->field('id,name,keyword,desc,cate_template,cover_template,pid,mark,content')
            ->find();
        return $data;
    }




}

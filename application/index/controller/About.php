<?php
/**
 * Created by PhpStorm.
 * User: zhaoxu
 * Date: 2018/11/6
 * Time: 14:13
 */
namespace app\index\controller;


class About extends Common
{
    //关于我们
    public function index(){
        $seo['title']='关于我们';
        $seo['keyword']='关于我们，联系我们';
        $seo['desc']='腾飞志达公司竭诚与您服务';
        $this->assign([
            'seo'=>$seo,
        ]);
        return $this->fetch();
    }
    //联系我们
    public function contact(){
        $seo['title']='联系我们';
        $seo['keyword']='关于我们，联系我们';
        $seo['desc']='腾飞志达公司竭诚与您服务';
        $this->assign([
            'seo'=>$seo,
        ]);
        return $this->fetch();
    }
}
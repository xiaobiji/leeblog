<?php
/**
 * Created by PhpStorm.
 * User: yifeng
 * Date: 2017/12/17
 * Time: 23:50
 */

namespace app\index\controller;


class Time extends Common
{

    public function index()
    {
        $res=db('article')
            ->join('category b','b.id=a.cid')
            ->alias('a')
            ->where('isshow',1)
            ->select();
        $count = count($res);
        $data = db('article')
            ->alias('a')
            ->join('category b','b.id=a.cid')
            ->order('a.addtime Desc')
            ->where('isshow',1)
            ->field('a.id,a.title,a.addtime')
            ->group('a.id')
            ->paginate(20,$count);
        $seo['title']='时间轴';
        $seo['keyword']='时间轴';
        $seo['desc']='小李博客网站往期文章查看';
        $this->assign([
//            'cate'=>$cate_html,
            'articles'=>$data,
            'count'=>$count,
            'seo'=>$seo,
        ]);
        return view();
    }
}
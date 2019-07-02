<?php
/**
 * Created by PhpStorm.
 * User: yifeng
 * Date: 2017/10/23
 * Time: 13:17
 */

namespace app\admin\controller;
use app\admin\model\Category as CateModel;//设置别名
use think\db;
class Category extends Common
{
    public function index(){
        $cateall=CateModel::order('sort Desc,id Asc')->select();
        $cate=CateModel::getcateall($cateall,0,-1);
        $this->assign('cate',$cate);
        return view();
    }
    //栏目添加
    public function add(){
        if(request()->isPost()){
            $data=input('post.');
            if(isset($data['imgfile'])){
                unset($data['imgfile']);
            }
            //默认添加的子栏目如果没有提交模板名称，则自动根据父级栏目模板名称添加
            if($data['pid']>0){
                if(!$data['art_template']){
                    $art_template = Db::name('category')
                        ->where('id',$data['pid'])
                        ->field('id,art_template')
                        ->find();
                    $data['art_template'] = $art_template['art_template'];
                }
                if(!$data['cate_template']){
                    $cate_template = Db::name('category')
                        ->where('id',$data['pid'])
                        ->field('id,cate_template')
                        ->find();
                    $data['cate_template'] = $cate_template['cate_template'];
                }
                if(!$data['cover_template']){
                    $cover_template = Db::name('category')
                        ->where('id',$data['pid'])
                        ->field('id,cover_template')
                        ->find();
                    $data['cover_template'] = $cover_template['cover_template'];
                }
            }
            //使用模型进行数据添加
            $result=CateModel::create($data);
//            Lang::set();
            if($result){
                $this->success("栏目添加成功");
            }
        }
        //获取栏目列表
        $cateall=CateModel::order('sort Desc,id Asc')->select();
        $res=CateModel::getcateall($cateall,0,-1);
        $this->assign('cate',$res);
        return view();
    }
    //栏目排序
    public function sort(){
        if(request()->isPost()){
            $data=input('post.');
            if(CateModel::sort($data)){
                $this->success("排序成功");
            }
            $this->error("操作异常");
        }
    }

    //栏目编辑
    public function edit($id){
        if(request()->isPost()){
            $data=input('post.');
            if(isset($data['imgfile'])){
                unset($data['imgfile']);
            }
            $cateids=CateModel::getchildids($id);
            $cateids[]=$id;
            //判断更新条件,pid不在当前编辑栏目或者其子分类中
            if(in_array($data['pid'],$cateids)){
                $this->error("上级栏目选择错误！");
            }
            //列新栏目数据
            if(CateModel::where('id',$id)->update($data)){
                $this->success("更新成功",'category/index');
            }
            $this->error("更新失败");

        }
        //获取栏目列表
        $cateall=CateModel::order('sort Desc,id Asc')->select();
        $res=CateModel::getcateall($cateall,0,-1);
        //获取当前栏目信息
        $result=CateModel::get($id);
        //拆分图片地址到数组
        $result->pics=explode(",",$result->pic);
        $this->assign([
            'cate'=>$res,
            'curcate'=>$result
        ]);
        return view();
    }
    //删除栏目
    public function del($id){
//        判断是否有下级栏目
        $res=CateModel::where('pid',$id)->select();
        if($res){
            $this->error("有下级栏目，不能删除该栏目");
        }
        //1.获取栏目图片地址
        $pics=CateModel::where('id',$id)->field('pic')->find();
        if(CateModel::destroy($id)){
            //删除栏目图片
            //栏目图片可能是多张，两张之间用‘,’分隔
            //2.拆分栏目图片地址
            $arr_pic=explode(',',$pics->pic);
            foreach ($arr_pic as $v){
                $this->delimg($v);
            }
            $this->success("删除成功",'category/index');
        }
        $this->error("删除失败");
    }


    //获取指定栏目下所有子栏目id
    protected function getAllChildcateIds($categoryID)
    {
        //初始化ID数组
        $array[] = $categoryID;
        do
        {
            $ids = '';
            $where['pid'] = array('in',$categoryID);
            $cate = db('category')->where($where)->select();
            foreach ($cate as $k=>$v)
            {
                $array[] = $v['id'];
                $ids .= ',' . $v['id'];
            }
            $ids = substr($ids, 1, strlen($ids));
            $categoryID = $ids;
        }
        while (!empty($cate));
        $ids = implode(',', $array);
        return $ids;    //  返回字符串
        //return $array //返回数组
    }

}
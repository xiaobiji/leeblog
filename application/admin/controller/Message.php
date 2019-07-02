<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\admin\model\Message as MesModel;
class Message extends Common
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        $data=MesModel::order('addtime Desc,id desc')->select();
        foreach ($data as $k=>$v){
            $data[$k]['addtime'] = date("Y年m月d日 H:i:s",$v['addtime']);
        }
        $this->assign('data',$data);
        return view();
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function add()
    {
        if(request()->isPost()){
            $data = input('post.');
            $data['show_time']=strtotime($data['show_time']);
            $result = MesModel::create($data);
            if($result){
                $this->success("公告添加成功");
            }
        }
        //
        return view();
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function del($id)
    {
        if(MesModel::destroy($id)){
            $this->success("删除成功",'message/index');
        }
        $this->error("删除失败");
    }
}

<?php
/**
 * Created by PhpStorm.
 * User: yifeng
 * Date: 2017/10/20
 * Time: 12:11
 */

namespace app\admin\controller;
use think\Db;
class Config extends Common
{
    public function index(){
        if(request()->isPost()){
            $data=input('post.');
            //获取上传文件对象
            $file_logoimg=input('file.logoimg');
            if($file_logoimg){
                $data['logo']=$this->loadimg($file_logoimg);
            }
            $file_weixinimg=input('file.weixinimg');
            if($file_weixinimg){
                $data['weixin']=$this->loadimg($file_weixinimg,'weixin');
            }
            $result=db('config')->find();
            if(!$result){
                db('config')->insert(['config'=>json_encode($data,JSON_UNESCAPED_UNICODE)]);
            }else{
                if($result['config']==json_encode($data,JSON_UNESCAPED_UNICODE)){
                    $this->success('更新成功','config/index');
                }
                $result=db('config')->where('id',$result['id'])->update(['config'=>json_encode($data,JSON_UNESCAPED_UNICODE)]);
                if(!$result){
                    $this->error('修改失败','config/index');
                }else{
                    $this->success('修改成功','config/index');
                }
            }
            //dump(json_encode($data,JSON_UNESCAPED_UNICODE));
        }
        //读取配信息
        $res=db('config')->find();
        //分配模板变量
        $config=json_decode($res['config'],true);//把网站配置json字符串转换成数组
        $this->assign('config',$config);
        return view();
    }
    protected function loadimg($file,$weixin=''){
        if($file){
            if($weixin){
                //上传图片
                $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads','wechat/wechat');
            }else{
                //上传图片
                $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads','logo/logo');
            }

            //获取服务上的文件路径
            $path=$info->getSaveName();
            return $path;
        }
    }
//    微信公众号配置
    public function weixin(){
//        判断config表中是否有weixin字段
        $res=db('config')->find();
        if(!array_key_exists('weixin',$res)){
            $sql="ALTER TABLE ".config('database.prefix')."config  ADD weixin text";
            Db::execute($sql);
        }
        if(request()->isPost()){
            $data=input('post.');
            $data=json_encode($data,JSON_UNESCAPED_UNICODE);
            $result=db('config')->where('id',$res['id'])->update(['weixin'=>$data]);
            if($result){
                $res=db('config')->find();
            }
        }
        $this->assign('config',json_decode($res['weixin'],true));
        return view();
    }

}
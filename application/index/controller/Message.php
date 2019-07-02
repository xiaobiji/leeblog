<?php

namespace app\index\controller;

use think\Controller;
use think\Request;
use Think\Db;

class Message extends Common
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {

        if(empty($childCate)){
            $childCate = $this->getAllCate();
            $style = 'none';
        }

        $seo['title']='提交留言';
        $seo['keyword']='提交留言，联系我们';
        $seo['desc']='欢迎提交留言进行咨询，腾飞志达公司会尽快与您联系';

        //获取左侧导航栏HTML样式
        $childCate = $this->getLfetMenuHtml($childCate,'','none');
        $this->assign([
            'childCate'=>$childCate,
            'seo'=>$seo,
        ]);
        return view();
    }
    public function add(){
        if (request()->isAjax()){


            $data = input('post.');

            //1.后端数据验证（用户名，密码是否符合后端数据验证规则 ，验证码是否正确）
            //场景验证
            $validate=validate('Message');



            if(!$validate->scene('add')->check($data)){
                //$this->error($validate->getError());
                return $this->json(0,array(),$validate->getError());
            }

            unset($data['code']);
            if(empty($data['username'])){
                return $this->json('401',array(),'请输入用户名');
            }
            if(empty($data['tel'])){
                return $this->json('402',array(),'请输入联系手机');
            }
            $preg_phone='/^1[3456789]\d{9}$/ims';
            if(!preg_match($preg_phone,$data['tel'])) {
                return $this->json('403',array(),'请输入正确手机号');

            }
            $sea_phone = db('message')->where('tel',$data['tel'])->find();
           if($sea_phone){
               return $this->json('406',array(),'您已经咨询过了，我们会尽快与您取得联系');

           }
            $data['ip_address']=$this->getIp();
            $data['addtime']=time();
            $res=db('message')->insert($data);
            if($res){
                return $this->json('201',array(),'咨询成功，稍后客服专员会和您联系！');
            }else{
                return $this->json('405',array(),'咨询信息发送失败，您可直接拨打公司联系电话咨询！');
            }
        }else{
            return $this->json('404',array(),'违规提交');
        }
    }


    public function getIp(){
        if (isset($_SERVER)) {
            if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
                $realip = $_SERVER['HTTP_X_FORWARDED_FOR'];
            } elseif (isset($_SERVER['HTTP_CLIENT_IP'])) {
                $realip = $_SERVER['HTTP_CLIENT_IP'];
            } else {
                $realip = $_SERVER['REMOTE_ADDR'];
            }
        } else {
            if (getenv("HTTP_X_FORWARDED_FOR")) {
                $realip = getenv( "HTTP_X_FORWARDED_FOR");
            } elseif (getenv("HTTP_CLIENT_IP")) {
                $realip = getenv("HTTP_CLIENT_IP");
            } else {
                $realip = getenv("REMOTE_ADDR");
            }
        }
        return $realip;
    }
}


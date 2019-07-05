<?php
/**
 * Created by PhpStorm.
 * User: yifeng
 * Date: 2017/11/3
 * Time: 20:54
 */

namespace app\index\validate;


use think\Validate;

class Reply extends Validate
{
    protected $rule =   [
        'uname'  => 'require',
        'email'  => 'require',
        'code'  =>'require|captcha',
        'content'  => 'require',
    ];

    protected $message  =   [
        'uname.require' => '{%请输入用户名}',
        'email.require' => '{%请输入邮箱地址}',
        'code.require'  =>'验证码不能为空',
        'code.captcha' =>'验证码输入不正确',
        'content.require' => '{%请输入回答内容}',
    ];
    protected $scene = [
        'add'   =>['code'],
    ];
    /**
     * @param $value 要验证字段的值
     * @param $rule  验证规则传来的值
     * @return bool  true:验证通过  ，false/字符串：验证不通过
     */
    //自定义验证规则
    protected function checkviews($value,$rule){
        if($value>=$rule){
            return true;
        }
        return false;
    }
}
<?php
/**
 * Created by PhpStorm.
 * User: yifeng
 * Date: 2017/11/2
 * Time: 21:51
 */

namespace app\admin\model;


use think\Model;
use think\Db;

class Comments extends Model
{
    public function getList(array $where,$field='*',$order='create_time desc',$page=10){
        if($page){
            return Db('comments')
                ->where($where)->order($order)->field($field)
                ->paginate($page, false);
        }else{
            return Db('comments')->where($where)->order($order)->field($field)->select();
        }
    }
    public function getCount(array $where){
        return Db('comments')->where($where)->count();
    }
    public function getOne(array $where,$field='*'){
        return Db('comments')->where($where)->field($field)->find();
    }
}
<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use think\Db;
class Comment extends Common
{
    /**
     * 显示评论列表
     *
     * @return \think\Response
     */
    public function index()
    {
        $res = model('Comments')->getList(array());
        $this->assign('list',$res);
        return view('comment_list');
    }

    /**
     * 显示查看评论详情
     *
     * @return \think\Response
     */
    public function show($id)
    {
        $res = model('Comments')->getOne(['id'=>$id]);
        $article = model('article')->getOne(['id'=>$res['topic_id']],'id,title,author,remark,addtime,reply_num,is_reply');
        $comment = db('comments')
            ->alias('c')
            ->where('c.topic_id', $res['topic_id'])
            ->field('c.*')
            ->order('c.create_time', 'desc')
            ->paginate(4, false)
            ->each(function ($item, $key) {
                $like_id = db('like')
                    ->where(['com_id' => $item['id'], 'uid' => $this->user_id])
                    ->field('id')
                    ->find();
                if ($like_id['id']) {
                    $item['is_like'] = '1';
                } else {
                    $item['is_like'] = '';
                }
                $reply = db('comments_reply')
                    ->alias('c')
                    ->where(['c.reply_type' => 1, 'c.reply_id' => $item['id']])
                    ->field('c.*')
                    ->order('c.create_time', 'desc')
                    ->select();
                foreach ($reply as $k => $v) {
                    $like = db('like')
                        ->where(['reply_id' => $v['id'], 'uid' => $this->user_id])
                        ->field('id')
                        ->find();
                    if ($like['id']) {
                        $reply[$k]['is_like'] = '1';
                    } else {
                        $reply[$k]['is_like'] = '';
                    }
                    $reply_coments = $this->get_reply($v['comment_id'], $v['id']);
                    $reply[$k]['reply_coments'] = $reply_coments;

                }
                $item['com_reply'] = $reply;
                return $item;
            });
        $this->assign('show_data', $article);
        $this->assign('comment', $comment);
        $this->assign('floor', count($comment));
        return view('comment_show');
    }

    //无限极循环 取出回复信息
    public function get_reply($comment_id,$from_id){
        $reply=db('comments_reply')
            ->alias('c')
            ->where(['c.reply_type'=>2,'c.reply_id'=>$from_id,'c.comment_id'=>$comment_id])
            ->field('c.*')
            ->order('c.create_time','desc')
            ->select();
        $html='';
        if(!empty($reply)){
            foreach ($reply as $k=>$v){
                $like= db('like')
                    ->where(['reply_id'=>$v['id'],'uid'=>$this->user_id])
                    ->field('id')
                    ->find();
                if($like['id']){
                    $reply[$k]['is_like']='1';
                    $like_style = 'color:red';
                }else{
                    $reply[$k]['is_like']='';
                    $like_style = '';
                }
                $html .="<tr>";
                $html .="<td></td> ";
                $html .="<td>评论回复：".$v['from_nickname']."回复".$v['to_nickname']."</td>";
                $html .="<td>".$v['content']."</td>";
                $html .="<td>".date('Y/m/d H:i:s',$v['create_time'])."</td>";
                $html .="<td>".$v['reply_num']."</td>";
                $html .="<td>";
                $html .="<a href='/admin/comment/com_reply/reply_id/".$v['id'].".html' class='layui-btn layui-btn-mini'><i class='layui-icon'>&#xe642;</i>回复</a>";
                $html .="<i class='layui-icon layui-icon-praise' id='reply_praise-".$v['id']."'' style='".$like_style."' onclick='reply_like(".$v['id'].")'>&#xe6c6;<span id='reply_like_".$v['id']."'>".$v['like_num']."</span></i>";
                $html .="</td>";
                $html .="</tr>";

                $html .= $this->get_reply($v['comment_id'],$v['id']);

            }
        }
        return $html ? $html : $html ;
    }

    //问题回答
    public function reply($id){
        $res=db('questions')
            ->alias('q')
            ->JOIN('manager m','m.id=q.uid','left')
            ->JOIN('manager n','n.id=q.rid','left')
            ->where('q.qid',$id)
            ->field('q.*,m.account questioner,n.account answerer')
            ->find();
        if(request()->isPost()){
            $data=input('post.');
            $data['topic_id']=  $id;
            $data['from_uid']=  $this->user_id;
            $data['nickname']=  $this->user_name;
            $data['thumb_img']=  '空';
            $data['status']=  1;
            $data['create_time']=  time();
            //后端数据验证
            $validate=validate('Reply');
            if(!$validate->check($data)){
                $this->error($validate->getError());
            }

            $result=model('Comments')->allowField(true)->save($data);
            Lang::set('Content addition success','回答成功','zh-cn');
            Lang::set('Content addition failure','回答失败','zh-cn');
            if(!$result){
                $this->error(lang('Content addition failure'));
            }

            //更新评论次数
            $old_reply_num=db('questions')
                ->where('qid',$id)
                ->field('qid,reply_num')
                ->find();
            $q_data = [
                'is_reply'  =>1,
                'reply_num' => $old_reply_num['reply_num']+1
            ];
            $result = model('Questions')->allowField(true)->save($q_data,['qid' => $id]);
            if(!$result){
                $this->error('评论次数更新失败');
            }
            $this->success('回答主题成功',url('show',['id'=>$id]));
            return;
        }
        $this->assign('show_data',$res);
        return view('questions_reply');
    }

    //回复第一次评论
    public function com_reply($id='',$reply_id=''){

        if($reply_id){
            $from_table = 'comments_reply';
            $id=$reply_id;
            $comment_id = 'comment_id';
            $nickname = 'from_nickname';
        }else{
            $from_table = 'comments';
            $comment_id = 'topic_id';
            $nickname = 'nickname';
        }
        $res=db($from_table)
            ->alias('c')
            ->where('c.id',$id)
            ->field('c.*')
            ->find();
        $res['from_nickname'] = $res[$nickname];
        if(request()->isPost()){
            $data=input('post.');
            if($reply_id){
                $data['comment_id']=  $res['comment_id'];
                $data['reply_type']=  2;//'1为回复评论，2为回复别人的回复',
                $data['reply_id']=  $res['id'];//'回复目标id，reply_type为1时，是comment_id，reply_type为2时为回复表的id',
            }else{
                $data['comment_id']=  $res['topic_id'];
                $data['reply_type']=  1;//'1为回复评论，2为回复别人的回复',
                $data['reply_id']=  $id;//'回复目标id，reply_type为1时，是comment_id，reply_type为2时为回复表的id',
            }
            $data['comment_id']=  $res[$comment_id];
            $data['to_uid']=  $res['from_uid'];
            $data['from_uid']=  $this->user_id;
            $data['from_nickname']=  $this->user_name;
            $data['from_thumb_img']=  '空';
            $data['to_nickname']=  $res[$nickname];

            $data['is_author']= 0;//'0为普通回复，1为后台管理员回复',

            $data['create_time']=  time();
            //后端数据验证
            $validate=validate('Reply');
            if(!$validate->check($data)){
                $this->error($validate->getError());
            }
            Db::startTrans();
            $result=model('CommentsReply')->allowField(true)->save($data);

//            Lang::set('Content addition success','回答成功','zh-cn');
//            Lang::set('Content addition failure','回答失败','zh-cn');
            if(!$result){
                Db::rollback();
                $this->error(lang('Content addition failure','回复失败'));
            }

            if($reply_id){
                //插入回复表表 回复次数 +1
                $r_data['reply_num']=  $res['reply_num']+1;//'回复目标id，reply_type为1时，是comment_id，reply_type为2时为回复表的id',
                $result= model('Comments_reply')->allowField(true)->save($r_data,['id' => $reply_id]);
                if(!$result){
                    Db::rollback();
                    $this->error('被回复次数更新失败');
                }
                $reply_comment_id = $this->get_comment_id($reply_id);
                if(!$reply_comment_id){
                    Db::rollback();
                    $this->error('回复主题错误');
                }
            }else{
                $reply_comment_id = $id;
            }
            //插入问题表 回复次数 +1
            $old_reply_num=db('article')
                ->where('id',$res[$comment_id])
                ->field('id,reply_num')
                ->find();
            $q_data = [
                'is_reply'  =>1,
                'reply_num' => $old_reply_num['reply_num']+1
            ];
//            $result=model('Article')->allowField(true)->save($q_data,['id' => $res[$comment_id]]);
            $result=Db('Article')->where(['id' => $res[$comment_id]])->update($q_data);
            if(!$result){
                Db::rollback();
                $this->error('主题回复次数更新失败');
            }
//插入评论表 回复次数 +1
            $old_com_reply_num=db('comments')
                ->where('id',$reply_comment_id)
                ->field('id,reply_num')
                ->find();
            $c_data = [
                'reply_num' => $old_com_reply_num['reply_num']+1
            ];
            //            $result=model('Comments')->allowField(true)->save($c_data,['id' => $id]);
            $result=model('Comments')->allowField(true)->save($c_data,['id' => $reply_comment_id]);
            if(!$result){
                Db::rollback();
                $this->error('评论回复次数更新失败');
            }else{
                Db::commit();
                $this->success('回复成功',url('show',['id'=>$id]));
            }
        }
        $this->assign('show_data',$res);
        return view('comments_reply');
    }


    //喜欢点赞
    public function like(){
        if(request()->isPost()){
            $id=input('post.')['id'];
            if(input('post.')['reply']){
                $seach_id = 'reply_id';
                $seach_table = 'comments_reply';
                $seach_moble = 'Comments_reply';
            }else{
                $seach_id = 'com_id';
                $seach_table = 'comments';
                $seach_moble = 'Comments';
            }

            $like_id = db('like')
                ->where($seach_id,$id)
                ->field('id')
                ->find();
            if($like_id['id']){
                return $this->json(302,[],'您已经点赞了');
            }
            $like_num=db($seach_table)
                ->where('id',$id)
                ->field('id,like_num')
                ->find();
            $data = [
                'like_num' => $like_num['like_num']+1
            ];
            $like_data = [
                'uid' => $this->user_id,
                $seach_id => $id
            ];
            Db::startTrans();
            $result = model($seach_moble)->allowField(true)->save($data,['id' => $id]);
            $like_result = model('Like')->allowField(true)->save($like_data);
            if(!$like_result){
                Db::rollback();
                return $this->json(302,[],'记录点赞数据失败');
            }
            if(!$result){
                Db::rollback();
                return $this->json(303,[],'点赞失败，数据异常');
            }
            if($result && $like_result){
                Db::commit();
                return $this->json(201,$data,'点赞成功');
            }else{
                Db::rollback();
                return $this->json(301,[],'点赞失败');
            }
        }
    }

    public function get_comment_id($reply_id=0){
        $reply = Db('comments_reply')->where('id',$reply_id)->field('id,reply_type,reply_id,comment_id')->find();
        if($reply['reply_type']==2){
           return $this->get_comment_id($reply['reply_id']);
       }elseif($reply['reply_type']==1){
           return $reply['reply_id'];
       }else{
           return false;
       }
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

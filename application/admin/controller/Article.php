<?php
/**
 * Created by PhpStorm.
 * User: yifeng
 * Date: 2017/11/2
 * Time: 22:22
 */
namespace app\admin\controller;
use app\admin\model\Category as CateModel;
use app\admin\model\Tags;
use think\Lang;
use think\Db;
class Article extends Common
{

    //内容列表
    public function index($cid = null)
    {
        if ($cid) {
            //查询所有子栏目id
            $cids = $this->getAllChildcateIds($cid);
            $map['a.cid'] = array('in', $cids);
        } else {
            $map = [];
        }
        //获取内容列表信息
        $res = db('article')->alias('a')
            ->join('category b', 'b.id=a.cid')
            ->join('pics c', 'c.aid=a.id', 'LEFT')
            ->order('a.istop desc,a.istuijian,a.toptime Desc,a.addtime Desc')
            ->field('a.*,b.name,count(c.pic) as pic')
            ->where($map)
            ->group('a.id')
            ->paginate(6, false, ['query' => ['cid' => $cid]]);

        $this->assign('list', $res);
        //栏目获取
        $cateall = CateModel::order('sort Desc,id Asc')->select();
        $res = CateModel::getcateall($cateall, 0, -1);
        $this->assign('cate', $res);
        $this->assign('cid', $cid);
        return view('article_list');
    }

    public function baidu()
    {
        $res = db('article')
            ->field('id')
            ->select();
        foreach ($res as $k => $v) {
            $url = $this->domain() . "/article/" . $res[$k]['id'] . ".html";
            if ($this->checkBaidu($url)) {
                Db::execute("update lee_article set is_baidu=1 where id=" . $res[$k]['id']);
            } else {
                Db::execute("update lee_article set is_baidu=0 where id=" . $res[$k]['id']);
            }
        }
        $this->success('成功更新百度收录状态');
    }

    //内容添加
    public function add($cid = '')
    {
        if (request()->isPost()) {
            $data = input('post.');
            //判断当前所选栏目是否有下级栏目
            $cate_id = db('category')->where('pid', $data['cid'])->field('id')->find();
            if ($cate_id) {
                $this->error('请将文章添加到当前子栏目');
            }
            //dump($data);die;
            $data['addtime'] = strtotime($data['addtime']);
            if (isset($data['istop'])) {
                $data['toptime'] = time();
            } else {
                $data['istop'] = 0;
                $data['toptime'] = '';
            }
            if (!isset($data['istuijian'])) {
                $data['istuijian'] = 0;
            }
            if (!isset($data['is_show'])) {
                $data['is_show'] = 0;
            }
            if (!isset($data['keyword'])) {
                $data['keyword'] = '';
            }
            if(empty($data['desc'])){
                $data['desc'] = mb_substr(cutstr_html($data['content']),0,200);
            }
            if(empty($data['remark'])){
                $data['remark'] = mb_substr(cutstr_html($data['content']),0,200);
            }
            $data['cid'];
            //后端数据验证
            $validate = validate('Article');
            if (!$validate->check($data)) {
                $this->error($validate->getError(), 'article/add');
            }

            //将获取的关键词数组转为以‘,’隔开的字符串
            if (is_array($data['keyword'])) {
                $data['keyword'] = implode(',', $data['keyword']);
            }
            //清除__token__字段
            //unset($data['__token__']);
            //unset($data['pic']);
            //unset($data['imgfile']);
            $result = model('Article')->allowField(true)->save($data);
            Lang::set('Content addition success', '内容添加成功', 'zh-cn');
            Lang::set('Content addition failure', '内容添加失败', 'zh-cn');
            if (!$result) {
                $this->error(lang('Content addition failure'));
            }
            $this->success(lang('Content addition success'));
            return;
        }

        if ($cid) {
            //获取文章信息
            $cate_id = db('category')->where('id', $cid)->field('id,name')->find();
        } else {
            $cate_id['id'] = '';
            $cate_id['name'] = '';
        }
        $this->assign('cate_id', $cate_id);
        //获取栏目列表
        //$CateModel = model('Category');
        $cateall = CateModel::order('sort Desc,id Asc')->select();
        $res = CateModel::getcateall($cateall, 0, -1);
        $this->assign('cate', $res);
        //标签获取
        $tags = Tags::order('sort Desc,id Asc')->select();
        $this->assign('tags', $tags);
        return view('article_add');
    }

    //内容编辑
    public function edit($id)
    {
        if (request()->isPost()) {
            $data = input('post.');
            $data['addtime'] = strtotime($data['addtime']);
            if (isset($data['istop'])) {
                $data['toptime'] = time();
            } else {
                $data['istop'] = 0;
                $data['toptime'] = '';
            }
            if (!isset($data['istuijian'])) {
                $data['istuijian'] = 0;
            }
            if (!isset($data['is_show'])) {
                $data['is_show'] = 0;
            }
            if (!isset($data['keyword'])) {
                $data['keyword'] = '';
            }
            if(empty($data['desc'])){
                $data['desc'] = mb_substr(cutstr_html($data['content']),0,200);
            }
            if(empty($data['remark'])){
                $data['remark'] = mb_substr(cutstr_html($data['content']),0,200);
            }

            //后端数据验证
            $validate = validate('Article');
            if (!$validate->check($data)) {
                $this->error($validate->getError());
            }
            //将获取的关键词数组转为以‘,’隔开的字符串
            if (is_array($data['keyword'])) {
                $data['keyword'] = implode(',', $data['keyword']);
            }
            //更新内容信息
            model('Article')->allowField(true)->save($data, ['id' => $id]);
            $this->success("更新成功", 'index');
        }
        //获取文章信息
        //$res=db('article')->where('id',$id)->find();
        //图片信息获取
        //第一种：分表查询
        //$pics=db('pics')->where('aid',$id)->field('pic')->select();
        //$res['pic']=$pics;
        //dump($res);
        //第二种：关联查询
        $res = db('article')->alias('a')
            ->join('pics b', 'b.aid=a.id')
            ->join('category c', 'c.id=a.cid')
            ->where('a.id', $id)
            ->field('a.*,GROUP_CONCAT(b.pic) as pic,c.type')
            ->find();
        $res['pic'] = explode(",", $res['pic']);
//        $res['keyword']=explode(",",$res['keyword']);
        $this->assign('article', $res);
        //获取栏目列表
        //$CateModel = model('Category');
        $cateall = CateModel::order('sort Desc,id Asc')->select();
        $cates = CateModel::getcateall($cateall, 0, -1);
        $this->assign('cate', $cates);
        //标签获取
        $tags = Tags::order('sort Desc,id Asc')->select();
        $this->assign('tags', $tags);
        return view('article_edit');
    }

    //置顶
    public function istop()
    {
        if (request()->isAjax()) {
            $data = input('post.');
            $value = [];
            $value['id'] = $data['id'];
            $value['toptime'] = time();
            if ($data['istop'] === "true") {
                $value['istop'] = 1;
                $reselt = Db::execute("update lee_article set istop=1 where id=" . $data['id']);
                if ($reselt) {
                    return json(['code' => 1, 'msg' => "置顶成功"]);
                }
                return json(['code' => 0, 'msg' => "操作失败"]);
            } else {
                $value['istop'] = 0;
                $reselt = Db::execute("update lee_article set istop=0 where id=" . $data['id']);
                if ($reselt) {
                    return json(['code' => 1, 'msg' => "取消置顶成功"]);
                }
                return json(['code' => 0, 'msg' => "操作失败"]);
            }
        }
    }

    //推荐
    public function istuijian()
    {
        if (request()->isAjax()) {
            $data = input('post.');
            $value = [];
            $value['id'] = $data['id'];
            if ($data['istuijian'] === "true") {
                $reselt = Db::execute("update lee_article set istuijian=1 where id=" . $data['id']);
                if ($reselt) {
                    return json(['code' => 1, 'msg' => "推荐成功"]);
                }
                return json(['code' => 0, 'msg' => "操作失败"]);
            } else {
                $reselt = Db::execute("update lee_article set istuijian=0 where id=" . $data['id']);
                if ($reselt) {
                    return json(['code' => 1, 'msg' => "取消推荐成功"]);
                }
                return json(['code' => 0, 'msg' => "操作失败"]);
            }

        }
    }

    //推荐
    public function isshow()
    {
        if (request()->isAjax()) {
            $data = input('post.');
            $value = [];
            $value['id'] = $data['id'];
            if ($data['is_show'] === "true") {
                $reselt = Db::execute("update lee_article set is_show=1 where id=" . $data['id']);
                if ($reselt) {
                    return json(['code' => 1, 'msg' => "操作成功"]);
                }
                return json(['code' => 0, 'msg' => "操作失败"]);
            } else {
                $reselt = Db::execute("update lee_article set is_show=0 where id=" . $data['id']);
                if ($reselt) {
                    return json(['code' => 1, 'msg' => "文章已隐藏"]);
                }
                return json(['code' => 0, 'msg' => "操作失败"]);
            }
        }
    }
    //图片列表
    public function pics($aid){
        $res=db('pics')->where('aid',$aid)->order('sort Desc,id Desc')->select();
        $this->assign('pics',$res);
        return view('article_pic');
    }
    //删除单张图片

    /**
     * @param string $id 图片Id
     */
    public function delpic($id){
        $res=db('pics')->where('id',$id)->find();
        if($res){
            $pic=$res['pic'];
            $result=db('pics')->delete($id);
            if($result){
                $file=ROOT_PATH ."public/".$pic;
                if(file_exists($file)){
                    if(unlink($file)){
                        $this->success('删除成功');
                    }else{
                        $this->error('删除失败');
                    }
                }
            }
        }

    }
    //图片排序
    public function picsort(){
        if(request()->isAjax()){
            $data=input('post.');
            $result=db('pics')->update($data);
            if($result){
                return json(['code'=>1,'msg'=>"排序成功"]);
            }
            return json(['code'=>0,'msg'=>"排序失败"]);
        }
    }
    //删除内容
    public function del($aid){
        $article = model('Article');
        if($article::destroy($aid)){//删除成功
            //删除图片内容
            $this->success("删除成功");
        }
        //删除失败
        $this->error("删除失败");
    }
    //批量删除
    public function delall(){
        if(request()->isPost()){
            $data=input('post.');
            //清除干扰项
//        if(isset($data['istop'])){
//            unset($data['istop']);
//        }
//            if(isset($data['cid'])){
//                unset($data['cid']);
//            }
            if(empty($data['id'])){
                $this->error("请选择要删除的内容");
            }
            $article = model('Article');
            $article = model('Article');
            $ids=implode(',', $data['id']);
            $result=$article::destroy($ids);
            if($result){//删除成功
                //删除图片内容
                $this->success("删除成功");
            }
            //删除失败
            $this->error("删除失败");
        }
    }
    function getAllChildcateIds($categoryID)
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
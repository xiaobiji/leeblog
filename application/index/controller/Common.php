<?php
/**
 * Created by PhpStorm.
 * User: yifeng
 * Date: 2017/12/16
 * Time: 23:41
 */

namespace app\index\controller;


use think\Controller;

class Common extends Controller
{
    protected function _initialize()
    {
        parent::_initialize(); // TODO: Change the autogenerated stub
		
        //获取全部导航栏目
        $cate=$this->getAllCate();
        //将全部导航栏目撰文html格式输出
//        $cate_html = $this->get_cate_html($cate);
        $notice=$this->getNotice();
        //获取右侧栏目热门文章
        $hot_articles=$this->get_hot_articles();
        //获取前8篇推荐文章
        $tuijianData = $this->get_tuijian_articles(8);
        //获取右侧栏目点击量文章
        $click_articles=$this->get_click_articles(5);
      
        //获取右侧栏目喜欢量，点赞量文章
        $like_articles=$this->get_like_articles(10);
        //获取右侧栏目标签
        $tagsData=$this->get_tags();
        //获取右侧友情链接
        $linksData=$this->get_typelinks();
        //获取当前所访问一级栏目标识
        $currcontroller=request()->controller();
        $currtype=$this->getcurrtype($currcontroller);
        //获取网站配置信息
        $config=db('config')->field('config')->find();
        //解码配置信息
        $config=json_decode($config['config'],true);
        //判读网站状态
        if(!isset($config['state'])){
            $config['state']=0;
        }

        $banner=$this->getbanner();



        $this->user_id = 1;
        $this->checkweb($config['state'],$config['closeinfo']);
        $this->assign([
//            'cate'=>$cate_html,
            'allcate'=>$cate,
            'noticeData'=>$notice,
            'hot_articles'=>$hot_articles,
            'click_articles'=>$click_articles,
            'tuijianData'=>$tuijianData,
            'like_articles'=>$like_articles,
            'tagsData'=>$tagsData,
            'linksData'=>$linksData,
            'currtype'=>$currtype,
            'config'=>$config,
            'currtyurl'=>$_SERVER['SERVER_NAME'],
            'banner'=>$banner,
            'ismobile'=>$this->isMobile()
        ]);
    }

    /**
     * 获取导航栏目 无限极查询  开始
     * @return false|\PDOStatement|string|\think\Collection
     */
    public function getAllCate($style=''){
        $res=db('category')
            ->where('isshow',1)
            ->order('sort desc,id Asc')
            ->field('id,name,type,stype,url,pid,pic,remark')
            ->select();
        $res = $this->getallcates($res);
        return $res;

    }
    public function getallcates($list, $pid = 0){
        $tree = [];
        if (!empty($list)) {
            $newList = [];

            foreach ($list as $k => $v) {
                $newList[$v['id']] = $v;
            }
            foreach ($newList as $value ) {
                if ($pid == $value['pid']) {
                    $tree[] = &$newList[$value['id']];
                } elseif (isset($newList[$value['pid']]))
                {
                    $newList[$value['pid']]['child'][] = &$newList[$value['id']];
                }
            }
//            // 如果顶级分类下没有一个下级，删除此分类，此步骤可以省略
//            foreach ($tree as $k=>$v)
//            {
//                if(!isset($v['items']) && ($pid<1))
//                    unset($tree[$k]);
//            }
        }
        return $tree;
    }
    //结束


    /**
     * lee  将获取到的全部栏目数组拼接为HTML格式 输出到前台页面（用于未知几级栏目的查询输出） 开始
     * @param $res
     * @return string
     */
    private function get_cate_html($res){
        if(!empty($res)){
            $html='';
            foreach ($res as $k=>$v){
                $html .='<li class="dropdown">';
                $html .='<a href="/index/category/index/id/'.$v["id"].'.html" class="dropdown-toggle" data-toggle="dropdown">'.$v["name"].'</a>';
                $html .='<a href="#" id="app_menudown" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="glyphicon glyphicon-menu-down btn-xs"></span></a>';
                if(isset($v['child'])&& !empty($v['child'])){
                    $html .='<ul class="dropdown-menu" role="menu">';
                    foreach ($v['child'] as $a=>$b){
                        $html .="<li><a class='' href='/index/category/index/id/".$b['id'].".html'>".$b['name']."</a>";
                        if(isset($b['child'])&& !empty($b['child'])){
                            $html .= $this->cate_htmls($b['child']);
                        }
                        $html .="</li>";
                    }
                    $html .='</ul>';
                }
                $html .='</li>';
            }
            return $html;
        }else{
            return false;
        }
    }
    private function cate_htmls($arr){
        static $html = '';
        $html .='<ul>';
        foreach ($arr as $a=>$b){
            $html .="<li><a class='' href='/index/category/index/id/".$b['id'].".html'>".$b['name']."</a>";
            if(isset($b['child'])&& !empty($b['child'])){

                $this->cate_htmls($b['child'],$html);
            }
            $html .="</li>";

        }
        $html .='</ul>';

        return $html;
    }
    // lee  将获取到的全部栏目数组拼接为HTML格式 输出到前台页面（用于未知几级栏目的查询输出）结束


    /**
     * 获取网站公告
     * @return false|\PDOStatement|string|\think\Collection
     */
    private function getNotice(){
        $time=time();
        $res=db('notice')
            ->where('is_show',1)
            ->where('show_time','>',$time)
            ->order('sort desc,id Asc')
            ->field('id,title,show_time')
            ->select();
        return $res;
    }


    /**
     * 获取右侧栏目推荐文章
     * @return false|\PDOStatement|string|\think\Collection
     */
    protected function get_tuijian_articles($limit='5'){
        $where['a.istuijian']=array('=',1);
        $where['a.is_show']=array('=',1);
        $where['t.isshow']=array('=',1);
        $res=db('article')
            ->alias('a')
            ->join('pics c','c.aid=a.id','LEFT')
            ->join('category t','a.cid=t.id','LEFT')
            ->where($where)
            ->field('a.id,a.title,a.cid,a.remark,a.thumb,a.addtime,a.content,GROUP_CONCAT(c.pic) as pic,t.name as cname')
            ->order('a.sort desc,a.addtime desc')
            ->group('a.id')
            ->limit($limit)
            ->select();
        $res_num = count($res);

        if($limit>$res_num){
            $ids='';
            foreach ($res as $k=>$v){
                $ids .= ','.$v['id'];
            }
            if($ids){
                $map['a.id']=array('not in',"'".$ids."'");
                $map['t.isshow']=array('=',1);
            }else{
                $map['t.isshow']=array('=',1);
            }
            $data=db('article')
                ->alias('a')
                ->join('pics c','c.aid=a.id','LEFT')
                ->join('category t','a.cid=t.id','LEFT')
                ->where($map)
                ->field('a.id,a.title,a.cid,a.remark,a.thumb,a.addtime,a.content,GROUP_CONCAT(c.pic) as pic')
                ->order('a.sort desc,a.addtime desc')
                ->group('a.id')
                ->limit($limit-$res_num)
                ->select();
           $res = array_merge($res,$data);

        }
        foreach($res as $k=>$v){
            $res[$k]['pic']=explode(',',$v['pic']);
            if(empty($v['pic'][0])){
                preg_match ('<img.*src=["](.*?)["].*?>',$v['content'],$match);
                if($match){
                    $res[$k]['pic'][0]='../'.$match[1];
                }
            }
        }
        return $res;
    }

    /**
     * 获取右侧栏目热门文章
     * @return false|\PDOStatement|string|\think\Collection
     */
    private function get_hot_articles($limit='5'){
        $map['b.isshow']= array('=',1);
        $map['a.is_show']= array('=',1);
        $res=db('article')
            ->alias('a')
            ->join('category b','a.cid=b.id','LEFT')
            ->where($map)
            ->order('a.sort desc,a.id desc')
            ->field('a.id,a.title,a.click_num,a.cmt_count')
            ->limit($limit)
            ->select();
        return $res;
    }
    /**
     * 获取右侧栏目点击量文章
     * @return false|\PDOStatement|string|\think\Collection
     */
    private function get_click_articles($limit='10'){
        $map['b.isshow']= array('=',1);
        $map['a.is_show']= array('=',1);
        $res=db('article')
            ->alias('a')
            ->join('category b','a.cid=b.id','LEFT')
            ->where($map)
            ->order('click_num desc,id desc')
            ->join('pics c','c.aid=a.id','LEFT')
            ->field('a.id,a.title,a.click_num,a.cmt_count,a.content,GROUP_CONCAT(c.pic) as pic')
            ->group('a.id')
            ->limit($limit)
            ->select();
        foreach($res as $k=>$v){
            $res[$k]['pic']=explode(',',$v['pic']);
            if(empty($v['pic'][0])){
                preg_match ('<img.*src=["](.*?)["].*?>',$v['content'],$match);
                if($match){
                    $res[$k]['pic'][0]='../'.$match[1];
                }
            }
        }
        return $res;
    }
    /**
     * 获取右侧栏目点击量文章
     * @return false|\PDOStatement|string|\think\Collection
     */
    private function get_like_articles($limit='10'){
        $map['b.isshow']= array('=',1);
        $map['a.is_show']= array('=',1);
        $res=db('article')
            ->alias('a')
            ->join('category b','a.cid=b.id','LEFT')
            ->where($map)
            ->order('a.like_num desc,a.id desc')
            ->field('a.id,a.title,a.like_num,a.cmt_count')
            ->limit($limit)
            ->select();
        return $res;
    }
    /**
     * 获取首页推荐标签
     * @return false|\PDOStatement|string|\think\Collection
     */
    protected function get_tags($limit=''){
        $res=db('tags')
            ->order('sort desc,id ASC')
            ->field('tname,id')
            ->limit($limit)
            ->select();
        return $res;
    }

    /**
     * 获取右侧友情链接管理
     * @return false|\PDOStatement|string|\think\Collection
     */
    private function get_typelinks(){
        $time=time();
        $res=db('typelink')
            ->where('is_show',1)
            ->where('show_time','>',$time)
            ->order('sort desc,id ASC')
            ->field('name,url')
            ->select();
        return $res;
    }

    private function getcurrtype($controller){
        switch ($controller){
            case 'Index':
                return 0;
            case 'Comprofile':
                return 1;
            case 'Service':
                return 2;
            case 'Technical':
                return 3;
            case 'Operation':
                return 4;
            case 'News':
                return 5;
            case 'Contactus':
                return 6;
            case 'Cases':
                return 7;
            case 'Education':
                return 8;
            default:
                return 0;
        }
    }


    private function checkweb($state,$info="网站已关闭"){
        if($state!=1){
            header('Content-Type:text/html;charset=utf-8');
            echo $info;
            exit;
        }
    }


    //左侧子栏目列表
    protected function getchild($mark='about'){
        $where['mark']=array('=',$mark);
        $where['isshow']=array('=',1);
        $res_pid= db('category')
            ->where($where)
            ->field('id')
            ->find();
        $map['pid']=array('=',$res_pid['id']);
        $map['isshow']=array('=',1);
        $res=db('category')
            ->where($map)
            ->field('id,name,type')
            ->select();
        return $res;
    }


    //面包屑导航
    public function position($cid){//传递当前栏目id
        static $pos=array();//创建接受面包屑导航的数组
        if(empty($pos)){//哦，这个就比较重要了，如果需要把当前栏目也放到面包屑导航中的话就要加上
            $cates=db('category')->field('id,name,pid')->find($cid);
            $pos[]=$cates;
        }
        $data=db('category')->field('id,name,pid')->where('isshow',1)->select();//所有栏目信息
        $cates=db('category')->field('id,name,pid')->where('isshow',1)->find($cid);//当前栏目信息
        foreach ($data as $k => $v) {
            if($cates['pid']==$v['id']){
                $pos[]=$v;
                $this->position($v['id']);}
        }
        return array_reverse($pos);
    }


    //取出当前栏目所属主栏目id (pid=0) 用于栏目页左侧列表显示
    public function getParentId($id)
    {
        $pardata = db('category')
            ->where('id', $id)
            ->field('id,name,pid')
            ->find();
        if ($pardata['pid'] !== 0) {
            return $this->getParentId($pardata['pid']);
        } else {
            return $pardata['id'];
        }
    }
    /**
     * lee获取当前栏目下子级栏目信息
     */
    protected function getChildCate($id){

        //取出当前栏目所属主栏目id  用于栏目页左侧列表显示
        //如果去掉此步骤则调取当前栏目下的所有子栏目
        $id = $this->getParentId($id);

        $tree = [];
        $list=db('category')
            ->where('isshow',1)
            ->field('id,name,pid,pic')
            ->select();
        foreach ($list as $k => $v) {
            $newList[$v['id']] = $v;
        }
        if (!empty($list)) {
            $newList = [];
            foreach ($list as $k => $v) {
                $newList[$v['id']] = $v;
            }
            foreach ($newList as $value ) {
                if ($id == $value['pid']) {
                    $tree[] = &$newList[$value['id']];
                } elseif (isset($newList[$value['pid']]))
                {
                    $newList[$value['pid']]['child'][] = &$newList[$value['id']];
                }
            }
        }
        return $tree;
    }


    /**
     * lee获取栏目页文章,按照发布时间排序
     */
    protected function getArticles($num='10',$id,$notincluderemark='',$where='1,1'){

        if($notincluderemark){
            $mapb['b.mark'] =  array('neq',$notincluderemark);
        }else{
            $mapb='';
        }
        $map['a.cid']= array('in',$id);
        $map['b.isshow']= array('=',1);
        $map['a.is_show']= array('=',1);
        $res=db('article')
            ->join('category b','b.id=a.cid')
            ->alias('a')
            ->where($map)
            ->where($mapb)
            ->select();
        $count = count($res);
        $data = db('article')
            ->alias('a')
            ->join('category b','b.id=a.cid')
            ->join('pics c','c.aid=a.id','LEFT')
            ->order('a.istop desc,a.toptime Desc,a.addtime Desc')
            ->where($map)
            ->where($mapb)
            ->where("'".$where."'")
            ->field('a.id,a.title,a.istop,a.istuijian,a.cid,a.desc,a.thumb,a.author,a.addtime,a.content,a.remark,b.mark,GROUP_CONCAT(c.pic) as pic,b.name as cname')
            ->group('a.id')
            ->paginate($num,$count)
            ->each(function($item, $key){
                $item['pic']=explode(',',$item['pic']);
                if(empty($item['pic'][0])){
                    preg_match ('<img.*src=["](.*?)["].*?>',$item['content'],$match);
                    if($match){
                        $item['pic'][0]='../'.$match[1];
                    }
                }
                return $item;
            });
        return $data;
    }


    ////获取当前所选栏目下所有子栏目id；
    protected function getAllChildcateIds($categoryID)
    {
        //初始化ID数组
        $array[] = $categoryID;
        do
        {
            $ids = '';
            $where['pid'] = array('in',$categoryID);
            $where['isshow'] = array('=',1);
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

    protected function getLfetMenuHtml($res,$id=0,$style='block'){
        static $html = '';
        foreach ($res as $k => $v){
            $html .= "<li><a href='/index/category/index/id/".$v['id'].".html'>".$v['name']."</a>";
            if(isset($v['child'])&& !empty($v['child'])){
                if($style=='block'){
                    $html .= "<span>-</span>";
                    $html .= "<ul style='display: block'>";
                    $this->getLfetMenuHtml($v['child']);
                }else{
                    $html .= "<span>+</span>";
                    $html .= "<ul>";
                    $this->getLfetMenuHtml($v['child']);
                }
//                $html += "<li><a href='/index/category/index/id/'".$v['id'].".html'>".$b['name']."</a>";
                $html .= "</ul>";
            }
            $html .= " </li>";
        }
        return($html);
    }

    //获取轮播图
    public function getbanner(){
        $res=db('banner')->where('isshow',1)->order('sort ASC')->field('title,pic,url')->select();
        return $res;
    }
    //获取所有含有chanpin标识栏目中前6个商品
    protected function getchanpin($mark,$num=6){
        $map['mark']= array('=',$mark);
        $map['isshow']= array('=',1);
        $res_pid=db('category')
            ->where($map)
            ->field('id,name,pid')
            ->order('sort Desc,id asc')
            ->select();
        $pids='';
        foreach($res_pid as $k=>$v){
            $pids.=$v['id'].',';
        }
        $pids =substr($pids,0,strlen($pids)-1);
        $where['a.cid']=array('in',$pids);
        $where['a.is_show']= array('=',1);
        $res = db('article')
            ->alias('a')
            ->join('pics b','b.aid=a.id','left')
            ->order('a.istop desc,a.toptime Desc,a.addtime Desc')
            ->field('a.id,a.title,a.cid,a.desc,a.thumb,a.author,a.content,a.addtime,GROUP_CONCAT(b.pic) as pic')
            ->where($where)
            ->limit($num)
            ->group('a.id')
            ->select();

        //获取工程案例信息
        //只取一张图片
        foreach ($res as $k=>$v){
            $res[$k]['pic']=explode(',',$v['pic']);
            if(empty($res[$k]['pic'][0])){
                preg_match ('<img.*src=["](.*?)["].*?>',$v['content'],$match);
                if($match){
                    $res[$k]['pic'][0]='../'.$match[1];
                }
            }
        }
        return $res;
    }



    //获取当前位置
    //首页>关于我们>公司简介
    /**
     * @param $id 最小级别的栏目Id,根据这个id获取到它的所有上级分类
     */
//    protected function getlocation($id){
//        $cate=db('category')->where('id',$id)->field('id,name,pid')->find();
//        $arr=[];
//        if($cate){
//            $arr[]=$cate['name'];
//            if($cate['pid']!=0){
//                $pre_cate=$this->getlocation($cate['pid']);
//                $arr=array_merge($pre_cate,$arr);
//            }
//            return $arr;
//        }
//    }


    public function json($code=0,$arr=[],$msg=''){
        $data=[
            'code'=>$code,
            'data'=>$arr,
            'msg'=>$msg
        ];
        return $data;
    }

    public function isMobile()
    {
        // 如果有HTTP_X_WAP_PROFILE则一定是移动设备
        if (isset ($_SERVER['HTTP_X_WAP_PROFILE']))
        {
            return true;
        }
        // 如果via信息含有wap则一定是移动设备,部分服务商会屏蔽该信息
        if (isset ($_SERVER['HTTP_VIA']))
        {
            // 找不到为flase,否则为true
            return stristr($_SERVER['HTTP_VIA'], "wap") ? true : false;
        }
        // 脑残法，判断手机发送的客户端标志,兼容性有待提高
        if (isset ($_SERVER['HTTP_USER_AGENT']))
        {
            $clientkeywords = array ('nokia',
                'sony',
                'ericsson',
                'mot',
                'samsung',
                'htc',
                'sgh',
                'lg',
                'sharp',
                'sie-',
                'philips',
                'panasonic',
                'alcatel',
                'lenovo',
                'iphone',
                'ipod',
                'blackberry',
                'meizu',
                'android',
                'netfront',
                'symbian',
                'ucweb',
                'windowsce',
                'palm',
                'operamini',
                'operamobi',
                'openwave',
                'nexusone',
                'cldc',
                'midp',
                'wap',
                'mobile'
            );
            // 从HTTP_USER_AGENT中查找手机浏览器的关键字
            if (preg_match("/(" . implode('|', $clientkeywords) . ")/i", strtolower($_SERVER['HTTP_USER_AGENT'])))
            {
                return true;
            }
        }
        // 协议法，因为有可能不准确，放到最后判断
        if (isset ($_SERVER['HTTP_ACCEPT']))
        {
            // 如果只支持wml并且不支持html那一定是移动设备
            // 如果支持wml和html但是wml在html之前则是移动设备
            if ((strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') !== false) && (strpos($_SERVER['HTTP_ACCEPT'], 'text/html') === false || (strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') < strpos($_SERVER['HTTP_ACCEPT'], 'text/html'))))
            {
                return true;
            }
        }
        return false;
    }
    public function getip()
    {
        //ip是否来自共享互联网
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
            $ip_address = $_SERVER['HTTP_CLIENT_IP'];
        }
//ip是否来自代理
        elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $ip_address = $_SERVER['HTTP_X_FORWARDED_FOR'];
        }
//ip是否来自远程地址
        else {
            $ip_address = $_SERVER['REMOTE_ADDR'];
        }
        return $ip_address;
    }

}
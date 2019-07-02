<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:76:"/Volumes/小Lee/网站文件/leeblog/application/admin/view/index/index.html";i:1562077853;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo \think\Lang::get('logintitletype'); ?><?php echo \think\Lang::get('logintitle'); ?></title>
    <link rel="stylesheet" href="/static/admin/vendor/layui/css/layui.css">
    <link rel="stylesheet" href="/static/admin/custom/css/style.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo"><span class="layui-hide-xs"><?php echo \think\Lang::get('logintitletype'); ?></span><?php echo \think\Lang::get('logintitle'); ?></div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item layui-hide-xs">
                <a href="javascript:;">
                    <i class="layui-icon" style="font-size: 1.2rem;">&#xe612;</i>
                <?php echo $admin; ?>
                </a>
            </li>
            <li class="layui-nav-item">
                <a href="/" target="_blank">
                    网站首页
                </a>
            </li>

            <li class="layui-nav-item">
                <a href="javascript:;">
                    <i class="layui-icon" style="font-size: 1.2rem;">&#xe620;</i>
                    <?php echo \think\Lang::get('topsetting'); ?>
                </a>
                <dl class="layui-nav-child" id="rightmenu">
                    <dd><a href="<?php echo url('config/index'); ?>"  target="_content"><?php echo \think\Lang::get('websetting'); ?></a></dd>
                    <dd><a href="<?php echo url('manager/setpass'); ?>" target="_content"><?php echo \think\Lang::get('toppassword'); ?></a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="<?php echo url('login/logout'); ?>"><?php echo \think\Lang::get('topexit'); ?></a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;"><i class="layui-icon">&#xe705;</i> <?php echo \think\Lang::get('content'); ?></a>
                    <dl class="layui-nav-child">
                        <dd><a href="<?php echo url('article/index'); ?>" target="_content"><i class="layui-icon">&#xe60a;</i> <?php echo \think\Lang::get('contentlst'); ?></a></dd>
                        <dd><a href="<?php echo url('article/add'); ?>" target="_content"><i class="layui-icon">&#xe61f;</i> <?php echo \think\Lang::get('contentadd'); ?></a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a class="" href="javascript:;"><i class="layui-icon">&#xe857;</i> <?php echo \think\Lang::get('cate'); ?></a>
                    <dl class="layui-nav-child">
                        <dd><a href="<?php echo url('category/index'); ?>" target="_content"><i class="layui-icon">&#xe60a;</i> <?php echo \think\Lang::get('catelst'); ?></a></dd>
                        <dd><a href="<?php echo url('category/add'); ?>" target="_content"><i class="layui-icon">&#xe61f;</i> <?php echo \think\Lang::get('cateadd'); ?></a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a class="" href="javascript:;"><i class="layui-icon">&#xe634;</i> <?php echo \think\Lang::get('banner'); ?></a>
                    <dl class="layui-nav-child">
                        <dd><a href="<?php echo url('banner/index'); ?>" target="_content"><i class="layui-icon">&#xe60a;</i> <?php echo \think\Lang::get('bannerlst'); ?></a></dd>
                        <dd><a href="<?php echo url('banner/add'); ?>" target="_content"><i class="layui-icon">&#xe61f;</i> <?php echo \think\Lang::get('banneradd'); ?></a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a class="" href="javascript:;"><i class="layui-icon">&#xe634;</i> <?php echo \think\Lang::get('tags'); ?></a>
                    <dl class="layui-nav-child">
                        <dd><a href="<?php echo url('tags/index'); ?>" target="_content"><i class="layui-icon">&#xe60a;</i> <?php echo \think\Lang::get('tagslst'); ?></a></dd>
                        <dd><a href="<?php echo url('tags/add'); ?>" target="_content"><i class="layui-icon">&#xe61f;</i> <?php echo \think\Lang::get('tagsadd'); ?></a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a class="" href="javascript:;"><i class="layui-icon">&#xe634;</i> <?php echo \think\Lang::get('notice'); ?></a>
                    <dl class="layui-nav-child">
                        <dd><a href="<?php echo url('notice/index'); ?>" target="_content"><i class="layui-icon">&#xe60a;</i> <?php echo \think\Lang::get('noticelst'); ?></a></dd>
                        <dd><a href="<?php echo url('notice/add'); ?>" target="_content"><i class="layui-icon">&#xe61f;</i> <?php echo \think\Lang::get('noticeadd'); ?></a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a class="" href="javascript:;"><i class="layui-icon">&#xe634;</i> <?php echo \think\Lang::get('typelink'); ?></a>
                    <dl class="layui-nav-child">
                        <dd><a href="<?php echo url('typelink/index'); ?>" target="_content"><i class="layui-icon">&#xe60a;</i> <?php echo \think\Lang::get('typelinklst'); ?></a></dd>
                        <dd><a href="<?php echo url('typelink/add'); ?>" target="_content"><i class="layui-icon">&#xe61f;</i> <?php echo \think\Lang::get('typelinkadd'); ?></a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a class="" href="javascript:;"><i class="layui-icon">&#xe634;</i> <?php echo \think\Lang::get('meslink'); ?></a>
                    <dl class="layui-nav-child">
                        <dd><a href="<?php echo url('message/index'); ?>" target="_content"><i class="layui-icon">&#xe60a;</i> <?php echo \think\Lang::get('meslst'); ?></a></dd>
                    </dl>
                </li>
                <!--<li class="layui-nav-item">-->
                    <!--<a class="" href="javascript:;"><i class="layui-icon">&#xe705;</i> <?php echo \think\Lang::get('introduction'); ?></a>-->
                    <!--<dl class="layui-nav-child">-->
                        <!--<dd><a href="<?php echo url('introduction/index'); ?>" target="_content"><i class="layui-icon">&#xe60a;</i> <?php echo \think\Lang::get('introduction_list'); ?></a></dd>-->
                        <!--<dd><a href="<?php echo url('introduction/add'); ?>" target="_content"><i class="layui-icon">&#xe61f;</i> <?php echo \think\Lang::get('introduction_add'); ?></a></dd>-->
                    <!--</dl>-->
                <!--</li>-->

                <li class="layui-nav-item">
                    <a class="" href="javascript:;"><i class="layui-icon">&#xe705;</i> <?php echo \think\Lang::get('questions'); ?></a>
                    <dl class="layui-nav-child">
                        <dd><a href="<?php echo url('questions/index'); ?>" target="_content"><i class="layui-icon">&#xe60a;</i> <?php echo \think\Lang::get('questions_list'); ?></a></dd>
                        <dd><a href="<?php echo url('questions/add'); ?>" target="_content"><i class="layui-icon">&#xe61f;</i> <?php echo \think\Lang::get('questions_add'); ?></a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="<?php echo url('file/index'); ?>" target="_content"><i class="layui-icon">&#xe705;</i> <?php echo \think\Lang::get('file'); ?></a></li>
                <li class="layui-nav-item"><a href="<?php echo url('config/index'); ?>" target="_content"><i class="layui-icon">&#xe620;</i> <?php echo \think\Lang::get('websetting'); ?></a></li>
                <li class="layui-nav-item">
                    <a class="" href="javascript:;"><i class="layui-icon">&#xe612;</i> <?php echo \think\Lang::get('manager'); ?></a>
                    <dl class="layui-nav-child">
                        <dd><a href="<?php echo url('manager/index'); ?>" target="_content"><i class="layui-icon">&#xe60a;</i> <?php echo \think\Lang::get('managerlst'); ?></a></dd>
                        <dd><a href="<?php echo url('manager/add'); ?>" target="_content"><i class="layui-icon">&#xe61f;</i> <?php echo \think\Lang::get('mangeradd'); ?></a></dd>
                    </dl>
                </li>

                <li class="layui-nav-item">
                    <a class="" href="javascript:;"><i class="layui-icon">&#xe705;</i> <?php echo \think\Lang::get('member'); ?></a>
                    <dl class="layui-nav-child">
                        <dd><a href="<?php echo url('member/index'); ?>" target="_content"><i class="layui-icon">&#xe60a;</i> <?php echo \think\Lang::get('memberlst'); ?></a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-body" id="layui-body" style="overflow: hidden;">
        <!-- 内容主体区域 -->
        <div class="title ly-right-title"><span class="actived"><i class="layui-icon">&#xe68e;</i> <span id="righttitle"><?php echo \think\Lang::get('baseinfo'); ?></span></span></div>
        <iframe id="_content" name="_content" src="<?php echo url('index/system'); ?>" scrolling="yes" frameborder="no" width="100%" height="100%"></iframe>
    </div>

    <!--<div class="layui-footer">-->
        <!--&lt;!&ndash; 底部固定区域 &ndash;&gt;-->
        <!---->
    <!--</div>-->
</div>
<script src="/static/admin/vendor/js/jquery.js"></script>
<script src="/static/admin/vendor/layui/layui.js"></script>
<script src="/static/admin/custom/js/admin.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
    $(function(){
        $('#rightmenu').hover(function(){

        },function(){
            $(this).slideUp().parent().removeClass('layui-nav-itemed');
            $('.layui-nav-more').removeClass('layui-nav-mored');
        });
    });

</script>
</body>
</html>
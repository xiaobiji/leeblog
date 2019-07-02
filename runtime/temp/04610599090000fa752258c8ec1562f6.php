<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:77:"/Volumes/小Lee/网站文件/leeblog/application/admin/view/index/system.html";i:1562077853;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo \think\Lang::get('websetting'); ?></title>
    <link rel="stylesheet" href="/static/admin/vendor/layui/css/layui.css">
    <link rel="stylesheet" href="/static/admin/custom/css/style.css">
</head>
<body style="padding:0 10px;margin-bottom:50px;">
<div class="layui-collapse" lay-accordion="" lay-filter="collapse">
    <div class="layui-colla-item">
        <h2 class="layui-colla-title"><?php echo \think\Lang::get('soft'); ?></h2>
        <div class="layui-colla-content layui-show">
            <table class="layui-table">
                <tr>
                    <td width="40%"><?php echo \think\Lang::get('softname'); ?></td>
                    <td width="60%"><?php echo \think\Lang::get('logintitletype'); ?><?php echo \think\Lang::get('logintitle'); ?></td>
                </tr>
                <tr>
                    <td><?php echo \think\Lang::get('DMI'); ?></td>
                    <td>v1.0.0</td>
                </tr>
                <tr>
                    <td><?php echo \think\Lang::get('qqgroup'); ?></td>
                    <td>648564906</td>
                </tr>
                <tr>
                    <td><?php echo \think\Lang::get('support'); ?></td>
                    <td><a href="#';"><?php echo \think\Lang::get('basename'); ?></a></td>
                </tr>
            </table>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title"><?php echo \think\Lang::get('server'); ?></h2>
        <div class="layui-colla-content">
            <table class="layui-table">
                <tr>
                    <td><?php echo \think\Lang::get('serverip'); ?></td>
                    <td><?php echo $system['ip']; ?></td>
                </tr>
                <tr>
                    <td width="40%"><?php echo \think\Lang::get('servername'); ?></td>
                    <td width="60%"><?php echo $system['host']; ?></td>
                </tr>
                <tr>
                    <td><?php echo \think\Lang::get('serveros'); ?></td>
                    <td><?php echo $system['os']; ?></td>
                </tr>
                <tr>
                    <td><?php echo \think\Lang::get('JRE'); ?></td>
                    <td><?php echo $system['server']; ?></td>
                </tr>
                <tr>
                    <td><?php echo \think\Lang::get('serverport'); ?></td>
                    <td><?php echo $system['port']; ?></td>
                </tr>
                <tr>
                    <td width="40%"><?php echo \think\Lang::get('phpversion'); ?></td>
                    <td width="60%"><?php echo $system['php_ver']; ?></td>
                </tr>
            </table>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title"><?php echo \think\Lang::get('database'); ?></h2>
        <div class="layui-colla-content">
            <table class="layui-table">
                <tr>
                    <td width="40%"><?php echo \think\Lang::get('databaseversion'); ?></td>
                    <td width="60%"><?php echo $system['mysql_ver']; ?></td>
                </tr>
                <tr>
                    <td><?php echo \think\Lang::get('databasename'); ?></td>
                    <td><?php echo $system['database']; ?></td>
                </tr>
            </table>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title"><?php echo \think\Lang::get('loginlog'); ?></h2>
        <div class="layui-colla-content">
            <table class="layui-table">
                <tr>
                    <td><?php echo \think\Lang::get('logintime'); ?></td>
                    <td><?php echo \think\Lang::get('loginip'); ?></td>
                    <td><?php echo \think\Lang::get('logininfo'); ?></td>
                </tr>
                <?php if(is_array($log) || $log instanceof \think\Collection || $log instanceof \think\Paginator): $i = 0; $__LIST__ = $log;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                <tr>
                    <td><?php echo date("Y/m/d H:i:s",$vo['logintime']); ?></td>
                    <td><?php echo $vo['ip']; ?></td>
                    <td><?php echo $vo['msg']; ?></td>
                </tr>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </table>
        </div>
    </div>
</div>
<script src="/static/admin/vendor/js/jquery.js"></script>
<script src="/static/admin/vendor/layui/layui.js"></script>
<script src="/static/admin/custom/js/admin.js"></script>
<script>
    //JavaScript代码区域
    layui.use(['layer','element'], function () {
        var layer = layui.layer, element = layui.element;

        //监听折叠
        element.on('collapse(collapse)', function(data){
            layer.msg('展开状态：'+ data.show);
        });

        // you code ...


    });
</script>
</body>
</html>
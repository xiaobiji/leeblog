<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:76:"/Volumes/小Lee/网站文件/leeblog/application/admin/view/login/index.html";i:1562077854;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?php echo \think\Lang::get('logintitletype'); ?><?php echo \think\Lang::get('logintitle'); ?></title>
    <link rel="stylesheet" href="/static/admin/vendor/layui/css/layui.css">
    <link rel="stylesheet" href="/static/admin/custom/css/login.css">
</head>
<body>
<div class="layui-anim layui-anim-up login-main" id="form-main">
    <form class="layui-form" action="?" method="post">
        <h3><span><?php echo \think\Lang::get('logintitletype'); ?></span><?php echo \think\Lang::get('logintitle'); ?></h3>
        <div class="ly-input">
            <input type="text" name="account" required  lay-verify="required" placeholder="<?php echo \think\Lang::get('inputaccount'); ?>" autocomplete="off" class="layui-input">
        </div>
        <div class="ly-input">
            <input type="password" name="password" required  lay-verify="required" placeholder="<?php echo \think\Lang::get('inputpassword'); ?>" autocomplete="off" class="layui-input">
        </div>
        <div class="ly-input" style="position: relative;">
            <input type="text" name="code" required  lay-verify="required" maxlength="4" placeholder="<?php echo \think\Lang::get('inputcode'); ?>" autocomplete="off" class="layui-input" style="width: 100px;">
            <img src="<?php echo captcha_src(); ?>" alt="captcha" onclick="this.src='<?php echo captcha_src(); ?>?'+Math.random();" style="position: absolute;left:110px;top:0;height: 35px;cursor:pointer;"/>
        </div>
        <div class="ly-input">
            <button class="layui-btn layui-btn-danger ly-submit" id="ly-submit" lay-submit lay-filter="formDemo"><?php echo \think\Lang::get('loginbtn'); ?></button>
        </div>
    </form>
    <p><?php echo \think\Lang::get('copyright'); ?></p>
</div>

<script src="/static/admin/vendor/js/jquery.js"></script>
<script src="/static/admin/vendor/layui/layui.js"></script>
<script src="/static/admin/custom/js/login.js"></script>
<script>
    //一般直接写在一个js文件中
    layui.use(['layer', 'form'], function(){
        var layer = layui.layer
            ,form = layui.form;
        form.on('submit(formDemo)', function(data){
            $('#ly-submit').submit();
        });
    });
</script>
</body>
</html>
<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:85:"/Volumes/小Lee/网站文件/leeblog/application/admin/view/article/article_list.html";i:1562077852;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo \think\Lang::get('contentlst'); ?></title>
    <link rel="stylesheet" href="/static/admin/vendor/layui/css/layui.css">
    <link rel="stylesheet" href="/static/admin/custom/css/style.css">
</head>
<body style="padding:10px 10px;">
<form class="layui-form" action="<?php echo url('article/delall'); ?>" method="post">
<div>
    <a href="<?php echo url('article/add'); ?>" class="layui-btn layui-btn-normal"><?php echo \think\Lang::get('contentadd'); ?></a>
    <button type="submit" class="layui-btn layui-btn-danger"><?php echo \think\Lang::get('delall'); ?></button>
    <div class="layui-form-item" style="float: right;">
        <label class="layui-form-label"><?php echo \think\Lang::get('selectdepID'); ?></label>
        <div class="layui-input-inline">
            <select name="cid" lay-filter="lanmu">
                <option value=""><?php echo \think\Lang::get('showall'); ?></option>
                <?php if(is_array($cate) || $cate instanceof \think\Collection || $cate instanceof \think\Paginator): $i = 0; $__LIST__ = $cate;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                <option value="<?php echo $vo['id']; ?>" <?php if($vo['id'] == $cid): ?>selected<?php endif; ?>><?php echo $vo['name']; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>
        </div>
    </div>
<table class="layui-table" lay-size="md">
    <colgroup>
        <col width="60">
        <col width="80">
        <col>
        <col width="100">
        <col width="170">
        <col width="100">
        <col width="100">
        <col width="100">
        <col width="100">
        <col width="220">
    </colgroup>
    <thead>
    <tr style="height: 45px" pid="0">
        <th style="text-align:center;"><input type="checkbox" name="" lay-skin="primary" lay-filter="quanxuan"></th>
        <th style="text-align: center;">ID</th>
        <th><?php echo \think\Lang::get('title'); ?></th>
        <th><?php echo \think\Lang::get('depID'); ?></th>
        <th><?php echo \think\Lang::get('addtime'); ?></th>
        <th style="text-align: center;"><?php echo \think\Lang::get('views'); ?></th>
        <th style="text-align: center;"><?php echo \think\Lang::get('Thum'); ?></th>
        <th style="text-align: center;"><?php echo \think\Lang::get('top'); ?></th>
        <th style="text-align: center;"><?php echo \think\Lang::get('tuijian'); ?></th>
        <th><?php echo \think\Lang::get('handle'); ?></th>
    </tr>
    </thead>
    <tbody>

    <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
    <tr>
        <td style="text-align: center;"><input type="checkbox" name="id[]" class="qx" lay-skin="primary" value="<?php echo $vo['id']; ?>"></td>
        <td style="text-align: center;"><?php echo $vo['id']; ?></td>
        <td><?php echo $vo['title']; ?></td>
        <td><?php echo $vo['name']; ?></td>
        <td><?php echo date("Y/m/d H:i:s",$vo['addtime']); ?></td>
        <td style="text-align: center;"><?php echo $vo['views']; ?></td>
        <td style="text-align: center;"><?php if($vo['pic'] == 0): ?><?php echo \think\Lang::get('picnone'); else: ?><?php echo \think\Lang::get('pics'); ?> <span class="layui-badge"><?php echo $vo['pic']; ?></span><?php echo \think\Lang::get('copies'); endif; ?></td>
        <td style="text-align: center;"><input type="checkbox" name="istop" lay-filter="istop" lay-skin="switch" lay-text="<?php echo \think\Lang::get('toptip'); ?>" value="<?php echo $vo['id']; ?>" <?php echo !empty($vo['istop'])?"checked":""; ?>></td>
        <td style="text-align: center;"><input type="checkbox" name="istuijian" lay-filter="istuijian" lay-skin="switch" lay-text="<?php echo \think\Lang::get('tuijiantip'); ?>" value="<?php echo $vo['id']; ?>" <?php echo !empty($vo['istuijian'])?"checked":""; ?>></td>
        <td>
            <botton class="layui-btn layui-btn-mini <?php if($vo['pic'] == '0'): ?>layui-btn-disabled<?php endif; ?> tupian" id="<?php echo $vo['id']; ?>"><i class="layui-icon">&#xe64a;</i><?php echo \think\Lang::get('pic'); ?></botton>
            <a href="<?php echo url('article/edit',['id'=>$vo['id']]); ?>" class="layui-btn layui-btn-warm layui-btn-mini"><i class="layui-icon">&#xe642;</i><?php echo \think\Lang::get('edit'); ?></a>
            <a href="<?php echo url('article/del',['aid'=>$vo['id']]); ?>" class="layui-btn layui-btn-danger layui-btn-mini del"><i class="layui-icon">&#xe640;</i><?php echo \think\Lang::get('delete'); ?></a>
        </td>
    </tr>
    <?php endforeach; endif; else: echo "" ;endif; ?>
    </tbody>
</table>
    <div style="text-align: right;"><?php echo $list->render(); ?></div>
</div>
</form>

<script src="/static/admin/vendor/js/jquery.js"></script>
<script src="/static/admin/vendor/layui/layui.js"></script>
<script src="/static/admin/custom/js/admin.js"></script>
<script>
    layui.use(['layer','form'], function(){
        var layer = layui.layer;
        var form = layui.form;

        $('.del').on('click',function () {
            var url=$(this).attr('href');
            layer.confirm('<?php echo \think\Lang::get('suredel'); ?>?', {icon: 3, title:'<?php echo \think\Lang::get('tishi'); ?>'}, function(index){
                //do something
                location.href=url;
                layer.close(index);
            });
            return false;
        });
        //监听栏目
        form.on('select(lanmu)', function(data){
            var cid=data.value;
            location.href="<?php echo url('admin/article/index'); ?>?cid="+cid;
        });
        form.on('switch(istop)', function(data){
            var istop=data.elem.checked;
            var id=data.value;
            $.ajax({
                'type':'post',
                'url':"<?php echo url('admin/article/istop'); ?>",
                'data':{'id':id,'istop':istop},
                'datatype':'json',
                success:function (msg) {
                    layer.msg(msg.msg,{time:1000},function () {
                        location.href="<?php echo url('admin/article/index'); ?>";
                    });
                }
            });
        });
        form.on('switch(istuijian)', function(data){
            var istuijian=data.elem.checked;
            var id=data.value;
            $.ajax({
                'type':'post',
                'url':"<?php echo url('admin/article/istuijian'); ?>",
                'data':{'id':id,'istuijian':istuijian},
                'datatype':'json',
                success:function (msg) {
                    layer.msg(msg.msg,{time:1000},function () {
                        location.href="<?php echo url('admin/article/index'); ?>";
                    });
                }
            });
        });
        //全选与取消
        form.on('checkbox(quanxuan)', function(data){
            if(data.elem.checked){
                //全选
                //$('.qx').prop('checked','checked');
                $('.qx').prop('checked',true);
                form.render();
            }else{
                //取消全选
                //$('.qx').removeAttr('checked');
                $('.qx').prop('checked',false);
                form.render();
            }
        });
        //图片按钮点击事件
        $('.tupian').on('click',function () {
            var aid=$(this).attr("id");
            if($(this).hasClass('layui-btn-disabled')){
                return false;
            }
            layer.open({
                type: 2,
                title:'<?php echo \think\Lang::get('pic'); ?>',
                area: ['700px', '450px'],
                fixed: false, //不固定
                maxmin: true,
                content: '<?php echo url("admin/article/pics"); ?>?aid='+aid
            });
        });
    });

    $(function(){
        $(window.parent.document).find('#righttitle').text($('title').text());
   });
</script>
</body>
</html>
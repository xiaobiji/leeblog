<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:84:"/Volumes/小Lee/网站文件/leeblog/application/admin/view/article/article_add.html";i:1562077852;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo \think\Lang::get('contentadd'); ?></title>
    <link rel="stylesheet" href="/public/static/admin/vendor/layui/css/layui.css">
    <link rel="stylesheet" href="/public/static/admin/custom/css/style.css">
    <style>
        .layui-form-select dl{z-index: 2;}
        #thumb_list{padding-top: 8px;}
        #thumb_list img{border: 1px solid #DDD;padding: 3px;border-radius: 5px;}
        #thumb_list span{position: relative;display: inline-block;margin-right: 5px;}
        #thumb_list span .delimg{position: absolute;right:3px;top:3px;}
    </style>
</head>
<body style="padding:10px 10px;margin-bottom: 50px;">
<div class="layui-container">
    <form class="layui-form" action="?" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label"><?php echo \think\Lang::get('depID'); ?></label>
            <div class="layui-input-inline">
                <select name="cid" required lay-verify="required" lay-filter="lanmu">
                    <option value="<?php if($cate_id['id']): ?><?php echo $cate_id['id']; endif; ?>"><?php if($cate_id['name']): ?><?php echo $cate_id['name']; else: ?><?php echo \think\Lang::get('selectdepID'); endif; ?></option>
                    <?php if(is_array($cate) || $cate instanceof \think\Collection || $cate instanceof \think\Paginator): $i = 0; $__LIST__ = $cate;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                    <option value="<?php echo $vo['id']; ?>" <?php if($vo['is_addarticle'] == '0'): ?>disabled="disabled"<?php endif; ?> data="<?php echo $vo['typeid']; ?>"><?php echo $vo['name']; ?></option>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"><?php echo \think\Lang::get('title'); ?></label>
            <div class="layui-input-block">
                <input type="text" name="title" placeholder="<?php echo \think\Lang::get('titletip'); ?>" autocomplete="off" class="layui-input">
            </div>
        </div>
        <!--<div class="layui-form-item">-->
            <!--<label class="layui-form-label"><?php echo \think\Lang::get('keyword'); ?></label>-->
            <!--<div class="layui-input-block">-->
                <!--<input type="text" name="keyword" placeholder="<?php echo \think\Lang::get('keywordtip'); ?>" autocomplete="off" class="layui-input">-->
            <!--</div>-->
        <!--</div>-->
        <div class="layui-form-item">
            <label class="layui-form-label"><?php echo \think\Lang::get('keyword'); ?></label>
            <div class="layui-input-block">
                <?php if(is_array($tags) || $tags instanceof \think\Collection || $tags instanceof \think\Paginator): $i = 0; $__LIST__ = $tags;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                <div style="float: left">
                <input type="checkbox" name="keyword" autocomplete="off" class="layui-input" value="<?php echo $vo['id']; ?>"><span style="margin-right: 8px;margin-left: -6px;"><?php echo $vo['tname']; ?></span></div>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"><?php echo \think\Lang::get('desc'); ?></label>
            <div class="layui-input-block">
                <textarea name="desc" placeholder="<?php echo \think\Lang::get('desctip'); ?>" class="layui-textarea" maxlength="200"></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"><?php echo \think\Lang::get('remark'); ?></label>
            <div class="layui-input-block">
                <textarea name="remark" placeholder="<?php echo \think\Lang::get('remarktip'); ?>" class="layui-textarea" maxlength="200"></textarea>
            </div>
        </div>
        <div class="layui-form-item" id="model" style="display: none;">
            <label class="layui-form-label"><?php echo \think\Lang::get('model'); ?></label>
            <div class="layui-input-block">
                <input type="text" name="model" placeholder="<?php echo \think\Lang::get('modeltip'); ?>" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div id="team" style="display: none;">
            <div class="layui-form-item">
                <label class="layui-form-label"><?php echo \think\Lang::get('job'); ?></label>
                <div class="layui-input-inline">
                    <input type="text" name="zhiwu" placeholder="<?php echo \think\Lang::get('jobtip'); ?>" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"><?php echo \think\Lang::get('positional'); ?></label>
                <div class="layui-input-inline">
                    <input type="text" name="zhicheng" placeholder="<?php echo \think\Lang::get('positionaltip'); ?>" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"><?php echo \think\Lang::get('author'); ?></label>
            <div class="layui-input-inline">
                <input type="text" name="author" value="<?php echo $config['author']; ?>" placeholder="<?php echo \think\Lang::get('authortip'); ?>" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"><?php echo \think\Lang::get('views'); ?></label>
            <div class="layui-input-inline">
                <input type="text" name="views" value="0" required  lay-verify="required" placeholder="<?php echo \think\Lang::get('viewstip'); ?>" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"><?php echo \think\Lang::get('addtime'); ?></label>
            <div class="layui-input-inline">
                <input type="text" name="addtime" value="<?php echo date('Y/m/d H:i:s',time())?>" required  lay-verify="required" placeholder="<?php echo \think\Lang::get('addtimetip'); ?>" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"><?php echo \think\Lang::get('top'); ?></label>
            <div class="layui-input-inline">
                <input type="checkbox" name="istop" lay-skin="switch" lay-text="<?php echo \think\Lang::get('toptip'); ?>" value="1">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"><?php echo \think\Lang::get('tuijian'); ?></label>
            <div class="layui-input-inline">
                <input type="checkbox" name="istuijian" lay-skin="switch" lay-text="<?php echo \think\Lang::get('tuijiantip'); ?>" value="1">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"><?php echo \think\Lang::get('thum'); ?></label>
            <div class="layui-input-block">
                <input type="hidden" name="pic"  placeholder="<?php echo \think\Lang::get('thumtip'); ?>" autocomplete="off" class="layui-input">
                <button type="button" class="layui-btn" id="uploadimg">
                    <i class="layui-icon">&#xe67c;</i><?php echo \think\Lang::get('thumtip'); ?>
                </button>
                <div id="thumb_list">

                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"><?php echo \think\Lang::get('contenttitle'); ?></label>
            <div class="layui-input-block">
                <div id="content" name="content" type="text/plain" style="height:300px;"></div>
            </div>
        </div>
        <input type="hidden" name="__token__" value="<?php echo \think\Request::instance()->token(); ?>" />
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="formDemo"><?php echo \think\Lang::get('addbtn'); ?></button>
            </div>
        </div>
    </form>
</div>
<script src="/public/static/admin/vendor/js/jquery.js"></script>
<script src="/public/static/admin/vendor/layui/layui.js"></script>
<!-- 配置文件 -->
<script type="text/javascript" src="/public/static/admin/ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="/public/static/admin/ueditor/ueditor.all.js"></script>
<!-- 实例化编辑器 -->
<script src="/public/static/admin/custom/js/admin.js"></script>
<script>
    var ue = UE.getEditor('content',{
        //initialFrameWidth:'100%',
        initialFrameHeight:400
    });
    layui.use(['form','upload'], function(){
        var form = layui.form;
        var upload = layui.upload;
        //监听提交
        form.on('submit(formDemo)', function(data){
        });
        //监听栏目
        form.on('select(lanmu)', function(data){
            console.log(data.elem); //得到select原始DOM对象
            console.log(data.value); //得到被选中的值
            var lmtype=$(data.elem).find('option:selected').attr('data');
            switch (lmtype){
                case "6":
                    $('#team').fadeIn();
                    $('#model').hide();
                    break;
                case "3":
                    $('#model').fadeIn();
                    $('#team').hide();
                    break;
                default :
                    $('#model').hide();
                    $('#team').hide();
                    break;
            }
        });
        //重写验证规则
        form.verify({
            required:function (value) {
                if(value=="" || value.trim().length()==0){
                    return "<?php echo lang('Required cannot be empty'); ?>";
                }
            }
        });
        //创建一个上传组件
        upload.render({
            elem: '#uploadimg'
            ,url: '<?php echo url("common/uploadimg"); ?>'
            ,accept: 'images' //允许上传的文件类型
            ,field:"imgfile"
            ,size: 2048 //最大允许上传的文件大小
            ,done: function(res, index, upload){ //上传后的回调
                layer.close(layer.index,{isOutAnim:true});
                setTimeout(function () {
                    layer.msg(res.msg);
                    if(res.code==1){
                        var pic=$('input[name=pic]').val();
                        if(pic==""){
                            $('input[name=pic]').val(res.img);
                        }else{
                            $('input[name=pic]').val(pic+","+res.img);
                        }
                        var str;
                        str="<span>";
                        str=str+'<img src="/public/'+res.img+'" alt="" height="80">';
                        str=str+'<button type="button" class="layui-btn layui-btn-danger layui-btn-mini delimg" onclick="delimg(this);" data="'+res.img+'">';
                        str=str+'<i class="layui-icon">&#xe640;</i>';
                        str=str+'</button>';
                        str=str+'</span>';
                        $('#thumb_list').append(str);
                    }else{

                    }

                },500);
            }
            ,before:function () {
                var index = layer.load();
            }

            //,……
        })
    });
    $(function(){
        $(window.parent.document).find('#righttitle').text($('title').text());
    });
    //删除栏目图片
    function delimg(obj) {
        var picurl=$(obj).attr('data');
        $.ajax({
            type:"post",
            url:"<?php echo url('common/delimg'); ?>",
            data:{'url':picurl},
            success:function (res) {
                var picvalue=$('input[name=pic]').val();
                var str="";
                if(res.code==1 || res.code==2){
                    //栏目图片文本框中图片地址处理
                    if(picvalue==picurl){
                        $('input[name=pic]').val('');
                    }else{
                        str=picvalue.replace(picurl+",","");
                        str=str.replace(","+picurl,"");
                        $('input[name=pic]').val(str);
                    }
                    //删除/移除缩略图
                    $(obj).parent().remove();
                    layer.msg(res.msg);
                }
                if(res.code==0){
                    layer.msg(res.msg);
                }
            }
        });
    }
</script>
</body>
</html>
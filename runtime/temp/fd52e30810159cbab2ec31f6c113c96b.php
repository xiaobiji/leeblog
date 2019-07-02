<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:76:"/Volumes/小Lee/网站文件/leeblog/application/index/view/index/index.html";i:1562077859;s:75:"/Volumes/小Lee/网站文件/leeblog/application/index/view/common/tdk.html";i:1562077858;}*/ ?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title><?php echo $seo['title']; ?>_<?php echo $config['title']; ?></title>
<meta name="keywords" content="<?php echo $seo['keyword']; ?>">
<meta name="description" content="<?php echo $seo['desc']; ?>">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/public/static/index/css/base.css" rel="stylesheet">
    <link href="/public/static/index/css/m.css" rel="stylesheet">
    <script src="/public/static/index/js/jquery-1.8.3.min.js"></script>
    <script src="/public/static/index/js/comm.js"></script>
    <!--[if lt IE 9]>
    <script src="/public/static/index/js/modernizr.js"></script>
    <![endif]-->
</head>
<body>
<!--top begin-->
<header id="header">
    <div class="navbox">
        <h2 id="mnavh"><span class="navicon"></span></h2>
        <div class="logo"><a href="/"><?php echo $config['title']; ?></a></div>
        <nav>
            <ul id="starlist">
                <li><a href="/" title="首页">网站首页</a></li>
                <?php if(is_array($allcate) || $allcate instanceof \think\Collection || $allcate instanceof \think\Paginator): $i = 0; $__LIST__ = $allcate;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                <li class="menu"><a href="/category/<?php echo $vo['id']; ?>.html"><?php echo $vo['name']; ?></a>
                    <?php if(isset($vo['child'])){ ?>
                    <ul class="sub">
                        <?php if(is_array($vo['child']) || $vo['child'] instanceof \think\Collection || $vo['child'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo['child'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$cvo): $mod = ($i % 2 );++$i;?>
                        <li><a href="/category/<?php echo $cvo['id']; ?>.html"><?php echo $cvo['name']; ?></a></li>
                        <?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                    <?php } ?>
                    <span>

                        </span>
                </li>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
        </nav>
        <div class="searchico"></div>
    </div>
</header>
<div class="searchbox">
    <div class="search">
        <form action="/e/search/index.php" method="post" name="searchform" id="searchform">
            <input name="keyboard" id="keyboard" class="input_text" value="请输入关键字词" style="color: rgb(153, 153, 153);"
                   onfocus="if(value=='请输入关键字词'){this.style.color='#000';value=''}"
                   onblur="if(value==''){this.style.color='#999';value='请输入关键字词'}" type="text">
            <input name="show" value="title" type="hidden">
            <input name="tempid" value="1" type="hidden">
            <input name="tbname" value="news" type="hidden">
            <input name="Submit" class="input_submit" value="搜索" type="submit">
        </form>
    </div>
    <div class="searchclose"></div>
</div>
<!--top end-->
<article>
    <!--lbox begin-->
    <div class="lbox">
        <!--banbox begin-->
        <div class="banbox">
            <div class="banner">
                <div id="banner" class="fader">
                    <?php if(is_array($banner) || $banner instanceof \think\Collection || $banner instanceof \think\Paginator): $i = 0; $__LIST__ = $banner;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                    <li class="slide"><a href="<?php echo $vo['url']; ?>" target="_blank" title="<?php echo $vo['title']; ?>"><img
                            src="/public/<?php echo $vo['pic']; ?>"></a></li>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                    <div class="fader_controls">
                        <div class="page prev" data-target="prev"></div>
                        <div class="page next" data-target="next"></div>
                        <ul class="pager_list">
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--banbox end-->
        <!--headline begin-->
        <div class="headline">
            <ul>
                <?php if(is_array($tuijianData) || $tuijianData instanceof \think\Collection || $tuijianData instanceof \think\Paginator): $i = 0; $__LIST__ = $tuijianData;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                <li><a href="/article/<?php echo $vo['id']; ?>.html" title="<?php echo $vo['title']; ?>"><img
                        src="<?php if(($vo['pic'][0])): ?>/public/<?php echo $vo['pic'][0]; else: ?>/public/static/index/picture/noimg.jpg<?php endif; ?>"
                        alt="<?php echo $vo['title']; ?>"><span><?php echo $vo['title']; ?></span></a></li>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
        </div>
        <!--headline end-->
        <div class="clearblank"></div>
        <div class="tab_box whitebg">

            <div class="tab_buttons">
                <ul>
                    <?php if(is_array($six_cates) || $six_cates instanceof \think\Collection || $six_cates instanceof \think\Paginator): $i = 0; $__LIST__ = $six_cates;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                    <li><?php echo $vo['name']; ?></li>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
            <div class="newstab">

                <?php if(is_array($six_cates) || $six_cates instanceof \think\Collection || $six_cates instanceof \think\Paginator): $i = 0; $__LIST__ = $six_cates;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>

                <div class="newsitem">
                    <div class="newspic">
                        <ul>
                            <?php if(is_array($vo['arts']) || $vo['arts'] instanceof \think\Collection || $vo['arts'] instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($vo['arts']) ? array_slice($vo['arts'],0,2, true) : $vo['arts']->slice(0,2, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ao): $mod = ($i % 2 );++$i;?>
                            <li><a href="/article/<?php echo $ao['id']; ?>.html"><img
                                    src="<?php if(($ao['pic'][0])): ?>/public/<?php echo $ao['pic'][0]; else: ?>/public/static/index/picture/noimg.jpg<?php endif; ?>"><span><?php echo $ao['title']; ?></span></a>
                            </li>
                            <?php endforeach; endif; else: echo "" ;endif; ?>
                        </ul>
                    </div>
                    <ul class="newslist">
                        <?php if(is_array($vo['arts']) || $vo['arts'] instanceof \think\Collection || $vo['arts'] instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($vo['arts']) ? array_slice($vo['arts'],3,null, true) : $vo['arts']->slice(3,null, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ao): $mod = ($i % 2 );++$i;?>
                        <li><i></i><a href="/article/<?php echo $ao['id']; ?>.html" title="<?php echo $ao['title']; ?>"><?php echo $ao['title']; ?></a>
                            <p><?php echo $ao['remark']; ?></p></li>
                        <?php endforeach; endif; else: echo "" ;endif; ?>

                    </ul>
                </div>
                <?php endforeach; endif; else: echo "" ;endif; ?>

            </div>


        </div>

        <!--tab_box end-->
        <div class="zhuanti whitebg">
            <h2 class="htitle">
              <span class="hnav">
                  <?php if(is_array($indexTagsData) || $indexTagsData instanceof \think\Collection || $indexTagsData instanceof \think\Paginator): $i = 0; $__LIST__ = $indexTagsData;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                <a href="/search.html?keywords=<?php echo $vo['tname']; ?>" target="_blank"><?php echo $vo['tname']; ?></a> &nbsp;
                  <?php endforeach; endif; else: echo "" ;endif; ?>
            </span>特别推荐</h2>
            <ul>
                <li><i class="ztpic"><a href="/notice/30.html" target="_blank"><img
                        src="/public/static/index/picture/56c49531df63eec5ccc3840e68f3ac21.png"></a></i>
                    <b>【个人博客空间申请】金牛云服，免费领空间啦</b><span>还在愁域名购买了，如何选择主机或者服务器吗？

其实选择主机或者服务器有几个重要的选项，比如，线路，CPU，内存，带宽，网页空间，数据库，月流量等等。那什么是主机，什么是服务器，他们的区别</span><a href="/notice/30.html" target="_blank"
                                                                                class="readmore">文章阅读</a></li>
                <li><i class="ztpic"><a href="/notice/29.html" target="_blank"><img
                        src="/public/static/index/picture/e3d39beb4e61d8545d6fbda2dc7a4b71.png"></a></i>
                    <b>双十一，阿里云特惠活动，快来领券啦</b><span>一折的产品，有没有看错，咱来看看，到底是哪些一折，想买空间吗？算了吧，服务器的价钱都比空间便宜呢，那肯定买服务器啊，咱来看看阿里云一折的服务器哪些好</span><a
                            href="/notice/29.html" target="_blank" class="readmore">文章阅读</a></li>
                <li><i class="ztpic"><a href="/notice/28.html" target="_blank"><img
                        src="/public/static/index/picture/372b79556c82ac59a8c46eda53f177c4.jpg"></a></i> <b>第二届
                    优秀个人博客模板比赛参选活动</b><span>只要你是在校大学生，不管你是新生，还是即将毕业，不管你是前端菜鸟，还是前端大神，只要你会html，这里将会是你展示才能的大平台。</span><a
                        href="/notice/28.html" target="_blank" class="readmore">文章阅读</a></li>
                <li><i class="ztpic"><a href="/notice/27.html" target="_blank"><img src="/public/static/index/picture/h1.jpg"></a></i>
                    <b>为什么说10月24日是程序员的节日？</b><span>创立“程序员节”最早是来自俄文《计算机世界》（《Компьютерра》）出版社的主编德米特里·门德列留科（Дмитрий Мендрелюк）在1996年7月15日的想法，当时计划将节日命名为“计算机用户节”，定在每年9月份的第一个星期五，称之为“纯净的星期五</span><a
                            href="/notice/27.html" target="_blank" class="readmore">文章阅读</a></li>
                <li><i class="ztpic"><a href="/notice/26.html" target="_blank"><img src="/public/static/index/picture/h2.jpg"></a></i>
                    <b>个人网站做好了，百度不收录怎么办？来，看看他们怎么做的。</b><span>不管你是学前端的还是后端的，作为一个程序员，做一个自己的博客，那是必然的。咱们的圈子就这么大，想让更多的人了解你，看看你的技术多牛逼，扔一个博客地址就行了。

大多数人在没有</span><a href="/notice/26.html" target="_blank" class="readmore">文章阅读</a></li>
                <li><i class="ztpic"><a href="/xd/25.html" target="_blank"><img
                        src="/public/static/index/picture/ae167e7d81612318949460aad1143e0d.jpg"></a></i>
                    <b>即便是坑，我也想要拉你入伙！</b><span>对于刚毕业的学生来说，想学习建网站，掌握一技之长，最简单的入门无非就是学会html和css，先前发表过一篇文章《如果要学习web前端开发，需要学习什么？》，如果你还不知道如何着手，请仔细阅读....7天的时间，入门是没有问题的，当然，如果你用心的话！</span><a
                            href="/xd/25.html" target="_blank" class="readmore">文章阅读</a></li>

            </ul>
        </div>
        <div class="ad whitebg"><a href='http://www.yangqq.com/download/div/917.html' target=_blank><img
                src='/public/static/index/picture/longad.jpg'></a></div>
        <div class="whitebg bloglist">
            <h2 class="htitle">最新博文</h2>
            <ul>


                <li>
                    <h3 class="blogtitle"><b>【顶】</b><a href="/xd/23.html" target="_blank">作为一个设计师,如果遭到质疑你是否能恪守自己的原则?</a>
                    </h3>
                    <span class="blogpic imgscale"><i><a href="/xd/" target="_blank">设计心得</a></i><a href="/xd/23.html"
                                                                                                    title="作为一个设计师,如果遭到质疑你是否能恪守自己的原则?"><img
                            src="/public/static/index/picture/75842f4d1e18d692a66c38eb172a40ab.jpg"
                            alt="作为一个设计师,如果遭到质疑你是否能恪守自己的原则?"></a></span>
                    <p class="blogtext">
                        就拿我自己来说吧，有时候会很矛盾，设计好的作品，不把它分享出来，会觉得待在自己电脑里面实在是没有意义。干脆就发布出去吧。我也害怕收到大家不好的评论，有些评论，可能说者无意，但是对于每一个用心的站长来说，都会受很深 </p>
                    <p class="bloginfo"><i class="avatar">
                        <script src="/public/static/index/js/thea6.js"></script>
                    </i><span></span><span>2018-11-08</span><span>【<a href="/xd/" target="_blank">设计心得</a>】</span></p>
                    <a href="/xd/23.html" class="viewmore">阅读更多</a></li>


                <li>
                    <h3 class="blogtitle"><b>【顶】</b><a href="/web/html/14.html" target="_blank">十条设计原则教你学会如何设计网页布局!</a>
                    </h3>
                    <span class="blogpic imgscale"><i><a href="/web/html/" target="_blank">CSS3|Html5</a></i><a
                            href="/web/html/14.html" title="十条设计原则教你学会如何设计网页布局!"><img
                            src="/public/static/index/picture/718b56be9dbf920cc0a6124545216654.jpg" alt="十条设计原则教你学会如何设计网页布局!"></a></span>
                    <p class="blogtext">
                        网页常见的布局有很多种,单列布局,多列布局.其中单列布局是国外很多网站比较常用的.咱们很多站长以及门户网站都使用的是是两列布局,很少用三列布局的.下面我来分享下我们常用的网页布局格式以及设计技巧 </p>
                    <p class="bloginfo"><i class="avatar">
                        <script src="/public/static/index/js/thea6.js"></script>
                    </i><span></span><span>2018-11-08</span><span>【<a href="/web/html/" target="_blank">CSS3|Html5</a>】</span>
                    </p>
                    <a href="/web/html/14.html" class="viewmore">阅读更多</a></li>


                <li>
                    <h3 class="blogtitle"><b>【顶】</b><a href="/blog/7.html" target="_blank">安静地做一个爱设计的女子</a></h3>
                    <span class="blogpic imgscale"><i><a href="/blog/" target="_blank">个人博客日记</a></i><a
                            href="/blog/7.html" title="安静地做一个爱设计的女子"><img src="/public/static/index/picture/b02.jpg"
                                                                          alt="安静地做一个爱设计的女子"></a></span>
                    <p class="blogtext">
                        自从入了这行，很多人跟我说可以做网络教程，我也有考虑，但最终没有实现，因为我觉得在这个教程泛滥的时代，直接做一套免费的原创个人博客模板更为实在。每当看到自己喜欢的配色图片 </p>
                    <p class="bloginfo"><i class="avatar">
                        <script src="/public/static/index/js/thea6.js"></script>
                    </i><span></span><span>2018-11-08</span><span>【<a href="/blog/" target="_blank">个人博客日记</a>】</span>
                    </p>
                    <a href="/blog/7.html" class="viewmore">阅读更多</a></li>


                <li>
                    <h3 class="blogtitle"><b>【顶】</b><a href="/xd/1.html" target="_blank">Come on,行动起来吧!我们和时间来一场赛跑!</a>
                    </h3>
                    <span class="blogpic imgscale"><i><a href="/xd/" target="_blank">设计心得</a></i><a href="/xd/1.html"
                                                                                                    title="Come on,行动起来吧!我们和时间来一场赛跑!"><img
                            src="/public/static/index/picture/b03.jpg" alt="Come on,行动起来吧!我们和时间来一场赛跑!"></a></span>
                    <p class="blogtext">
                        "时间过得那么飞快,使我的小心眼儿里不只是着急,还有悲伤.有一天,我放学回家,看到太阳快落山了,就下决心说:"我要比太阳更快地回家."我狂奔回去,站在庭院前喘气的时候,看到太阳还露着半边脸,我高兴地跳跃起来 </p>
                    <p class="bloginfo"><i class="avatar">
                        <script src="/public/static/index/js/thea6.js"></script>
                    </i><span></span><span>2018-11-07</span><span>【<a href="/xd/" target="_blank">设计心得</a>】</span></p>
                    <a href="/xd/1.html" class="viewmore">阅读更多</a></li>


                <li>
                    <h3 class="blogtitle"><a href="/notice/30.html" target="_blank">【个人博客空间申请】金牛云服，免费领空间啦</a></h3>
                    <span class="blogpic imgscale"><i><a href="/notice/" target="_blank">网站公告</a></i><a
                            href="/notice/30.html" title="【个人博客空间申请】金牛云服，免费领空间啦"><img
                            src="/public/static/index/picture/56c49531df63eec5ccc3840e68f3ac21.png"
                            alt="【个人博客空间申请】金牛云服，免费领空间啦"></a></span>
                    <p class="blogtext">还在愁域名购买了，如何选择主机或者服务器吗？<br/>
                        <br/>
                        其实选择主机或者服务器有几个重要的选项，比如，线路，CPU，内存，带宽，网页空间，数据库，月流量等等。那什么是主机，什么是服务器，他们的区别 </p>
                    <p class="bloginfo"><i class="avatar">
                        <script src="/public/static/index/js/thea6.js"></script>
                    </i><span></span><span>2018-11-08</span><span>【<a href="/notice/" target="_blank">网站公告</a>】</span>
                    </p>
                    <a href="/notice/30.html" class="viewmore">阅读更多</a></li>


                <li>
                    <h3 class="blogtitle"><a href="/notice/29.html" target="_blank">双十一，阿里云特惠活动，快来领券啦</a></h3>
                    <span class="blogpic imgscale"><i><a href="/notice/" target="_blank">网站公告</a></i><a
                            href="/notice/29.html" title="双十一，阿里云特惠活动，快来领券啦"><img
                            src="/public/static/index/picture/e3d39beb4e61d8545d6fbda2dc7a4b71.png"
                            alt="双十一，阿里云特惠活动，快来领券啦"></a></span>
                    <p class="blogtext">一折的产品，有没有看错，咱来看看，到底是哪些一折，想买空间吗？算了吧，服务器的价钱都比空间便宜呢，那肯定买服务器啊，咱来看看阿里云一折的服务器哪些好 </p>
                    <p class="bloginfo"><i class="avatar">
                        <script src="/public/static/index/js/thea6.js"></script>
                    </i><span></span><span>2018-11-08</span><span>【<a href="/notice/" target="_blank">网站公告</a>】</span>
                    </p>
                    <a href="/notice/29.html" class="viewmore">阅读更多</a></li>


                <li>
                    <h3 class="blogtitle"><a href="/notice/28.html" target="_blank">第二届 优秀个人博客模板比赛参选活动</a></h3>
                    <span class="blogpic imgscale"><i><a href="/notice/" target="_blank">网站公告</a></i><a
                            href="/notice/28.html" title="第二届 优秀个人博客模板比赛参选活动"><img
                            src="/public/static/index/picture/372b79556c82ac59a8c46eda53f177c4.jpg"
                            alt="第二届 优秀个人博客模板比赛参选活动"></a></span>
                    <p class="blogtext">只要你是在校大学生，不管你是新生，还是即将毕业，不管你是前端菜鸟，还是前端大神，只要你会html，这里将会是你展示才能的大平台。 </p>
                    <p class="bloginfo"><i class="avatar">
                        <script src="/public/static/index/js/thea6.js"></script>
                    </i><span></span><span>2018-11-08</span><span>【<a href="/notice/" target="_blank">网站公告</a>】</span>
                    </p>
                    <a href="/notice/28.html" class="viewmore">阅读更多</a></li>


                <li>
                    <h3 class="blogtitle"><a href="/notice/27.html" target="_blank">为什么说10月24日是程序员的节日？</a></h3>
                    <span class="blogpic imgscale"><i><a href="/notice/" target="_blank">网站公告</a></i><a
                            href="/notice/27.html" title="为什么说10月24日是程序员的节日？"><img src="/public/static/index/picture/h1.jpg"
                                                                                   alt="为什么说10月24日是程序员的节日？"></a></span>
                    <p class="blogtext">创立“程序员节”最早是来自俄文《计算机世界》（《Компьютерра》）出版社的主编德米特里·门德列留科（Дмитрий
                        Мендрелюк）在1996年7月15日的想法，当时计划将节日命名为“计算机用户节”，定在每年9月份的第一个星期五，称之为“纯净的星期五 </p>
                    <p class="bloginfo"><i class="avatar">
                        <script src="/public/static/index/js/thea6.js"></script>
                    </i><span></span><span>2018-11-08</span><span>【<a href="/notice/" target="_blank">网站公告</a>】</span>
                    </p>
                    <a href="/notice/27.html" class="viewmore">阅读更多</a></li>


                <li>
                    <h3 class="blogtitle"><a href="/notice/26.html" target="_blank">个人网站做好了，百度不收录怎么办？来，看看他们怎么做的。</a>
                    </h3>
                    <span class="blogpic imgscale"><i><a href="/notice/" target="_blank">网站公告</a></i><a
                            href="/notice/26.html" title="个人网站做好了，百度不收录怎么办？来，看看他们怎么做的。"><img
                            src="/public/static/index/picture/h2.jpg" alt="个人网站做好了，百度不收录怎么办？来，看看他们怎么做的。"></a></span>
                    <p class="blogtext">
                        不管你是学前端的还是后端的，作为一个程序员，做一个自己的博客，那是必然的。咱们的圈子就这么大，想让更多的人了解你，看看你的技术多牛逼，扔一个博客地址就行了。<br/>
                        <br/>
                        大多数人在没有 </p>
                    <p class="bloginfo"><i class="avatar">
                        <script src="/public/static/index/js/thea6.js"></script>
                    </i><span></span><span>2018-11-08</span><span>【<a href="/notice/" target="_blank">网站公告</a>】</span>
                    </p>
                    <a href="/notice/26.html" class="viewmore">阅读更多</a></li>


                <li>
                    <h3 class="blogtitle"><a href="/xd/25.html" target="_blank">即便是坑，我也想要拉你入伙！</a></h3>
                    <span class="blogpic imgscale"><i><a href="/xd/" target="_blank">设计心得</a></i><a href="/xd/25.html"
                                                                                                    title="即便是坑，我也想要拉你入伙！"><img
                            src="/public/static/index/picture/ae167e7d81612318949460aad1143e0d.jpg"
                            alt="即便是坑，我也想要拉你入伙！"></a></span>
                    <p class="blogtext">
                        对于刚毕业的学生来说，想学习建网站，掌握一技之长，最简单的入门无非就是学会html和css，先前发表过一篇文章《如果要学习web前端开发，需要学习什么？》，如果你还不知道如何着手，请仔细阅读....7天的时间，入门是没有问题的，当然，如果你用心的话！ </p>
                    <p class="bloginfo"><i class="avatar">
                        <script src="/public/static/index/js/thea6.js"></script>
                    </i><span></span><span>2018-11-08</span><span>【<a href="/xd/" target="_blank">设计心得</a>】</span></p>
                    <a href="/xd/25.html" class="viewmore">阅读更多</a></li>


                <li>
                    <h3 class="blogtitle"><a href="/xd/24.html" target="_blank">我是怎么评价自己的？</a></h3>
                    <span class="blogpic imgscale"><i><a href="/xd/" target="_blank">设计心得</a></i><a href="/xd/24.html"
                                                                                                    title="我是怎么评价自己的？"><img
                            src="/public/static/index/picture/95d1b1577a8a7aa4fe3893f2502617e9.jpg" alt="我是怎么评价自己的？"></a></span>
                    <p class="blogtext">
                        为了挨打轻一些，问我哪里来的，我瞎说了一个说那个谁家的，结果，打得更凶。最后事情还原了真相，我妈说，你要说说奶奶家的，都不会打你了。从此以后，我知道撒谎是会付出更惨痛的代价的，我不再撒谎，也不喜欢爱撒谎的人。 </p>
                    <p class="bloginfo"><i class="avatar">
                        <script src="/public/static/index/js/thea6.js"></script>
                    </i><span></span><span>2018-11-08</span><span>【<a href="/xd/" target="_blank">设计心得</a>】</span></p>
                    <a href="/xd/24.html" class="viewmore">阅读更多</a></li>


                <li>
                    <h3 class="blogtitle"><a href="/web/wzjs/22.html" target="_blank">【个人博客网站制作】自己不会个人博客网站制作，你会选择用什么博客程序源码？</a>
                    </h3>

                    <p class="blogtext">
                        这些开源的博客程序源码，都是经过很多次版本测试的，都有固定的使用人群。我所知道的主流的博客程序有，Z-blog，Emlog，WordPress，Typecho等，免费的cms系统有，织梦cms（dedecms），phpcms，帝国cms（EmpireCMS）等。 </p>
                    <p class="bloginfo"><i class="avatar">
                        <script src="/public/static/index/js/thea6.js"></script>
                    </i><span></span><span>2018-11-08</span><span>【<a href="/web/wzjs/" target="_blank">网站建设</a>】</span>
                    </p>
                    <a href="/web/wzjs/22.html" class="viewmore">阅读更多</a></li>

                <!--10条 1栏目名称 18最新 5标签id-->
            </ul>
        </div>
        <!--bloglist end-->
    </div>
    <div class="rbox">
        <div class="card">
            <h2>我的名片</h2>
            <p>网名：DanceSmile | 即步非烟</p>
            <p>职业：Web前端设计师、网页设计</p>
            <p>现居：四川省-成都市</p>
            <p>Email：dancesmiling@qq.com</p>
            <ul class="linkmore">
                <li><a href="http://www.yangqq.com" target="_blank" class="iconfont icon-zhuye" title="网站地址"></a></li>
                <li><a href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=476847113@qq.com" target="_blank"
                       class="iconfont icon-youxiang" title="我的邮箱"></a></li>
                <li><a href="http://wpa.qq.com/msgrd?v=3&uin=476847113&site=qq&menu=yes" target="_blank"
                       class="iconfont icon---" title="QQ联系我"></a></li>
                <li id="weixin"><a href="#" target="_blank" class="iconfont icon-weixin" title="关注我的微信"></a><i><img
                        src="/public/static/index/picture/wx.png"></i></li>
            </ul>
        </div>
        <div class="whitebg notice">
            <h2 class="htitle">最近更新</h2>
            <ul>
                <li><a href="/notice/30.html" title="【个人博客空间申请】金牛云服，免费领空间啦" target="_blank">【个人博客空间申请】金牛云服，免费领空间啦</a>
                </li>
                <li><a href="/notice/29.html" title="双十一，阿里云特惠活动，快来领券啦" target="_blank">双十一，阿里云特惠活动，快来领券啦</a></li>
                <li><a href="/notice/28.html" title="第二届 优秀个人博客模板比赛参选活动" target="_blank">第二届 优秀个人博客模板比赛参选活动</a></li>
                <li><a href="/notice/27.html" title="为什么说10月24日是程序员的节日？" target="_blank">为什么说10月24日是程序员的节日？</a></li>
            </ul>
        </div>
        <div class="whitebg paihang">
            <h2 class="htitle">点击排行</h2>
            <section class="topnews imgscale"><a href="/blog/7.html"><img src="/public/static/index/picture/b02.jpg"><span>安静地做一个爱设计的女子</span></a>
            </section>
            <ul>
                <li><i></i><a href="/web/html/14.html" title="十条设计原则教你学会如何设计网页布局!"
                              target="_blank">十条设计原则教你学会如何设计网页布局!</a></li>
                <li><i></i><a href="/xd/23.html" title="作为一个设计师,如果遭到质疑你是否能恪守自己的原则?" target="_blank">作为一个设计师,如果遭到质疑你是否能恪守自己的原则?</a>
                </li>
                <li><i></i><a href="/xd/1.html" title="Come on,行动起来吧!我们和时间来一场赛跑!" target="_blank">Come
                    on,行动起来吧!我们和时间来一场赛跑!</a></li>
                <li><i></i><a href="/notice/27.html" title="为什么说10月24日是程序员的节日？" target="_blank">为什么说10月24日是程序员的节日？</a>
                </li>
                <li><i></i><a href="/notice/26.html" title="个人网站做好了，百度不收录怎么办？来，看看他们怎么做的。" target="_blank">个人网站做好了，百度不收录怎么办？来，看看他们怎么做的。</a>
                </li>
                <li><i></i><a href="/notice/30.html" title="【个人博客空间申请】金牛云服，免费领空间啦"
                              target="_blank">【个人博客空间申请】金牛云服，免费领空间啦</a></li>
                <li><i></i><a href="/web/wzjs/21.html" title="如何快速建立自己的个人博客网站" target="_blank">如何快速建立自己的个人博客网站</a></li>
            </ul>
        </div>
        <div class="whitebg tuijian">
            <h2 class="htitle">站长推荐</h2>
            <section class="topnews imgscale"><a href="/xd/23.html"><img
                    src="/public/static/index/picture/75842f4d1e18d692a66c38eb172a40ab.jpg"><span>作为一个设计师,如果遭到质疑你是否能恪守自己的原则?</span></a>
            </section>
            <ul>

                <li><a href="/web/html/14.html" title="十条设计原则教你学会如何设计网页布局!" target="_blank"><i><img
                        src="/public/static/index/picture/718b56be9dbf920cc0a6124545216654.jpg"></i>
                    <p>十条设计原则教你学会如何设计网页布局!</p>
                </a></li>


                <li><a href="/notice/30.html" title="【个人博客空间申请】金牛云服，免费领空间啦" target="_blank"><i><img
                        src="/public/static/index/picture/56c49531df63eec5ccc3840e68f3ac21.png"></i>
                    <p>【个人博客空间申请】金牛云服，免费领空间啦</p>
                </a></li>


                <li><a href="/notice/29.html" title="双十一，阿里云特惠活动，快来领券啦" target="_blank"><i><img
                        src="/public/static/index/picture/e3d39beb4e61d8545d6fbda2dc7a4b71.png"></i>
                    <p>双十一，阿里云特惠活动，快来领券啦</p>
                </a></li>


                <li><a href="/notice/28.html" title="第二届 优秀个人博客模板比赛参选活动" target="_blank"><i><img
                        src="/public/static/index/picture/372b79556c82ac59a8c46eda53f177c4.jpg"></i>
                    <p>第二届 优秀个人博客模板比赛参选活动</p>
                </a></li>


                <li><a href="/notice/27.html" title="为什么说10月24日是程序员的节日？" target="_blank"><i><img
                        src="/public/static/index/picture/h1.jpg"></i>
                    <p>为什么说10月24日是程序员的节日？</p>
                </a></li>


                <li><a href="/notice/26.html" title="个人网站做好了，百度不收录怎么办？来，看看他们怎么做的。" target="_blank"><i><img
                        src="/public/static/index/picture/h2.jpg"></i>
                    <p>个人网站做好了，百度不收录怎么办？来，看看他们怎么做的。</p>
                </a></li>


                <li><a href="/xd/25.html" title="即便是坑，我也想要拉你入伙！" target="_blank"><i><img
                        src="/public/static/index/picture/ae167e7d81612318949460aad1143e0d.jpg"></i>
                    <p>即便是坑，我也想要拉你入伙！</p>
                </a></li>


            </ul>
        </div>
        <div class="ad whitebg imgscale">
            <ul>
                <a href='http://www.yangqq.com/download/div/917.html' target=_blank><img src='/public/static/index/picture/ad.jpg'></a>
            </ul>
        </div>

        <div class="whitebg wenzi">
            <h2 class="htitle">猜你喜欢</h2>
            <ul>
                <li><a target="_blank" href="/blog/7.html">安静地做一个爱设计的女子</a></li>
                <li><a target="_blank" href="/web/html/14.html">十条设计原则教你学会如何设计网页布局!</a></li>
                <li><a target="_blank" href="/xd/1.html">Come on,行动起来吧!我们和时间来一场赛跑!</a></li>
                <li><a target="_blank" href="/xd/23.html">作为一个设计师,如果遭到质疑你是否能恪守自己的原则?</a></li>
                <li><a target="_blank" href="http://www.css3maker.com/">CSS3 Maker 在线生成代码</a></li>
                <li><a target="_blank" href="/web/wzjs/20.html">个人博客用帝国cms 自定义页面 灵动标签调用网站所有信息</a></li>
                <li><a target="_blank" href="/xd/25.html">即便是坑，我也想要拉你入伙！</a></li>
                <li><a target="_blank" href="/blog/5.html">遇见一个未知的你</a></li>
                <li><a target="_blank" href="/notice/30.html">【个人博客空间申请】金牛云服，免费领空间啦</a></li>
                <li><a target="_blank" href="/web/wzjs/18.html">建站流程篇——教你如何快速学会做网站</a></li>
            </ul>
        </div>
        <div class="ad whitebg imgscale">
            <ul>
                <a href='http://www.yangqq.com/download/div/917.html' target=_blank><img
                        src='/public/static/index/picture/ad02.jpg'></a></ul>
        </div>
        <div class="whitebg tongji">
            <h2 class="htitle">站点信息</h2>
            <ul>
                <li><b>建站时间</b>：2018-10-24</li>
                <li><b>网站程序</b>：帝国CMS7.5</li>
                <li><b>主题模板</b>：<a href="http://www.yangqq.com" target="_blank">《今夕何夕》</a></li>
                <li><b>文章统计</b>：<a href="/time/" target="_blank">31</a>篇文章</li>
                <li><b>标签管理</b>：<a href="/tags.html" target="_blank">标签云</a></li>
                <li><b>统计数据</b>：<a href="/" target="_blank">百度统计</a></li>
                <li><b>微信公众号</b>：扫描二维码，关注我们</li>
                <li class="tongji_gzh"><a href='/' target=_blank><img src="/public/static/index/picture/wxgzh.jpg"></a></li>
            </ul>
        </div>
        <div class="links whitebg">
            <h2 class="htitle">友情链接</h2>
            <ul>
                <li><a href="http://www.yangqq.com" target="_blank">个人博客模板</a></li>
            </ul>
        </div>
    </div>
</article>
<footer>
    <div class="box">
        <div class="wxbox">
            <ul>
                <li><img src="/public/static/index/picture/wxgzh.jpg"><span>微信公众号</span></li>
                <li><img src="/public/static/index/picture/wx.png"><span>我的微信</span></li>
            </ul>
        </div>
        <div class="endnav">
            <p><b>站点声明：</b></p>
            <p>1、本站个人博客模板，均为杨青青本人设计，个人可以使用，但是未经许可不得用于任何商业目的。</p>
            <p>2、所有文章未经授权禁止转载、摘编、复制或建立镜像，如有违反，追究法律责任。举报邮箱：<a
                    href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=HHh9cn95b3F1cHVye1xtbTJ-c3E"
                    target="_blank">dacesmiling@qq.com</a></p>
            <p>Copyright © <a href="http://www.yangqq.com" target="_blank">www.yangqq.com</a> All Rights Reserved.
                备案号：<a href="http://www.miitbeian.gov.cn/" target="_blank">蜀ICP备11002373号-1</a></p>
        </div>
    </div>
    <a href="#">
        <div class="top"></div>
    </a></footer>
</body>
</html>
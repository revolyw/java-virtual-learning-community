<!doctype html>
<html lang="en">
<head>
    <title>Java 虚拟学习社区</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta charset="utf-8" content="charset"/>
    <meta name="description" content="Java 虚拟学习社区"/>
    <meta name="author" content="-_-"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) 调用jquery引擎 -->

    <script type="text/javascript" src="dist/jquery.min.js"></script>

    <!-- bootstrap开源库-->
    <link rel="stylesheet" href="dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/flat-ui.css"/>
    <!-- 自己定制的样式 -->
    <link rel="stylesheet" href="css/public.css"/>
    <style>
        /* CSS Document */
        * {
            margin: 0px;
            padding: 0px;
            font-family: "microsoft YaHei", serif;
            font-size: 14px;
            color: rgb(52, 73, 94);
        }

        .navbar {
            margin: 0px;
        }

        /*页面主体*/
        .floatLeft {
            float: left;
        }

        .blockBorder {
            border: 1px solid #009966;
        }

        .row {
            min-height: 300px;
            margin: 0px;
        }

        .one {
            position: relative;
            width: 100%;
            height: auto;
            background: #000;
            margin: 0;
            padding: 0px;
        }

        .one .banner1 .dots {
            position: absolute;
            left: 0;
            right: 0;
            text-align: center;
            bottom: 20px;
        }

        .one .banner1 .dots li {
            display: inline-block;
            width: 10px;
            height: 10px;
            margin: 0 4px;
            text-indent: -999em;
            border: 2px solid #fff;
            border-radius: 6px;
            cursor: pointer;
            opacity: .4;
            -webkit-transition: background .5s, opacity .5s;
            -moz-transition: background .5s, opacity .5s;
            transition: background .5s, opacity .5s;
        }

        .one .banner1 .dots li.active {
            background: #fff;
            opacity: 1;
        }

        .one .prev {
            position: absolute;
            left: 30%;
            bottom: 5%;
            width: 40px;
            height: 50px;
            background: url(../img/banner_control.png) no-repeat 0 0;
            color: #fff;
            text-align: center;
            line-height: 20px;
        }

        .one .next {
            position: absolute;
            right: 30%;
            bottom: 5%;
            width: 40px;
            height: 50px;
            background: url(../img/banner_control.png) no-repeat -40px 0;
            color: #fff;
            text-align: center;
            line-height: 20px;
        }

        .one .prev:hover {
            background-position: 0 -50px;
        }

        .one .next:hover {
            background-position: -40px -50px;
        }

        .one ul {
            list-style: none;
        }

        .one ul li {
            padding: 0px;
            margin: 0px;
        }

        .one li img {
            width: 100%;
            height: 250px;
        }

        /*
        .two{ position:relative; width:22%; min-height:300px; background:#111; margin:1% 0 1% 1%; padding:0px; }
        .two .banner2{width:100%!important;}
        .two .banner2 .dots { position: absolute; left: 0; right: 0; text-align:center; bottom: 20px;}
        .two .banner2 .dots li{ display: inline-block; width: 10px; height: 10px; margin: 0 4px; text-indent: -999em; border: 2px solid #fff; border-radius: 6px; cursor: pointer; opacity: .4; -webkit-transition: background .5s, opacity .5s; -moz-transition: background .5s, opacity .5s; transition: background .5s, opacity .5s; }
        .two .banner2 .dots li.active{ background: #fff; opacity: 1;}
        .two .prev{ position:absolute; left:5%; bottom:5%; width:40px; height:50px; background:url(../img/banner_control.png) no-repeat 0 0; color:#fff; text-align:center; line-height:20px;}
        .two .next{ position:absolute; right:5%; bottom:5%; width:40px; height:50px; background:url(../img/banner_control.png) no-repeat -40px 0; color:#fff; text-align:center; line-height:20px;}
        .two .prev:hover{background-position:0 -50px;}
        .two .next:hover{background-position:-40px -50px;}
        .two ul{ list-style:none;}
        .two ul li{ padding:0px; margin:0px;}
        .two li img{ width:100%; height:298px;}
        */

        /*.panel-heading{ background:#000!important; }*/
        .panel-title {
            font-family: "Microsoft YaHei";
            color: #000;
        }

        .panel-body {
            height: 250px;
            overflow-y: hidden;
        }

        .panel-body p strong {
            color: #009933;
            font-size: 20px;
        }

        .panel-footer {
            text-align: right; /*background:rgb(15, 116, 99);*/
            background: #000;
        }

        .panel-footer a {
            color: #fff;
            text-decoration: underline;
            font-size: 12px;
        }

        .more {
            position: absolute;
            width: 60px;
            height: 20px;
            right: 6px;
            top: 5px;
        }

        .aboutJava {
            width: 32%;
            min-height: 200px;
            margin: 1% 0 0 1%;
            padding: 37px 21px 0 21px;
            background: url(../img/areaLeft2.jpg) no-repeat -4px -5px;
        }

        .aboutJava .text {
            height: 155px;
            overflow-y: hidden;
            padding: 5px;
        }

        .communityMessage {
            width: 65%;
            min-height: 200px;
            margin: 1% 0 0 1%;
            padding: 0px;
            background: url(../img/areaRight2.jpg) no-repeat -1px -5px;
        }

        .communityMessage > a:not(.more) {
            display: block;
            color: #000;
            text-decoration: none;
            margin: 1.1em 0 0 50px;
        }

        .communityMessage > a:first-child {
            margin-top: 3.1em;
        }

        .communityMessage > a:hover {
            color: Blue;
        }

        .three {
            width: 32%;
            min-height: 300px;
            margin: 1% 0 0 1%;
            padding: 0px;
        }

        .four {
            width: 32%;
            min-height: 300px;
            margin: 1% 0 0 1%;
            padding: 0px;
        }

        .five {
            width: 32%;
            min-height: 300px;
            margin: 1% 0 0 1%;
            padding: 0px;
        }

        .five ul {
            list-style: none;
        }

        .five li a {
            cursor: pointer;
            text-decoration: underline;
            color: #0066CC;
        }

        .five li a::before {
            content: url(../img/download.gif);
            padding-right: 5px;
        }

        .five li a:hover {
            color: Red;
        }
    </style>

    <script type="text/javascript" src="dist/js/bootstrap.min.js"></script>

    <!--
    <script type="text/javascript" src="js/stickUp.min.js"></script>-->
    <!--钉住导航-->

    <script type="text/javascript" src="js/tile-slider.js"></script>

    <!--metro图片展示-->

    <script type="text/javascript" src="js/unslider.min.js"></script>

    <!--轮播-->

    <script type="text/javascript" src="js/jquery.movingboxes.js"></script>

    <!--公用js-->
    <script src="js/public.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!--头部-->
<#assign page="home">
<#include "common/header.ftl">
<!-- 页面主体部分  -->
<div id="wrap">
    <div class="container bodySize">
        <div class="row">
            <div class="one floatLeft col-md-8">
                <div class="banner1">
                    <ul>
                        <li>
                            <img alt="bannerImg" src="img/homeBigPic/mainPic1.jpg"/></li>
                        <li>
                            <img alt="bannerImg" src="img/homeBigPic/mainPic2.jpg"/></li>
                    </ul>
                </div>
                <a href="javascript:void(0);" class="unslider-arrow1 prev"></a> <a href="javascript:void(0);"
                                                                                   class="unslider-arrow1 next"></a>
            </div>
            <!-- 书轮播
            <div class="two floatLeft blockBorder col-md-4">
                <div class="banner2">
                    <ul>
                        <li>
                            <img alt="" src="img/JavaBooks/book1.jpg" /></li>
                        <li>
                            <img alt="" src="img/JavaBooks/book2.jpg" /></li>
                        <li>
                            <img alt="" src="img/JavaBooks/book3.jpg" /></li>
                        <li>
                            <img alt="" src="img/JavaBooks/book4.jpg" /></li>
                        <li>
                            <img alt="" src="img/JavaBooks/book5.jpg" /></li>
                    </ul>
                </div>
                <a href="javascript:void(0);" class="unslider-arrow2 prev"></a> <a href="javascript:void(0);"
                    class="unslider-arrow2 next"></a>
            </div> !-->
            <div class="aboutJava floatLeft panel panel-default col-md-4">
                <div class="text">
                    Java
                    语言诞生于1995年，Java的名字来源于印度尼西亚爪哇岛的英文名称，因盛产咖啡而闻名，Java的标志正是一杯冒着热气的咖啡。Java是一种可以撰写跨平台应用软件的面向对象的程序设计语言，也是目前编程的主流语言。
                </div>
                <a class="more" href="courseIntrod.ftl"><img src="img/little2.jpg"/></a>
            </div>
            <div class="communityMessage floatLeft panel panel-default col-md-4">
                <a class="cmsg_1" href="onDemand.ftl">【视频】最新视频上线，可以点播</a>
                <a class="cmsg_2" href="onDemand.ftl">【通知】交流社区开通，欢迎大家参与交流分享</a>
                <a class="cmsg_3" href="onDemand.ftl">【案例】最新程序设计案例：计算器</a>
                <a class="cmsg_4" href="onDemand.ftl">【通知】学习评价系统，可以在线测验，欢迎点击测试</a>
                <a class="more" href="community.ftl"><img src="img/little2.jpg"/></a>
            </div>
            <div class="three floatLeft panel panel-default col-md-4">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        导学频道</h3>
                </div>
                <div class="panel-body">
                    Java程序设计是计算机专业学生的必修科目，也是学习后续课程的基础。开发本学习社区的初衷正是为了更好地帮助学习者完成Java课程的学习任务。在本社区,同学们可以完成相应知识点的预习、复习；可以反复观看微课点播模块的教学视频，对于不懂的内容，可以在相应的模块下提问，会得到任课教师的解答；还可以在学习评价模块对自己学习效果进行检测；在社区交流模块，还为所有学习者提供了交流讨论的空间。
                </div>
                <div class="panel-footer"><a href="courseIntrod.ftl">查看更多</a></div>
            </div>
            <div class="four floatLeft panel panel-default col-md-4">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        案例精选</h3>
                </div>
                <div class="panel-body">
                    贪吃蛇是一款非常经典的小游戏，玩过贪吃蛇游戏的朋友一定不会陌生了，这款游戏既简单又耐玩。通过控制蛇头方向，尽可能多的吃到东西，每吃一口就能得到一定的积分，使得蛇变长，身子越长玩的难度就越大，不能碰墙，不能咬到自己的身体，更不能咬自己的尾巴，等到了一定的分数，就能过关，然后继续玩下一关。在学习完Java后，我们也可以开发出这样有趣的游戏噢。喜欢贪吃蛇小游戏的朋友们，快来挑战一下吧!
                </div>
                <div class="panel-footer"><a href="practiceTeaching.ftl">查看更多</a></div>
            </div>
            <div class="five floatLeft panel panel-default col-md-4">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        资源下载</h3>
                </div>
                <div class="panel-body">
                    <ul>
                        <li><a href="http://docs.oracle.com/javase/7/docs/" target="_blank">JDK 7.0</a></li>
                        <li>
                            <a href="http://www.oracle.com/technetwork/cn/java/javase/documentation/api-jsp-136079-zhs.html"
                               target="_blank">Java SE API 中文文档</a></li>
                        <li><a href="http://www.oracle.com/technetwork/cn/java/javaee/overview/index.html"
                               target="_blank">Java2EE API 中文文档</a></li>
                        <li><a href="http://www.eclipse.org/downloads/" target="_blank">Eclipse (Java ADT)</a></li>
                        <li><a href="http://maven.apache.org/download.HTTP" target="_blank">Maven</a></li>
                        <li><a href="http://www.mysql.com/downloads/" target="_blank">MySql Database</a></li>
                        <li><a href="https://www.oracle.com/downloads/index.html" target="_blank">Oracle Database</a>
                        </li>
                        <li><a href="http://msdn.itellyou.cn/" target="_blank">各类开发人员工具</a></li>
                    </ul>
                </div>
                <div class="panel-footer"><a
                        href="http://www.oracle.com/technetwork/cn/java/javase/documentation/index.html"
                        target="_blank">查看更多</a></div>
            </div>
        </div>
    </div>
</div>
<!-- 页面主体部分  -->
<#-- 页脚 -->
<#include "common/footer.ftl">

<script type="text/javascript">
    var unslider1 = $('.banner1').unslider({
        speed: 500,               //  The speed to animate each slide (in milliseconds)
        delay: 3000,              //  The delay between slide animations (in milliseconds)
        complete: function () {
        },  //  A function that gets called after every slide animation
        keys: true,               //  Enable keyboard (left, right) arrow shortcuts
        dots: true,               //  Display dot navigation
        fluid: false              //  Support responsive design. May break non-responsive designs
    });
    $('.unslider-arrow1').click(function () {
        var fn = this.className.split(' ')[1];

        //  Either do unslider.data('unslider').next() or .prev() depending on the className
        unslider1.data('unslider')[fn]();
    });

    var unslider2 = $('.banner2').unslider({
        speed: 500,               //  The speed to animate each slide (in milliseconds)
        delay: 3000,              //  The delay between slide animations (in milliseconds)
        complete: function () {
        },  //  A function that gets called after every slide animation
        keys: true,               //  Enable keyboard (left, right) arrow shortcuts
        dots: true,               //  Display dot navigation
        fluid: false              //  Support responsive design. May break non-responsive designs
    });
    $('.unslider-arrow2').click(function () {
        var fn = this.className.split(' ')[1];

        //  Either do unslider.data('unslider').next() or .prev() depending on the className
        unslider2.data('unslider')[fn]();
    });
    window = getQueryString("message");
    function getQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (!r) {
        } else {
            alert(decodeURI(r[2]));
            window.location.search = "";
        }
    }
</script>

</body>
</html>

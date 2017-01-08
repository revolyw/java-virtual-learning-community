﻿<!doctype html>
<html lang="en">
<head>
    <title>知识管理</title>
    <meta http-equiv="Content-Type" content="text/html;"/>
    <meta charset="utf-8"/>
    <meta name="description" content="Java 虚拟学习社区"/>
    <meta name="author" content="yW"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) 调用jquery引擎 -->

    <script src="dist/jquery.min.js"></script>

    <!-- bootstrap开源库-->
    <link rel="stylesheet" href="dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/flat-ui.css"/>
    <!-- 自己定制的样式 -->
    <link rel="stylesheet" href="css/public.css"/>
    <link rel="stylesheet" href="css/knowledge.css"/>

    <script type="text/javascript" src="dist/js/bootstrap.min.js"></script>
    <!--钉住导航-->
<#--<script src="js/stickUp.min.js"></script>-->
    <!--affix插件-->
    <script src="js/affix.js"></script>
    <!--公共js代码-->
    <script src="js/public.js"></script>
</head>
<body>
<form id="Form1">
    <!--页头logo-->
    <div class="container bodySize">
        <div class="demo-headline header">
            <Label ID="display_lg_off" class="show-off" runat="server">
                <ul class="sign-in">
                    <li><a data-toggle="modal" data-target="#LoginModal" href="#">
                        登录
                    </a></li>
                    <li><a data-toggle="modal" data-target="#RegModal" href="#">
                        注册
                    </a></li>
                </ul>
            </Label>
            <Label ID="display_lg_on" class="show-off" runat="server">
                <ul class="sign-in">
                    <li>
                        <Label ID="s_u_name" runat="server" Text="" Style="color: WindowText"><Label>
                    </li>
                    <li>
                        <button ID="loginOff" runat="server">注销</button>
                    </li>
                </ul>
            </Label>
        </div>
        <!--导航-->
        <div class="navbar-inverse">
            <div class="navwrapper navbar-static-top">
                <div class="navbar navbar-inverse">
                    <div class="container">
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li class=""><a href="home.ftl">首页</a></li>
                                <li class="span">&nbsp;&nbsp;</li>
                                <li class=""><a href="courseIntrod.ftl">课程概述</a></li>
                                <li class="span">&nbsp;&nbsp;</li>
                                <li class="active"><a href="knowledge.ftl">知识管理</a></li>
                                <li class="span">&nbsp;&nbsp;</li>
                                <li class=""><a href="onDemand.ftl">微课点播</a></li>
                                <li class="span">&nbsp;&nbsp;</li>
                                <li class=""><a href="evaluation.ftl">学习评价</a></li>
                                <li class="span">&nbsp;&nbsp;</li>
                                <li class=""><a href="practiceTeaching.ftl">实例教学</a></li>
                                <li class="span">&nbsp;&nbsp;</li>
                                <li class=""><a href="community.ftl" target="_blank">社区交流</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 页面主体部分  -->
    <div id="wrap">
        <div class="container bodySize">
            <div id="nav_position">
                <img src="img/icon1.png" style="padding:0 0 5px 5px;"/>
                <ul class="breadcrumb">
                    <li>您的位置：</li>
                    <li><a href="home.ftl">首页</a></li>
                    <li><a href="knowledge.btl" class="active">知识管理</a></li>
                </ul>
            </div>
            <div class="row">
                <div id="catalogue_frame"></div>
                <div class="col-md-3">
                    <div class="sidebar">
                        <div id="toc">
                            <ul class="nav sidenav nav-tabs nav-stacked">
                                <li class="active"><a href="#know-java">了解Java</a></li>
                                <li class=""><a href="#teach-outline">教学大纲</a>
                                    <ul class="nav">
                                        <li><a href="#teach-outline-">大纲1</a></li>
                                        <li><a href="#teach-outline-">大纲2</a></li>
                                        <li><a href="#teach-outline-less">大纲3</a></li>
                                        <li><a href="#teach-outline-">大纲4</a></li>
                                        <li><a href="#teach-outline-grunt">大纲5</a></li>
                                        <li><a href="#teach-outline-">大纲6</a></li>
                                    </ul>
                                </li>
                                <li><a href="#teach-calendar">教学日历</a>
                                    <ul class="nav">
                                        <li><a href="#">1</a></li>
                                    </ul>
                                </li>
                                <li><a href="#test-way">考核方式</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--内容展示-->
                <div class="col-md-9" role="main">
                    <div style="width:100%; min-height:100%;border:1px solid #e8e8e8;padding:3px; box-shadow:-2px 2px 3px #aaa;"
                         class="col-md-9" role="main">
                        <div id="dividing"></div>
                        <div id="content_frame">
                            <img src="img/loading1.gif"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 页面主体部分  -->
    <!-- 固定在底部的页脚 -->
    <div id="footer">
        <div class="container">
            <p class="text-muted text-center">
                Copyright © 2014 njujlxy & Design By yW & Optimize For Web Page By Bootstrap
            </p>
        </div>
    </div>
</form>
</body>
</html>
<script>
    var host = "${host}";
    $(document).ready(function (e) {
        $.ajax({
            type: "post",
            url: host + "/getKnowledgeTree",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {    //待改进，一次数据量太大
                var json = data;
                catalogue(json);
            },
            error: function (err) {
                alert("error");
            }
        });
        function catalogue(json) {
            i = 0;
            var rsString = '';//<div class="top_img"></div>
            rsString += "<ul class='nav sidenav sidenav nav-tabs nav-stacked'>";
            var tmp_num = 0;
            for (i = 0; i < json.length; i++) {
                var id = json[i].id;
                var level = json[i].level;
                var sup = json[i].superLevel;
                var sub_num = json[i].subNum;
                var number = json[i].number;
                var description = json[i].description;
                var content = json[i].content;

                if (level == 1 && sub_num == 0) {
                    rsString += "<li class=''><a id='#" + id + "'href='javascript:void(0);'>" + description + "</a></li>";
                } else if (level == 1 && sub_num != 0) {
                    tmp_num = sub_num;
                    rsString += "<li class=''><a id='#" + id + "'href='javascript:void(0);'>" + description + "</a><ul class='nav father'>";
                } else if (level == 2) {
                    rsString += "<li class='toLink'><a id='" + id + "' href='javascript:void(0);' target='_blank'>" + description + "</a><div class='hidenData' style='display:none'>" + content + "</div></li>";
                    tmp_num--;
                    if (tmp_num == 0) {
                        rsString += "</ul>";
                    }
                }
            }
            rsString += "</ul>";
            $("#toc").html(rsString);
            $(".top_img").css("background", "url(img/top_zsgl.jpg) no-repeat");
            $(".top_img").css("background-size", "100% 100%");

            //左侧目录交互效果
            $("#toc > ul > li > a").click(function (e) {
                e.stopPropagation();
                var currentList = $(this).parent().children("ul.father");
                if (currentList.css("display") == "block") {
                    currentList.slideUp();
                    return true;
                }
                $("#toc > ul > li").removeClass("active");
                $(".father").each(function () {
                    $(this).slideUp();
                });
                currentList.slideToggle();
                $(this).parent().addClass("active");
                return true;
            });

            $("li.toLink").click(function () {
                var content_id = $(this).children("div.hidenData").html();
                var card_name = $(this).children("a").html();
                var dividing = "<div class=\"dividing\"><h2><label class=\"skew\"><i>" + card_name + "</i></label></h2></div>";
                $("#dividing").html(dividing);
                $.ajax({
                    type: "post",
                    url: host + "/getKnowledgeContent",
                    contentType: "application/x-www-form-urlencoded; charset=utf-8",
                    data: {"content_id": content_id},
                    dataType: "json",
                    success: function (data) {    //待改进，一次数据量太大
                        var json = data; //将json字符串转换成json对象
                        $("#content_frame").html(json.content);
                    },
                    error: function (err) {
                        alert("error");
                    }
                });
            });
            $("li.toLink").first().click();//初始数据
        }
    });
</script>

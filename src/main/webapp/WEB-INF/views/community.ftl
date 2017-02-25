<!doctype html>
<html lang="en">
<head>
    <title>Java 论坛</title>
    <meta http-equiv="Content-Type" content="text/html"/>
    <meta charset="utf-8" content="charset"/>
    <meta name="description" content="Java 虚拟学习社区"/>
    <meta name="author" content="yW"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) 调用jquery引擎 -->

    <script src="${host}/dist/jquery.min.js"></script>

    <!-- bootstrap开源库-->
    <link rel="stylesheet" href="${host}/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${host}/css/flat-ui.css"/>
    <!-- 自己定制的样式 -->
    <link rel="stylesheet" href="${host}/css/public.css"/>
    <style>
        *{margin:0px;padding:0px;font-size:12px;}
        input[id="input_search"]::-webkit-input-placeholder{
            color: #fff !important; /* WebKit browsers */
        }
        input[id="input_search"]:-moz-placeholder {
            color: #fff !important; /* Mozilla Firefox 4 to 18 */
        }
        input[id="input_search"]::-moz-placeholder {
            color: #fff !important; /* Mozilla Firefox 19+ */
        }
        input[id="input_search"]:-ms-input-placeholder {
            color: #fff !important; /* Internet Explorer 10+ */
        }
        a:hover{color:#3300CC;}

        .top_bg{ position:absolute; background:url(../img/top2.png) no-repeat; width:1024px; min-height:140px; margin:0 auto; background-position: 55px 25px;}
        .bg{ background:url(../img/community_bg1.png) no-repeat;background-size:100% 100%;}

        #top{position:relative;height:100px; left:0;top:0; margin:80px 0 0 0;padding:15px 0 0 15px;}
        #top .community_top_bkg{position:absolute; top:-80px;left:0; width:100%;height:80px;}
        #top .community_top_bkg img{width:100%;height:100%;}
        .top_logo{position:absolute; padding:2px; top:-60px;left:25px;width:100px;height:100px;}
        .top_logo img{width:100%;height:100%; border-radius:100px;}
        .top_btn{position:absolute; top:-50px; right:25px; width:150px; height:50px; }
        .top_btn a{display:block;border-radius:10px; background:rgba(0,0,0,0.3); text-align:center; color:#fff; font-size:18px;  font-weight:bold; font-family:"Microsoft YaHei";}
        .top_btn a::before{ content: ""; left: 20px;}
        .top_btn a::after{ content: ""; right:20px; }
        .top_btn a:hover{ background:inherit; color:#FF3300;}
        .top_btn a:hover::before,.top_btn a:hover::after{position:absolute;  -webkit-transition:all 500ms; }
        .top_btn a:hover::before{content: "\5B"; left: -20px;}
        .top_btn a:hover::after{content: "\5D"; right:-20px;}
        #search{position:absolute;height:25px;bottom:3px;right:0px;}
        #search input#input_search{float:left;margin:0;width:200px; height:100%;padding:3px 3px 3px 5px; outline:none; background:rgba(0,0,0,0.3); border:none; height:2.1em; border-right:1px solid #fff; color:#fff;}
        #search input#input_search:focus{width:300px; }
        #search input#input_search,#search input#input_search:focus{ -webkit-transition:width 500ms;-moz-transition:width 500ms;-o-transition:width 500ms;transition:width 500ms;}
        #search .search_img{float:left;width:30px;height:2.1em; margin-right:25px; background-size:auto 100%;background: url(../img/search.png) no-repeat 0 -75px;}
        #top ul{position:absolute;list-style:none;height:40%;margin:0;left:0px;bottom:0;}
        #top ul li{float:left;width:100px;padding:5px;text-align:center;vertical-align:middle;height:100%;color:#0092FF;font-size:18px;font-family:"微软雅黑";}
        #top ul .active{color:#FF3300; border-bottom-width:0px;}
        #top ul li:hover{cursor:pointer;color:#FF3300;}
        #top ul li:hover::before, #top ul li:hover::after { position: absolute;-webkit-transition:all 500ms;-moz-transition:all 500ms; -o-transition:all 500ms; }
        #top ul li::before { content: ""; left: 0px; }
        #top ul li::after  { content: ""; right:0px; }
        #top ul li:hover::before { content: "\5B"; left: 20px; }
        #top ul li:hover::after  { content: "\5D"; right:20px; }

        /*bottom container*/
        #bottom{margin-left:2.5%; width:95%;min-height:500px;background:rgba(0,0,0,0.3);padding:20px;}
        #bottom ul{width:100%;min-height:100%;list-style:none;}
        #bottom ul li{position:relative;height:120px;padding:1%;background:#fff;/*rgba(255,255,255,0.7);*/margin:0 0 10px 0;border:1px solid #009999;border-radius:15px;}
        #bottom ul li > div{float:left;}
        .tie_left{width:10%;height:100px;}
        .tie_center{width:62%;height:100px;margin:0 0 0 1%;padding:1%;}
        .tie_right{width:25%;height:100px;margin:0 0 0 1%;padding:1%;}
        .tie_left hot{position:relative;width:10%;height:100%;}
        .tie_center .tie_center_top{height:23%;margin:0 0 1% 0;padding:0 0 0 1%;}
        .tie_center .tie_center_bottom{height:75%;padding:1%;}
        .tie_right .tie_right_top{height:23%;margin:0 0 2.5% 0;padding:0 0 0 2.5%;}
        .tie_right .tie_right_bottom{height:75%;padding:2.5%;}
        .hot span{display:block;color:Red;font-size:20px;text-align:center;line-height:100px;}
        /*发帖div*/
        .div_fatie{margin:0 10% 0 10%; width: 80%;}
        .div_fatie h1{color:#fff;}
        .div_fatie input,.div_fatie textarea,.div_fatie div{display:block;width:100%;margin:0 0 10px 0;font-family:"Microsoft YaHei";font-size:12px;padding:5px; border-radius:10px;}
        /*具体帖子*/
        .linkTo_title{font-size: 20px; color: rgb(45, 100, 179);}
        .linkTo_title:hover{cursor:pointer; text-decoration:underline;}
        .displayNone{display:none;}
        .reversal{display:block!important;padding:50px 0 100% 0;z-index:1000!important;background:rgba(0,0,0,0.5)!important;transform: rotate(360deg);-moz-transform: rotate(360deg);-webkit-transform: rotate(360deg);transition: 1s;}

        .opacity{position:absolute;top:0;left:0;z-index:-1;width:100%;min-height:100%;background:rgba(245,245,245,0.5);}
        .opacity .decorate_left_top{position:absolute; left:19%;top:30px; z-index:1005; width:50px; height:50px; background:url(../img/communityLogo.png) no-repeat; border-radius:100px; background-size:100% 100%;}

        .scrollToTop{position:fixed;right:20px;bottom:20px;z-index:2000;}
        .close{position:absolute;right:0px;top:0px;width:30px;height:30px;background:url("../img/close1.png") no-repeat 50% 50%;}


        .view_tiezi_liuyan{	position:fixed; right:20px;bottom:70px; line-height:1.5em; font-size:15px; z-index:2000;}
        .view_tiezi_back{position:fixed; right:20px;bottom:120px; line-height:1.5em; font-size:15px; z-index:2000;}

        .view_tiezi {position:relative;z-index:inherit; width:60%; min-height:100%; max-height:1000px; height:auto; margin:0 auto; background:#fff;  border-radius:20px 0px; border:1px solid #e8e8e8; overflow:scroll; overflow-x:hidden; padding:5px;}

        .view_tiezi li{ position:relative; margin:2px;border-bottom:1px dotted rgb(233, 233, 235);padding:10px 0 10px 100px; }

        .view_tiezi .view_tiezi_head{position:relative;min-height:40px; margin:2px;border-bottom:1px solid #e8e8e8;padding:0 0 0 100px; }
        .view_tiezi .view_tiezi_head .view_tiezi_head_title{position:absolute; bottom:0; font-size:20px; line-height:2em; color:#009966;}

        .view_tiezi a{display:inline-block;}
        .view_tiezi a:hover{cursor:pointer;text-decoration:underline;}
        .view_tiezi li img{ position:absolute;top:10px;left:6px; width:80px;height:80px; border-radius:100px;}
        .view_tiezi li .view_tiezi_uname{position:absolute;top:100px;left:12px; text-align:center;}

        .view_tiezi li .view_tiezi_content{width:95%;min-height:120px;top:0;left:100px;word-wrap: break-word;}


        .view_tiezi li .view_tiezi_contentBottom{position:relative; width:95%;min-height:0px;margin:0px;padding:25px 0 0 0;}
        .view_tiezi li .div_replay{position:relative; width:95%;min-height:0px;}
        .view_tiezi li .view_tiezi_loushu{position:absolute;right:210px;top:5px;}
        .view_tiezi li .view_tiezi_time{position:absolute;right:70px;top:5px;}
        .view_tiezi li .view_tiezi_reply{position:absolute;right:0px;top:5px;color:#2d64b3; padding:0 8px; text-decoration:underline;}
        .view_tiezi li .view_tiezi_replyClicked{background:#f0f1f2;}

        .view_tiezi li .view_tiezi_contentBottom ul{width:100%;display:block; padding:1%; background:#f0f1f2; list-style:none;}
        .view_tiezi li .view_tiezi_contentBottom ul li{ position:relative; width:100%;min-height:60px;height:auto; border-bottom:1px dotted #5cd;padding:1% 15px 20px 55px;}
        .view_tiezi li .view_tiezi_contentBottom ul li img{ position:absolute; width:40px;height:40px; display:block;}
        .view_tiezi li .view_tiezi_contentBottom ul li a span{margin-right:5px;line-height:20px; color:#2d64b3;}
        .view_tiezi li .view_tiezi_contentBottom ul li span{ word-wrap:break-word; white-space:normal;}
        .view_tiezi li .view_tiezi_contentBottom ul li span.reply_tail_time{position:absolute; bottom:0px;right:50px;}
        .view_tiezi li .view_tiezi_contentBottom ul li span.reply_tail_btn{position:absolute; bottom:0px;right:20px; cursor:pointer; text-decoration:underline; color:#0449be;}
        .view_tiezi .viwe_tiezi_commentarea{width:100%;height:100px;margin:50px 0 0 0;}


        /*回复分页区域*/
        .replys .pagingArea{min-height:100%; margin-top:0px;}
        .replys .pagingArea .pagingArea_content{padding:0 0 5px 0;}
        .div_reply { width:95%;}
    </style>

    <script src="${host}/dist/js/bootstrap.min.js"></script>

    <!--钉住导航-->
    <!--
    <script src="js/stickUp.min.js"></script>-->
    <!--affix插件-->

    <script src="${host}/js/affix.js"></script>

    <!--自定义js代码-->

    <script src="${host}/js/public.js"></script>
    <script type="text/javascript" src="${host}/js/pageTool.js"></script>
</head>
<body>
<div class="btn btn-default view_tiezi_back displayNone">
    返回
</div>
<div class="btn btn-danger view_tiezi_liuyan displayNone">
    评论
</div>
<div class="btn btn-primary scrollToTop">
    回顶
</div>
<div class="opacity">
    <div class="decorate_left_top"></div>
    <div class="view_tiezi displayNone">
    </div>
</div>
<!--页头logo--><!--
    <div class="container bodySize">
        <div class="demo-headline header">
            <label id="display_lg_off" class="show-off" >
	                    <ul class="sign-in">
		                    <li><a data-toggle="modal" data-target="#LoginModal" href="#">
			                	登录
		                        </a></li>
	                    	<li><a data-toggle="modal" data-target="#RegModal" href="#">
			                	注册
		                        </a></li>
	                    </ul>
            </label>
            <label id="display_lg_on" class="show-off" >
                <ul class="sign-in">
                    <li>
                        <label id="s_u_name"  Text="" Style="color: WindowText"></label>
                    </li>
                    <li>
                        <button id="loginOff" >注销</button>
                    </li>
                </ul>
            </label>
        </div>
<!-- 页面主体部分  -->
<div id="wrap">

    <div class="bg container bodySize">
        <div class="top_bg"></div>
        <div id="top" class="col-md-12">
            <!--<div class="community_top_bkg"><img src="img/community_top.jpg" /></div>-->
            <ul>
                <li id="nav_kantie" class="active">看帖</li>
                <li id="nav_fatie">发帖</li>
                <li id="nav_dongtai">动态</li>
            </ul>
            <div id="search">
                <input id="input_search" type="text" placeholder="帖子搜索"/>
                <a href="javascript:void(0);" class="search_img"></a>
            </div>
            <div class="top_logo">
                <a href="home.ftl"><img src="img/communityLogo.png" style="border:1px solid #e8e8e8;"/></a>
            </div>
            <div class="top_btn"><a href="home.ftl">去社区学习</a></div>
        </div>
        <div id="bottom" class="col-md-12">
            <ul>
                <!--<li>
                    <div class="tie_left">
                        <div class="hot">
                            <span class="hot_txt">2048</span>
                        </div>
                    </div>
                    <div class="tie_center">
                        <div class="tie_center_top">
                            <span id="title_txt">J2EE中过滤器的用法</span>
                        </div>
                        <div class="tie_center_bottom">
                            <span id="tie_main">J2EE中的过滤器到底该如何使用呢？ 今天我们就来探讨一下，这里是这片帖子的摘要</span>
                        </div>
                    </div>
                    <div class="tie_right">
                        <div class="tie_right_top">
                            <span id="user_txt">骑大象抢内衣</span>
                        </div>
                        <div class="tie_right_bottom">
                            <span id="time_txt">2015-04-08 14:00</span>
                        </div>
                    </div>
                </li>-->
                <li style="line-height:100px; text-align:center;">
                    <img src="img/loading1.gif"/>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- 页面主体部分  -->
<#-- 页脚 -->
<#include "common/footer.ftl">
</body>
<script>
    var host = "${host}";
    $(document).ready(function () {
        //导航交互
        $("#top ul li").click(function () {
            $("#top ul li").each(function () {
                $(this).removeClass("active");
            });
            $(this).addClass("active");
        });

        //看帖模块
        $("#nav_kantie").click(function () {
            var pageSize = 5;
            var submitParam = 'pageSize=' + pageSize;
            $.ajax({
                type: "post",
                cache: false,
                url: host + "/getThemes",
                dataType: "json",
                data: submitParam,
                success: function (data) {
                    var json = data;
                    if (json == "" || null == json || undefined == json) {
                        $("#bottom").html("暂时没有帖子，您可以尝试第一个发帖！");
                        return;
                    }
                    //构造分页对象
                    var msgPageTool = new pageTool(json, pageSize, 5);
                    //初始化
                    msgPageTool.init($("#bottom"), getOnePageTiezi, openOneTiezi);
                },
                error: function (error) {
                    alert("error");
                }
            });
        });

        //发帖模块
        $("#nav_fatie").click(function () {
            var htmlStr = "<div class=\"div_fatie\">";
            htmlStr += "<h1>发帖</h1>";
            htmlStr += "<input id=\"fatie_title\" type=\"text\" placeholder=\"标题\" />";
            htmlStr += "<textarea id=\"fatie_content\" rows=\"10\" placeholder=\"帖子内容\" ></textarea>";
            htmlStr += "<div id=\"btn_fatie\" class=\"btn btn-primary\">发帖</div>";
            htmlStr += "</div>";
            $("#bottom").html(htmlStr);
            $("#btn_fatie").click(function () {
                var title = $("#fatie_title").val();
                var content = $("#fatie_content").val();
                $.ajax({
                    type: "post",
                    url: "community.ftl/fatie",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: "{title:\"" + title + "\",content:\"" + content + "\"}",
                    success: function (data) {
                        var json = eval("(" + data.d + ")"); //将json字符串转换成json对象
                        if (json == "1") {
                            $("#nav_kantie").click();
                        } else if (json == "-1") {
                            alert("请先登陆");
                        } else {
                            alert("发送失败");
                        }
                    },
                    error: function (err) {
                        alert("error");
                    }
                });
            });
        });
        //个人动态模块
        $("#nav_dongtai").click(function () {
        });

        //默认显示看帖模块
        $("#nav_kantie").click();

        //启用具体帖子中的三个功能按钮
        btnClick();

    });

    //看具体贴块的交互效果
    function opacityToggleClass() {
        $(".opacity").toggleClass("reversal");
        $(".view_tiezi").toggleClass("displayNone");
//    $(".scrollToTop").toggleClass("displayNone");
        $(".view_tiezi_liuyan").toggleClass("displayNone");
        $(".view_tiezi_back").toggleClass("displayNone");
    }

    //获得一页帖子
    function getOnePageTiezi(Data) {
        var htmlStr = "<ul>";
        for (var i = 0; i < Data.length; i++) {
            htmlStr += "<li>" +
                    "<div class=\"tie_left\">" +
                    "<div class=\"hot\">" +
                    "<span class=\"hot_txt\">" + Data[i].hotIndex + "</span>" +
                    "</div>" +
                    "</div>" +
                    "<div class=\"tie_center\">" +
                    "<div class=\"tie_center_top\">" +
                    "<span id=\"title_txt\"><a class=\"linkTo_title\" linkid=\"" + Data[i].id + "\">" + Data[i].title + "</a></span>" +
                    "</div>" +
                    "<div class=\"tie_center_bottom\">" +
                    "<span id=\"tie_main\">" + Data[i].content + "</span>" +
                    "</div>" +
                    "</div>" +
                    "<div class=\"tie_right\">" +
                    "<div class=\"tie_right_top\">" +
                    "<span id=\"user_txt\">" + Data[i].uName + "</span>" +
                    "</div>" +
                    "<div class=\"tie_right_bottom\">" +
                    "<span id=\"time_txt\">" + Data[i].time + "</span>" +
                    "</div>" +
                    "</div>" +
                    "</li>";
        }
        htmlStr += "</ul>";
        return htmlStr;
    }
    //打开具体帖子
    function openOneTiezi(pagingTool) {
        var pagingAreaDomObj = pagingTool.pagingAreaDomObj;
        pagingAreaDomObj.find(".linkTo_title").click(function () {
            opacityToggleClass();
            currentTieziId = $(this).attr("linkId");
            LinkToDiezi(currentTieziId);
        });
    }

    //////全局数据
    var currentTieziId;//当前帖子
    //获得具体帖子的信息
    function LinkToDiezi(currentTieziId) {
        var pageSize = 4;
//    $(".scrollToTop").click();
        $.ajax({
            type: "post",
            url: host + "/getOneTheme",
            dataType: "json",
            data: "themeid=" + currentTieziId + "&pageSize=" + pageSize,
            success: function (data) {
                var json = data;
                var htmlStr = "";
                htmlStr += "<ul>";
                htmlStr += "<li class=\"view_tiezi_head\"><span class=\"view_tiezi_head_title\" theme_id=\"" + json[0].id + "\">" + json[0].title + "</span><div class=\"close\"></div></li>";
                htmlStr += "<li><div class=\"view_tiezi_content\">" + json[0].content + "</div><a><img src=\"img/big_touxiang.jpg\"/><span class=\"view_tiezi_uname\">" + json[0].uName + "</span></a><div class=\"view_tiezi_contentBottom\"><span class=\"view_tiezi_loushu\">1楼</span><span class=\"view_tiezi_time\">" + json[0].time + "</span></li>";
                htmlStr += "</ul>";
                htmlStr += "<div class=\"view_tiezi_comments\"></div>"
                htmlStr += "<textarea class=\"viwe_tiezi_commentarea\" placeholder=\"评论\"></textarea><div class=\"btn btn-info btn_comment_submit\" style=\"width:100%\">提交</div>";
                $(".view_tiezi").html(htmlStr);

                //构造分页对象
                var pgt = new pageTool(json[1], pageSize, 5);
                pgt.init($(".view_tiezi_comments"), getOnePageComments, onePageCommentsInit);

                //评论提交
                commentSubmit();
                //关闭帖子视图按钮
                $(".close").click(function () {
                    opacityToggleClass();
                });


            },
            error: function (err) {
                $(".view_tiezi").html("get data error！！");
            }
        });
    }

    //评论提交
    function commentSubmit() {
        $(".btn_comment_submit").click(function () {
            var submitString = $(this).prev(".viwe_tiezi_commentarea").val();
            var theme_id = $(".view_tiezi_head_title").attr("theme_id");
            var parameter = "{theme_id:\"" + theme_id + "\",submitString:\"" + submitString + "\"}";
            $.ajax({
                type: "post",
                url: "community.ftl/commentSubmit",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: parameter,
                success: function (data) {
                    var json = eval("(" + data.d + ")");
                    if (json == "1") {//留言成功
                        LinkToDiezi(currentTieziId);//刷新留言列表
                        //刷新帖子热度信息（界面）
                        $("#bottom li").each(function () {
                            if ($(this).children().find(".linkTo_title").attr("linkid") == theme_id) {
                                var hotObject = $(this).children().find(".hot_txt");
                                var hotString = hotObject.html();
                                hotString = (parseInt(hotString) + 1) + "";
                                hotObject.html(hotString);
                            }
                        });
                    } else if (json == "-1") {
                        alert("请先登陆");
                    } else {
                        alert("评论失败");
                    }
                },
                error: function (err) {
                    alert("get data error！！");
                }
            });
        });
    }

    //获得一页评论html字符串
    function getOnePageComments(Data) {
        var htmlStr = "<ul>";
        var j = 0;
        for (var i = 0; i < Data.length; i++, j++) {
            htmlStr += "<li comid=\"" + Data[i].id + "\">";
            htmlStr += "<div class=\"view_tiezi_content\">" + Data[i].content + "</div>";
            htmlStr += "<a><img src=\"img/big_touxiang.jpg\"/><span class=\"view_tiezi_uname\">" + Data[i].fromUId + "</span></a>";
            htmlStr += "<div class=\"view_tiezi_contentBottom\">";
            htmlStr += "<span class=\"view_tiezi_loushu\">" + (j + 2) + "楼</span><span class=\"view_tiezi_time\">" + Data[i].time + "</span><a class=\"view_tiezi_reply\">回复<span>(" + Data[i].replyNum + ")</span></a>";
            htmlStr += "<div style=\"display:none\" class=\"replys\">";
            htmlStr += "</div>";
            htmlStr += "</div>";
            htmlStr += "<div class=\"div_reply\" style=\"display:none\"><textarea style=\"width:100%;height:80px;\" to=\"" + Data[i].toUId + "\" placeholder=\"回复 " + Data[i].fromUId + "\"></textarea><div class=\"btn btn-info btn_reply\" style=\"width:100%\">回复</div></div>";
            htmlStr += "</li>";
        }
        htmlStr += "</ul>";
        return htmlStr;
    }

    //每页评论的初始化工作
    function onePageCommentsInit(pagingTool) {
        var pagingAreaDomObj = pagingTool.pagingAreaDomObj;
        //加载每条评论的回复
        pagingAreaDomObj.find(".replys").each(function () {
            var commentId = $(this).closest("li").attr("comid");
            loadReplys(commentId, $(this));
        });
        //回复块交互效果
        replyInterAction(pagingAreaDomObj);
    }

    //加载一条评论所有回复
    function loadReplys(commentId, div_replysArea) {
        var pageSize = 3;
        var submitParam = 'commentid=' + commentId + '&pageSize=' + pageSize;
        $.ajax({
            type: "post",
            async: false,
            url: host + "/getReplys",
            dataType: "json",
            data: submitParam,
            success: function (data) {
                var json = data;
                var pgt = new pageTool(json, pageSize, 5);
                pgt.init(div_replysArea, getOnePageReplys, listeningReply);
            },
            error: function (err) {
                alert("get data error！！");
            }
        });
    }
    //获取一页回复的html字符串
    function getOnePageReplys(Data) {
        var htmlStr = "";
        htmlStr += "<ul>";
        for (var i = 0; i < Data.length; i++) {
            htmlStr += "<li><a><img src=\"img/small_touxiang.jpg\"/><span>" + Data[i].fromName + "</span></a><code>回复 " + Data[i].toName + "：</code><span>" + Data[i].content + "</span><span class=\"reply_tail_time\">" + Data[i].time + "</span><span class=\"reply_tail_btn\" to=\"" + Data[i].fromUId + "\">回复</span></li>";
        }
        htmlStr += "</ul>";
        return htmlStr;
    }
    //对回复当前页中的每个回复按钮监听
    function listeningReply(pageTool) {
        var pagingAreaDomObj = pageTool.pagingAreaDomObj;
        var commentId = pagingAreaDomObj.closest("li").attr("comid");
        //此处pagingAreaDomObj为每个回复区域的容器即replys
        pagingAreaDomObj.find(".reply_tail_btn").click(function () {
            var to_uid = $(this).attr("to");
            var to_uname = $(this).siblings("a").children("span").html();
            $(this).closest(".view_tiezi_contentBottom").next(".div_reply").find("textarea").attr("to", to_uid);
            $(this).closest(".view_tiezi_contentBottom").next(".div_reply").find("textarea").attr("placeholder", "回复 " + to_uname);//修改回复框中的提示信息
        });

    }
    //回复块交互
    function replyInterAction(pagingAreaDomObj) {
        pagingAreaDomObj.find(".view_tiezi_reply").click(function (event) {
            event.stopPropagation();
            $(this).next().slideToggle();
            $(this).parent().next().slideToggle();
            $(this).toggleClass("view_tiezi_replyClicked");
        });
        //回复操作
        pagingAreaDomObj.find(".btn_reply").click(function () {
            var toId = $(this).prev().attr("to");
            var commentId = $(this).closest("li").attr("comid");
            var textArea = $(this).prev();
            var content = textArea.val();
            var div_replysArea = $(this).parent().prev().find(".replys");
            var submitParam = '{toId:"' + toId + '",commentId:"' + commentId + '",content:"' + content + '"}';
            $.ajax({
                type: "post",
                url: "community.ftl/reply",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: submitParam,
                success: function (data) {
                    var json = eval("(" + data.d + ")");
                    if (json == "1") {//回复成功
                        loadReplys(commentId, div_replysArea);//刷新回复列表
                    } else if (json == "-1") {
                        alert("请先登陆");
                    }
                    else {
                        alert("回复失败!");
                    }
                    textArea.val("");//清空输入框
                },
                error: function (err) {
                    alert("get data error！！");
                }
            });
        });
    }


    //固定在右下角的三个按钮
    function btnClick() {
        //去底部留言
        $(".view_tiezi_liuyan").click(function () {
            $(".view_tiezi").animate({
                scrollTop: "+=" + $(".view_tiezi").height(),
            }, 500);
            window.scrollTo(0, ($("body").height() - $(".viwe_tiezi_commentarea").height()));
        });
        //回顶部
        $(".scrollToTop").click(function () {
            $("body").animate({
                scrollTop: 0,
            }, 500);
        });
        //关闭按钮
        $(".view_tiezi_back").click(function () {
            $(".close").click();
        });
    }
</script>
</html>

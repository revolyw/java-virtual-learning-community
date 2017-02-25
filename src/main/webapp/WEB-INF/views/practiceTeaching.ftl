<!doctype html>
<html lang="en">
<head>
    <title>实验教学</title>
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
    <style>
        *{font-size: 12px; color:#000;}
        .row
        #sub_bright{padding :0 0 30px 5px; min-height: 960px; width: 750px; float: left; height: 960px;}
        #LastContent1{width:1024px;min-height:100%;padding:20px 5%;background:#eee; color:#09935F;background-size:1024px 100%;}
        ul{padding:0px; margin:0px; list-style-type: none;}
        #big_ulist{width:100%;min-height:350px; margin:0 auto;}
        #big_ulist li{list-style-type: none; width: 295px; height: 160px; padding: 5px 0 0 5px;  background:#fff; border-radius:20px; box-shadow:5px 5px 5px #ccc;margin:0 10px 10px 0; float: left; list-style-image: none;}
        #big_ulist li:hover{color:#000!important; background:#00C671!important;}
        #big_ulist li .li-up{width:100%;height:45%;padding:5px 4% 5px 5px;}
        #big_ulist li .li-up a:hover{color:#2f4154!important;}
        #big_ulist .li-up img{width:33%;height:100%;}
        #big_ulist li .li-down{width:100%;height:45%;padding:5px 4% 5px 5px;}
        #big_ulist .uinfo{line-height: 150%;max-width:60%;width:auto;height:100%; float: right;}
        /*分页样式调整*/
        .pagingArea{width:1024px; min-height:100%;}
        .pagingArea .pagingArea_index{right:14%;}
    </style>

    <script src="dist/js/bootstrap.min.js"></script>

    <!--affix插件-->

    <script src="js/affix.js"></script>

    <script src="js/public.js"></script>
    <script type="text/javascript" src="js/pageTool.js"></script>
</head>
<body>
<!--头部-->
<#assign page="practice">
<#include "common/header.ftl">
<!-- 页面主体部分  -->
<div id="wrap">
    <div class="container bodySize">
        <div id="nav_position" style="margin-bottom:0;border-bottom:1px solid #eee;">
            <img src="img/icon1.png" style="padding:0 0 5px 5px;"/>
            <ul class="breadcrumb" style="display:inline; padding:0; background:#f5f5f5;">
                <li>您的位置：</li>
                <li><a href="home.ftl">首页</a></li>
                <li><a href="practiceTeaching.ftl" class="active">实例教学</a></li>
            </ul>
        </div>
        <div class="row container" style="padding:0;">
            <div id="LastContent1">
                <ul id="big_ulist">
                    <li>
                        <img src="img/loading1.gif"/>
                        <!--
                            <div class="li-up">
                                <a href="resource/practice/practice_01.htm" target='_blank'>
                                    <img src="resource/practice/practice_01.files/image001.jpg"><div class="uinfo">
                                        <strong>画板</strong><br>
                                        <span class="gray">上传时间</span> 2012-03-04 23:38:12</div>
                                </a>
                            </div>
                            <div class="li-down">
                                Java 小程序——画板</div>-->
                    </li>
                </ul>
                <!-- END AllUser -->
            </div>
        </div>
    </div>
</div>
</div>
<!-- 页面主体部分  -->
<#-- 页脚 -->
<#include "common/footer.ftl">
</body>
<script>
    var host = "${host}";
    $(document).ready(function (e) {
        var pageSize = 6;
        var submitParam = 'pageSize=' + pageSize;
        var div_pgArea = $("#LastContent1");
        $.ajax({
            type: "post",
            url: host + "/getPractices",
            dataType: "json",
            data: submitParam,
            success: function (data) {
                var json = data;

                var pgObj = new pageTool(json, pageSize, 5);
                pgObj.init(div_pgArea, getOnePagePrc, initPerPgAction);
            },
            error: function (err) {
                alert("error");
            }
        });
    });

    //获取一页实验教学内容
    function getOnePagePrc(Data) {
        i = 0;
        var htmlStr = '<ul id="big_ulist">';
        var tmp_num = 0;
        for (i = 0; i < Data.length; i++) {
            var id = Data[i].id;
            var title = Data[i].title;
            var description = Data[i].description;
            var type = Data[i].type;
            var img_url = Data[i].imgUrl;
            var link_url = Data[i].linkUrl;
            var uploadTime = Data[i].uploadTime;
            htmlStr += "<li>"
                    + "<div class='li-up'><a href='resource/practice/" + link_url + "' target='_blank'><img src='resource/practice/" + img_url + "'><div class='uinfo'><strong>" + title + "</strong><br><span class='gray'>上传时间</span>" + uploadTime + "</div></a></div>"
                    + "<div class='li-down'>" + description + "</div>" +
                    "</li>";
        }
        htmlStr += "</ul>";
        return htmlStr;
    }
    //初始化每页的交互效果及操作
    function initPerPgAction(pgTool) {/*换成css控制
    var pgAreaObj = pgTool.pagingAreaDomObj;
    pgAreaObj.find("#big_ulist li").mouseover(function(){
        $(this).css("background","#6CD9AA");
        $(this).css("color","#fff");
    });
    pgAreaObj.find("#big_ulist li").mouseout(function(){
        $(this).css("background","#fff");
        $(this).css("color","#09935F");
    });*/
    }

</script>
</html>

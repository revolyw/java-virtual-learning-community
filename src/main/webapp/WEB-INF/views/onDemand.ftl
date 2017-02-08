<!doctype html>
<html lang="en">
<head>
    <title>微客点播</title>
    <meta http-equiv="Content-Type" content="text/html;"/>
    <meta charset="utf-8"/>
    <meta name="description" content="Java 虚拟学习社区"/>
    <meta name="author" content="willow"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) 调用jquery引擎 -->

    <script src="dist/jquery.min.js"></script>

    <!-- bootstrap开源库-->
    <link rel="stylesheet" href="dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/flat-ui.css"/>
    <!-- 自己定制的样式 -->
    <link rel="stylesheet" href="css/public.css"/>
    <link rel="stylesheet" href="css/onDemand.css"/>

    <script type="text/javascript" src="dist/js/bootstrap.min.js"></script>

    <!--
<script src="js/stickUp.min.js"></script><!--钉住导航-->

    <script src="js/affix.js"></script>

    <!--affix插件-->

    <script src="js/public.js"></script>

    <script type="text/javascript" src="js/pageTool.js"></script>

    <script src="js/onDemand.js"></script>

</head>
<body>
<form id="Form1" runat="server">
    <!--页头logo-->
    <div class="container bodySize">
        <div class="demo-headline header">
            <asp:Label ID="display_lg_off" class="show-off" runat="server">
                <ul class="sign-in">
                    <li><a data-toggle="modal" data-target="#LoginModal" href="#">
                        登录
                    </a></li>
                    <li><a data-toggle="modal" data-target="#RegModal" href="#">
                        注册
                    </a></li>
                </ul>
            </asp:Label>
            <asp:Label ID="display_lg_on" class="show-off" runat="server">
                <ul class="sign-in">
                    <li>
                        <asp:Label ID="s_u_name" runat="server" Text="" Style="color: WindowText"></asp:Label>
                    </li>
                    <li>
                        <asp:LinkButton ID="loginOff" runat="server">注销</asp:LinkButton>
                    </li>
                </ul>
            </asp:Label>
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
                                <li class=""><a href="knowledge.ftl">知识管理</a></li>
                                <li class="span">&nbsp;&nbsp;</li>
                                <li class="active"><a href="onDemand.ftl">微课点播</a></li>
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
                    <li><a href="courseIntrod.ftl" class="active">微课点播</a></li>
                </ul>
            </div>
            <div class="row">
                <div id="catalogue_frame">
                </div>
                <div class="col-md-3">
                    <div class="sidebar ">
                        <div id="toc">
                            <ul class="nav sidenav sidenav nav-tabs nav-stacked">
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
                    <div id="content_frame" class="col-md-9" role="main">
                        <div id="video_object">
                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
                                    codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                                    width="700" height="500">
                                <param name="movie" value="Flvplayer.swf"/>
                                <param name="quality" value="high"/>
                                <param name="AutoStart" value="true">
                                <param name="auto" value="true"/>
                                <param name="allowFullScreen" value="true"/>
                                <param name="FlashVars"
                                       value="vcastr_file=demo.flv&LogoText=iopen.com.cn&BufferTime=3"/>
                                <embed src="resource/video/Flvplayer.swf" allowfullscreen="true"
                                       flashvars="vcastr_file=video_1_1.mp4"
                                       quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"
                                       type="application/x-shockwave-flash"
                                       width="700" height="500"></embed>
                            </object>
                            </br>
                        </div>
                        <div id="teacher_info">
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
<script>
    var host = "http://java.willowspace.net";
    $(document).ready(function(e){
        //导航交互效果
        $("ul.sidenav li").click(function(){
            $("ul.sidenav li").each(function(){$(this).removeClass("active");});
            $(this).addClass("active");
        });
        $.ajax({
            type: "post",
            url: host+"/getVideos",
            contentType: "application/x-www-form-urlencoded; charset=utf-8",
            dataType: "json",
            success: function(data) {
                var json = data; //将json字符串转换成json对象
                catalogue(json);
            },
            error: function(err) {
                alert("error");
            }
        });

    });


    function catalogue(json){
        i=0;
        var rsString ='';//<div class="top_img"></div>
        rsString += "<ul class='nav sidenav nav-tabs nav-stacked'>";
        var tmp_num = 0;
        for(i = 0;i<json.length;i++){
            var id = json[i].id;
            var level = json[i].level;
            var sup = json[i].superLevel;
            var sub_num = json[i].subNum;
            var number = json[i].number;
            var video_name = json[i].videoName;
            var description = json[i].description;
            var link_url = json[i].linkUrl;

            if(level == 1 && sub_num == 0){
                rsString += "<li class=''><a id='#"+id+"'href='javascript:void(0);'>"+video_name+"</a></li>";
            }else if(level == 1 && sub_num != 0){
                tmp_num = sub_num;
                rsString += "<li class=''><a id='#"+id+"'href='javascript:void(0);'>"+video_name+"</a><ul class='nav father'>";
            }else if(level == 2){
                rsString += "<li class='toLink'><a id='"+id+"' href='javascript:void(0);'>"+video_name+"</a><div class='hideData' style='display:none'>"+link_url+"</div></li>";
                tmp_num--;
                if(tmp_num == 0){
                    rsString +="</ul>";
                }
            }
        }
        rsString += "</ul>";
        $("#toc").html(rsString);
        $(".top_img").css("background","url(img/top_wkdb.jpg) no-repeat");
        $(".top_img").css("background-size","100% 100%");

        //左侧目录交互效果
        $("#toc > ul > li > a").click(function(e){
            e.stopPropagation();
            var currentList = $(this).parent().children("ul.father");
            if(currentList.css("display")=="block"){
                currentList.slideUp();
                return true;
            }
            $("#toc > ul > li").removeClass("active");
            $(".father").each(function(){
                $(this).slideUp();
            });
            currentList.slideToggle();
            $(this).parent().addClass("active");
            return true;
        });

        //加载教师列表
        $("li.toLink").click(function(){
            var link_url = $(this).children("div.hideData").html();
            var video_name = $(this).children("a").html();
            var video_object = "<div class=\"dividing\"><h2><label class=\"skew\" id=\"\"><i>"+video_name+"</i></label></h2></div>";
            video_object += "<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0' width='700' height='500'><param name='movie' value='flvplayer.swf'><param name='quality' value='high'><param name='AutoStart' value='true'><param name='auto' value='true'><param name='allowFullScreen' value='true'><param name='FlashVars' value='vcastr_file=demo.flv&amp;LogoText=iopen.com.cn&amp;BufferTime=3'><embed id='video_object' src='resource/video/flvplayer.swf' allowfullscreen='true' flashvars='vcastr_file="
                    +link_url+"' quality='high' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash' width='700' height='500'></object></br>"
            $("#video_object").html(video_object);
            $.ajax({
                type: "post",
                url: host+"/getTeachers",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function(data) {
                    var json = eval("("+data.d+")"); //将json字符串转换成json对象
                    if(json==""||null==json||undefined==json){
                        return;
                    }
                    $("#video_object").append("<img style='width:30px; height:30px;' src='img/interact1.jpg' /><h5 style=\"display:inline-block; font-size:20px; color:#0F7463; font-family:'幼圆';\">与老师交流</h5>");
                    teacherList(json);
                },
                error: function(err) {
                    alert("error");
                }
            });
        });

        //初始加载教师列表
        $("li .toLink:first").click();
    }

    function teacherList(json){
        var rsString = "";
        for(var i = 0;i<json.length;i++){
            var id = json[i].Id
            var teacherName = json[i].Name;
            rsString += "<div class='docs-section'>"+
                    "<a class='tn' href='javascript:void(0);' id='"+id+"'><blockquote>"+
                    "<p style='font-size:15px;'>"+teacherName+"</p>"+
                    "</blockquote></a>"+
                    "<div class=\"messageSlideToggle\"><div class=\"messageSection\"></div>"+
                    "</div>"+
                    "</div>";
        }
        $("#teacher_info").html(rsString);

        //刷新留言信息
        refreshMessages();

        $("a.tn").click(function(){
            //展开对应留言区
            $(this).next(".messageSlideToggle").slideToggle();
            var teacherId = $(this).attr("id");
        });
    }

    //刷新留言信息
    function refreshMessages(){
        $(".messageSection").each(function(){
            var messageSection = $(this);
            var teachId = $(this).parents(".docs-section").find("a.tn").attr("id");
            var pageSize = 5;
            var submitParam = "{teachId:\""+teachId+"\",pageSize:\""+pageSize+"\"}";
            $.ajax({
                type: "post",
                async:false,
                url: host+"/getMessages",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data:submitParam
            }).done(function(data){
                var json = eval("("+data.d+")");
                //构造分页对象
                var msgPageTool = new pageTool(json,pageSize,5);
                //初始化
                msgPageTool.init(messageSection,getOneDataHtml,initPerPageAction);

                var teacherName = messageSection.closest(".messageSlideToggle").prev(".tn").find("p").html();
                var htmlStr = "<div class='msgDiv' style='color:#000;'>"+
                        "<textarea  rows='4' style='width:100%;' placeholder='给 "+teacherName+" 留言'+></textarea>"+
                        "<a class='btn btn-info button'>提交</a>"+
                        "</div>";
                messageSection.next(".msgDiv").remove();
                messageSection.after(htmlStr);
                messageSection.next(".msgDiv").find(".button").click(function(){
                    var currentMsg = $(this).parent().parent().find("textarea");
                    var message = currentMsg.val();
                    var submitParam = "{teacherId:\""+teachId+"\",message:\""+message+"\"}";
                    //留言提交到服务器
                    $.ajax({
                        type: "post",
                        async:false,
                        url: "onDemand.ftl/submitMessage",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data:submitParam,
                        success: function(data) {
                            var json = eval("("+data.d+")"); //将json字符串转换成json对象
                            if(json=="1"){
                                alert("留言成功！");
                                refreshMessages();//刷新显示
                            }else if(json=="-1"){
                                alert("请先登陆");
                            }else{
                                alert("留言失败");
                            }
                            currentMsg.val("");
                        },
                        error: function(err) {
                            alert("error");
                        }
                    });
                });
            }).fail(function(error){
                alert("error");
            });
        });
    }
    //获得留言数据中一页数据的显示html字符串
    function getOneDataHtml(Data){
        var htmlStr = "";
        for(var i = 0;i < Data.length; i++){
            htmlStr += "<div class=\"messageList\">"+
                    "<img class=\"messageList_img "+(Data[i][1].Type=="to_tec"?"blue_border":"red_border")+"\" src=\""+(Data[i][1].Type=="to_tec"?"img/student_head.png":"img/teacher_head.png")+"\" /><span class=\"messageList_uname\">"+(Data[i][1].Type=="to_tec"?Data[i][0]:Data[i][2])+"</span>"+
                    "<span messageList_content>"+(Data[i][1].Type=="to_tec"?"":"<code>回复你：</code>")+Data[i][1].Content+"</span>"+
                    "<span class=\"messageList_time\">"+Data[i][1].Time+"</span></div>";
        }
        return htmlStr;
    }
    //初始化每页的动作监听
    function initPerPageAction(pgTool){
        var pagingAreaDomObj = pgTool.pagingAreaDomObj;

        var teacherId = pagingAreaDomObj.closest(".messageSlideToggle").prev(".tn").attr("id");
        var teacherName = pagingAreaDomObj.closest(".messageSlideToggle").prev(".tn").find("p").html();
        var htmlStr = "<div class='msgDiv' style='color:#000;'>"+
                "<textarea  rows='9' style='width:100%;' placeholder='给 "+teacherName+" 留言'+></textarea>"+
                "<a class='btn btn-info button'>提交</a>"+
                "</div>";
        pagingAreaDomObj.next(".msgDiv").remove();
        if(pagingAreaDomObj.after()=="")
            pagingAreaDomObj.after(htmlStr);
        pagingAreaDomObj.next(".msgDiv").find(".button").click(function(){
            var currentMsg = $(this).parent().parent().find("textarea");
            var message = currentMsg.val();
            var submitParam = "{teacherId:\""+teacherId+"\",message:\""+message+"\"}";
            //留言提交到服务器
            $.ajax({
                type: "post",
                async:false,
                url: host+"/submitMessage",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data:submitParam,
                success: function(data) {
                    var json = eval("("+data.d+")"); //将json字符串转换成json对象
                    if(json=="1"){
                        alert("留言成功！");
                        refreshMessages();//刷新显示
                    }else if(json=="-1"){
                        alert("请先登陆");
                    }else{
                        alert("留言失败");
                    }
                    currentMsg.val("");
                },
                error: function(err) {
                    alert("error");
                }
            });
        });
    }
</script>
</html>

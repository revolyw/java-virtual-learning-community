<!doctype html>
<html lang="en">
<head>
    <title>学习评价</title>
    <meta http-equiv="Content-Type" content="text/html"/>
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
        body
        {
            margin:0px;
            padding:0px;
        }
        ul
        {
            font-size:12px;
        }
        .btn
        {
            margin-top:30px;
            width:100%
        }



        .question_title{border-left: 3px solid #0F7463;	font-style:italic;	font-size:20px;}
        #content
        {
            font-size:14px;
        }
        table,tbody
        {
            width:100%;
            padding:5px;
            font-size: 14px;
        }
        table th,.li_tiankong_question
        {
            font-size:14px;
            font-weight:bold;
            padding:5px;
            color:#1C8C00;
        }
        table td
        {
            white-space:nowrap;
            padding:5px;
        }
        table td label
        {
            font-size:12px;
            white-space:normal;
            line-height:normal;
        }
        table .oushu{
            background:#EFF6FB;
        }
        table input{
            margin: 3px 5px 0px!important;
        }
        input[type="text"]{
            color:#333;
            line-height:normal;
            font-family: "Microsoft YaHei", Tahoma, Verdana, SimSun, serif;
            font-style:normal;
            font-variant:normal;
            font-stretch:normal;
            font-weight:normal;
            margin:0px;
            padding:4px;
            font-size:14px;
            outline-width:medium;
            outline-style:none;
            outline-color:invert;
            border-color:#599200;
            border-width:1px;
            border-style:none;
            border-bottom-style:solid;
            text-shadow:0px 1px 2px #fff;
            background-attachment:scroll;
            background-repeat:repeat-x;
            background-position-x:left;
            background-position-y:top;
            background-size:auto;
            background-origin:padding-box;
            background-clip:border-box;
            background-color:rgb(255,255,255);
        }
        input[type="text"]:hover {
            border: 1px solid #fafafa;
            -webkit-box-shadow: 0px 0px 6px #007eff;
            -moz-box-shadow: 0px 0px 5px #007eff;
            box-shadow: 0px 0px 5px #007eff;
        }
        .li_tiankong_answer
        {
            font-size:14px;
            font-weight:normal;
            color:#1B725C;
            list-style:none;
        }
    </style>

    <script src="dist/js/bootstrap.min.js"></script>

    <!--钉住导航-->

    <script src="js/affix.js"></script>

    <!--affix插件-->

    <script src="js/public.js"></script>
</head>
<body>
<!--头部-->
<#assign page="evaluation">
<#include "${view_path!}/common/header.ftl">

<!-- 页面主体部分  -->
<div id="wrap">
    <div class="container bodySize">
        <div id="nav_position">
            <img src="img/icon1.png" style="padding:0 0 5px 5px;"/>
            <ul class="breadcrumb">
                <li>您的位置：</li>
                <li><a href="#">首页</a></li>
                <li><a href="#">学习评价</a></li>
                <li class="active">第1章 Java语言概述</li>
            </ul>
        </div>
        <div class="row">
            <div id="catalogue_frame"></div>
            <div class="col-md-3">
                <div class="sidebar ">
                    <div id="toc">
                        <ul class="nav sidenav nav-tabs nav-stacked">
                        </ul>
                    </div>
                </div>
            </div>
            <!--内容展示-->
            <div class="col-md-9" role="main">
                <div id="content_frame" class="col-md-9" role="main">
                    <div class="dividing">
                        <h2>
                            <label class="skew">
                                <i>第1章 Java语言概述</i></label></h2>
                    </div>
                    <div id="content">
                        <blockquote class="question_title">
                            选择题
                        </blockquote>
                        <table>
                            <tbody>
                            <tr>
                                <th>
                                    1.下面关于Java Application 程序结构特点描述中，错误的是
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    <input name="Fruit" type="radio" value=""/><label>一个Java
                                    Application程序由一个或多个文件组成，每个文件中可以定义一个或多个类，每个类由若干个方法和变量组成。
                                </label>
                                </td>
                            </tr>
                            <tr>
                                <td class="oushu">
                                    <input name="Fruit" type="radio" value=""/><label>Java程序中声明有public类时，则Java程序文件名必须与public类的类名相同，并区分大小写，扩展名为.java。
                                </label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input name="Fruit" type="radio" value=""/><label>组成Java
                                    Application程序的多个类中，有且仅有一个主类。
                                </label>
                                </td>
                            </tr>
                            <tr>
                                <td class="oushu">
                                    <input name="Fruit" type="radio" value=""/><label>一个.java文件中定义多个类时，允许其中声明多个public类。
                                </label>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <table>
                            <tbody>
                            <tr>
                                <th>
                                    2.下面关于Java 语言特点的描述中，错误的是
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    <input name="Fruit1" type="radio" value=""/><label>Java是纯面向对象编程语言，支持单继承和多继承。
                                </label>
                                </td>
                            </tr>
                            <tr>
                                <td class="oushu">
                                    <input name="Fruit1" type="radio" value=""/><label>Java支持分布式的网络应用，可透明地访问网络上的其他对象。
                                </label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input name="Fruit1" type="radio" value=""/><label>Java支持多线程编程。
                                </label>
                                </td>
                            </tr>
                            <tr>
                                <td class="oushu">
                                    <input name="Fruit1" type="radio" value=""/><label>Java程序与平台无关、可移植性好。
                                </label>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <br/>
                        <blockquote class="question_title">填空题</blockquote>
                        <ul>
                            <li>1.Java编译器可以将Java源程序编译成与机器无关的二进制代码文件，即字节码文件，它的扩展名是 ____。</li>
                            <li>回答：<input type="text"/></li>
                        </ul>
                        <div class="btn btn-success">提交试卷</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 页面主体部分  -->
<#-- 页脚 -->
<#include "${view_path!}/common/footer.ftl">
</body>
<script>
    var host = "${host}";
    $(document).ready(function (e) {
        $.ajax({
            type: "post",
            url: host + "/getTests",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
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
            rsString += "<ul class='nav sidenav nav-tabs nav-stacked'>";
            var tmp_num = 0;
            for (i = 0; i < json.length; i++) {
                var id = json[i].id;
                var sectionId = json[i].sectionId;
                var sectionTitle = json[i].sectionTitle;
                rsString += "<li class=''><a id='#" + id + "'href='javascript:void(0);'>第<span id=\"sectionId\">" + sectionId + "</span>章 <span id=\"sectionTitle\">" + sectionTitle + "</span></a></li>";
            }
            $("#toc").html(rsString);
            $(".top_img").css("background", "url(img/top_xxpj.jpg) no-repeat");
            $(".top_img").css("background-size", "100% 100%");

            //目录交互效果
            $("ul.sidenav li").click(function () {
                $("#toc li").each(function () {
                    $(this).removeClass("active");
                });
                $(this).addClass("active");
            });

            //生成试卷
            $(".sidenav li").click(function () {
                var secId = $(this).find("span#sectionId").html();
                var secTitle = $(this).find("span#sectionTitle").html();
                $.ajax({
                    type: "post",
                    url: host + "/getOneTest",
                    dataType: "json",
                    data: 'sectionId=' + secId,
                    success: function (data) {
                        var json = data;
                        content_frame_init(secId, secTitle);
                        xuanze(json[0]);
                        tiankong(json[1]);
                        var tail = "<div id=\"answer\" class=\"btn btn-success\">提交试卷</div>";
                        $("#content_frame").append(tail);
                        answer(json);
                    },
                    error: function (err) {
                        $("#content_frame").html("<h4>获取数据错误！</h4>");
                    }
                });
            });

            $(".sidenav li").first().click();
        }


        function content_frame_init(secId, secTitle) {
            var initStr = "<li><a href=\"home.ftl\">首页</a> </li>" +
                    "<li><a href=\"evaluation.ftl\">学习评价</a> </li>" +
                    "<li class=\"active\">第" + secId + "章 " + secTitle + "</li>";
            $(".breadcrumb").html(initStr);
            initStr = "<div class=\"dividing\">" +
                    "<h2>" +
                    "<label class=\"skew\">" +
                    "<i>第" + secId + "章 " + secTitle + "</i></label></h2>" +
                    "</div>" +
                    "<div id=\"content\"></div>";
            $("#content_frame").html(initStr);
        }

        //选择题
        function xuanze(rs) {
            if (null == rs || typeof(rs) == "undefined")
                return;

            var mcquestionStr = "<blockquote class=\"question_title\">选择题</blockquote>";
            for (var i = 0; i < rs.length; i++) {
                mcquestionStr += "<table>" +
                        "<tbody>" +
                        "<tr>" +
                        "<th>" +
                        (i + 1) + "." + rs[i].content +
                        "</th>" +
                        "</tr>" +
                        "<tr>" +
                        "<td>" +
                        "<input name=\"name_" + (i + 1) + "\" type=\"radio\" /><label>" + rs[i].optA + "</label>" +
                        "</td>" +
                        "</tr>" +
                        "<tr>" +
                        "<td class=\"oushu\">" +
                        "<input name=\"name_" + (i + 1) + "\" type=\"radio\" /><label>" + rs[i].optB + "</label>" +
                        "</td>" +
                        "</tr>" +
                        "<tr>" +
                        "<td>" +
                        "<input name=\"name_" + (i + 1) + "\" type=\"radio\" /><label>" + rs[i].optC + "</label>" +
                        "</td>" +
                        "</tr>" +
                        "<tr>" +
                        "<td class=\"oushu\">" +
                        "<input name=\"name_" + (i + 1) + "\" type=\"radio\" /><label>" + rs[i].optD + "</label>" +
                        "</td>" +
                        "</tr>" +
                        "</tbody>" +
                        "</table>";
            }
            mcquestionStr += "<br/><br/>";
            $("#content").append(mcquestionStr);
        }

        //填空题
        function tiankong(rs) {
            if(null==rs||typeof(rs)=="undefined")
                return ;
            var fiquestion = "<blockquote class=\"question_title\">填空题</blockquote>";
            for (var i = 0; i < rs.length; i++) {
                fiquestion +=
                        "<ul class=\"ul_tiankong\">" +
                        "<li class=\"li_tiankong_question\">" + (i + 1) + "." + rs[i].content + "</li>" +
                        "<li class=\"li_tiankong_answer\">回答：<input name=\"tiankong_" + (i + 1) + "\" type=\"text\" /></li>" +
                        "</ul>";
            }
            fiquestion += "<br/>";
            $("#content_frame").append(fiquestion);
        }

        //提交试卷批改
        function answer(json) {
            $("#answer").click(function () {
                var answerStr = "";
                answerStr += "***选择题***\n";

                for (var i = 0; i < json[0].length; i++) {
                    var right_answer = "";
                    switch (json[0][i].Answer) {
                        case "A":
                            right_answer = json[0][i].optA;
                            break;
                        case "B":
                            right_answer = json[0][i].optB;
                            break;
                        case "C":
                            right_answer = json[0][i].optC;
                            break;
                        case "D":
                            right_answer = json[0][i].optD;
                            break;
                        default:
                            break;
                    }
                    answerStr += "第" + (i + 1) + "题：";
                    if ($("input[name=\"name_" + (i + 1) + "\"]:checked").val() == undefined)
                        answerStr += "未填写答案\n";
                    else if ($("input[name=\"name_" + (i + 1) + "\"]:checked").next().html() == right_answer)
                        answerStr += "对\n";
                    else
                        answerStr += "错。答案：" + json[0][i].answer + "." + right_answer + "\n";
                }

                answerStr += "***填空题***\n"
                for (var i = 0; i < json[1].length; i++) {
                    var right_answer = json[1][i].answer;
                    answerStr += "第" + (i + 1) + "题：";
                    if ($("input[name=\"tiankong_" + (i + 1) + "\"]").val().trim() == "")
                        answerStr += "未填写答案\n";
                    else if ($("input[name=\"tiankong_" + (i + 1) + "\"]").val().trim() == right_answer)
                        answerStr += "对\n";
                    else
                        answerStr += "错。答案：" + right_answer + "\n";
                }

                alert(answerStr);
            });
        }
    });
</script>
</html>

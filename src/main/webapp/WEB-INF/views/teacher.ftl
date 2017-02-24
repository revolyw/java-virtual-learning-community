<!doctype html>
<html lang="en">
<head>
    <title>教师管理界面</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="dist/jquery.min.js"></script>

    <link rel="Stylesheet" href="dist/css/bootstrap.min.css"/>
    <link rel="Stylesheet" href="dist/css/bootstrap.min.css"/>
    <link rel="Stylesheet" href="css/teacher.css"/>

    <script type="text/javascript" src="js/pageTool.js"></script>

    <script src="js/teacher.js"></script>

</head>
<body>
<div id="container" class="container">
    <div class="row">
        <div class="container" style="width: 100%; padding:0;">
            <div class="row head">
                <div class="btn-group" role="group" aria-label="...">
                    <button id="regMng" type="button" class="btn btn-default">
                        注册审批
                    </button>
                    <button id="classMng" type="button" class="btn btn-default">
                        学生管理
                    </button>
                    <button id="messageMng" type="button" class="btn btn-default">
                        学生留言
                    </button>
                </div>
                <img src="img/javaVirtual_head1.fw.png" class="bg_img img-responsive"/>
                <a class="btn btn-sm btn-success col-md-offset-10 col-md-2" href="home.ftl" style="">学生端主页</a>
            </div>
        </div>
        <div class="container" style="width: 100%">
            <div class="row">
                <div id="left_nav" class="col-md-2">
                </div>
                <div id="main" class="col-md-10">
                </div>
            </div>
        </div>
    </div>
</div>
<div id="footer">
    <div class="container">
    </div>
</div>
<script>
    var footerStr = "<label style=\"width:100%; margin:0px; text-align:center; display:block;\">Copyright © 2014 njujlxy & Optimize For Web Page By Bootstrap</label>" +
            "<a style=\"width:100%; text-align:center; font-size:12px; height:18px; float:left;\" href=\"home.ftl\">学生界面</a>";
    $("#footer .container").html(footerStr);
</script>
</body>
</html>

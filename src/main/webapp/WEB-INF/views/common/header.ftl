<!--页头logo-->
<div class="container bodySize">
    <div class="demo-headline header">
        <label id="display_lg_off" class="show-off">
            <ul class="sign-in">
                <li><a data-toggle="modal" data-target="#LoginModal" href="#">
                    登录
                </a></li>
                <li>|</li>
                <li><a data-toggle="modal" data-target="#RegModal" href="#">
                    注册
                </a></li>
            </ul>
        </label>
        <label id="display_lg_on" class="show-off">
            <ul class="sign-in">
                <li>
                    <label id="s_u_name" Text="" Style="color: WindowText"></label>
                </li>
                <li>
                    <button id="loginOff">注销</button>
                </li>
            </ul>
        </label>
    </div>
    <!--导航-->
    <div class="navbar-inverse">
        <div class="navwrapper navbar-static-top">
            <div class="navbar navbar-inverse">
                <div class="container">
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li class="<#if (page=="home")>active</#if>"><a href="home.ftl">首页</a></li>
                            <li class="span">&nbsp;</li>
                            <li class="<#if (page=="course")>active</#if>"><a href="courseIntrod.ftl">课程概述</a></li>
                            <li class="span">&nbsp;</li>
                            <li class="<#if (page=="knowledge")>active</#if>"><a href="knowledge.ftl">知识管理</a></li>
                            <li class="span">&nbsp;</li>
                            <li class="<#if (page=="demand")>active</#if>"><a href="onDemand.ftl">微课点播</a></li>
                            <li class="span">&nbsp;</li>
                            <li class="<#if (page=="evaluation")>active</#if>"><a href="evaluation.ftl">学习评价</a></li>
                            <li class="span">&nbsp;</li>
                            <li class="<#if (page=="practice")>active</#if>"><a href="practiceTeaching.ftl">实例教学</a>
                            </li>
                            <li class="span">&nbsp;</li>
                            <li class="<#if (page=="community")>active</#if>"><a href="community.ftl" target="_blank">社区交流</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<#import "/plugin/tags.ftl" as tags />

<#-- 首页头部开始 -->
<#macro indexHeader selected title="" projectName="车险大数据平台" company="索米科技" keywords="" description="" charset="UTF-8" >
    <!DOCTYPE HTML>
    <html lang="${charset}">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=${charset}"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <title>${title}<#if projectName?? && projectName?trim != "" >&nbsp;-&nbsp;${projectName!}<#elseif PROJECT_NAME?? && PROJECT_NAME?trim != "" >&nbsp;-&nbsp;${PROJECT_NAME!}</#if>&nbsp;-&nbsp;${company!}</title>
            <meta http-equiv="pragma" content="no-cache"/>
            <meta http-equiv="cache-control" content="no-cache"/>
            <meta http-equiv="expires" content="0"/>
            <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
            <#if keywords?? && keywords!="">
                <meta http-equiv="keywords" content="${keywords}"/>
            <#else>
                <meta http-equiv="keywords" content="${title}"/>
            </#if>
            <#if description?? && description!="">
                <meta http-equiv="description" content="${description}"/>
            <#else>
                <meta http-equiv="description" content="${title}"/>
            </#if>
            <link rel="shortcut icon" href="<@tags.spring.url value='/favicon.ico' />" />
            <link rel="stylesheet" type="text/css" href="<@tags.spring.url value='/script/css/bootstrap.min.css' />"/>
            <link rel="stylesheet" type="text/css" href="<@tags.spring.url value='/script/css/bootstrap-responsive.min.css'/>"/>
            <link rel="stylesheet" type="text/css" href="<@tags.spring.url value='/script/css/uniform.css' />"/>
            <link rel="stylesheet" type="text/css" href="<@tags.spring.url value='/script/css/select2.css' />"/>
            <link rel="stylesheet" type="text/css" href="<@tags.spring.url value='/script/css/css.css'/>"/>
            <link rel="stylesheet" type="text/css" href="<@tags.spring.url value='/script/css/matrix-media.css'/>"/>
            <link rel="stylesheet" type="text/css" href="<@tags.spring.url value='/script/jquery/plug-in/showloading/showLoading.min.css' />"/>
            <link rel="stylesheet" type="text/css" href="<@tags.spring.url value="/script/jquery/plug-in/artDialog/skins/aero.css" />"/>
            <link rel="stylesheet" type="text/css" href="<@tags.spring.url value='/script/css/matrix-style.css'/>"/>

            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value="/script/plugins/JSON-js-master/json2.js"/>"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/jquery/core/1.11.1/jquery-1.11.1.min.js' />"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value="/script/jquery/plug-in/artDialog/artDialog.min.js" />"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/jquery/plug-in/jquery-migrate-1.1.1.js' />"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/jquery/plug-in/showloading/jquery.showLoading.min.js' />"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/plugins/bootstrap/bootstrap.min.js' />"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/jquery/plug-in/jquery.uniform.js'/>"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/plugins/select2.min.js'/>"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/jquery/plug-in/jquery.dataTables.min.js'/>"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/web/matrix.js'/>"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/web/matrix.tables.js'/>"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/jquery/plug-in/validate/core/jquery.validate.min.js' />"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/jquery/plug-in/validate/localization/messages_zh.js' />"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/my-js/StringUtil.js' />"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/my-js/jlForm.js' />"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/my-js/jlUI.js' />"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/my-js/jquery.validate.plugin.js' />"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/my-js/jquery.validate.plugin.messages_zh.js' />"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/web/common.js' />"></script>
            <script language="javascript" >
                $(document).ready(function(){
                    $("#logout").click(function () {
                        userLogout({
                            url:"<@com.tags.spring.url value='/user/logout'/>"
                        });
                    });
                });
            </script>
        </head>
        <body>
            <div id="header" page-region="header">
                <h1 style="width:410px;">
                    <a href="<@tags.spring.url value='/index' />" onclick="javascript:$('body').showLoading();" style="color:#FFFFFF;font-size: 30px;font-weight: bold;">
                        <img src="<@tags.spring.url value='/images/logo.png' />"/>
                        <span>车险大数据平台</span>
                    </a>
                </h1>
            </div>
            <div id="user-nav" class="navbar navbar-inverse" page-region="header" >
                <ul class="nav">
                    <li <#if selected == "HELP">class="open"</#if>>
                        <a href="#">
                            <span class="text">帮助</span>
                        </a>
                    </li>
                    <li class="dropdown <#if selected == "PERSONAL_DATA" || selected == "MODIFY_PASSWORD">cur</#if>" id="profile-messages">
                        <a href="javascript:;" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle">
                            <i class="icon-user"></i>
                            <span class="text">
                                <#if SESSION_USER??>${SESSION_USER.username!}<#else><span style="color : #BFBFBF; font-weight: 900; font-size: 14px;">未登录</span></#if>
                            </span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li <#if selected == "PERSONAL_DATA">class="active"</#if>>
                                <a href="#">个人资料</a>
                            </li>
                            <li class="divider"></li>
                            <li <#if selected == "MODIFY_PASSWORD">class="active"</#if>>
                                <a href="#">修改密码</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a id="logout" href="javascript:void(0);">退出</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
</#macro>
<#-- 首页头部结束 -->

<#-- 首页底部开始 -->
<#macro indexFooter>
            <!--footer-->
            <div id="footerWapper" class="row-fluid" page-region="footer" >
                <div id="footer" class="span12">索米科技</div>
            </div>
            <!--footer end-->
        </body>
    </html>
</#macro>
<#-- 首页底部结束 -->

<#-- 左部开始 -->
<#macro left selected>
    <!--left nav star-->
    <div class="st_tree" page-region="left" style="overflow-y:auto;">
        <ul class="site-stats" >
            <li <#if selected == "VRRC">class="active"</#if>>
                <a href="<@tags.spring.url value='/vrrc/index' />" onclick="javascript:$('body').showLoading();">汽车风险评级</a>
            </li>
            <li <#if selected == "DBAC">class="active"</#if>>
                <a href="<@tags.spring.url value='/dbac/index' />" onclick="javascript:$('body').showLoading();">驾驶行为分析</a>
            </li>
            <li <#if selected == "TTAC">class="active"</#if>>
                <a href="<@tags.spring.url value='/ttac/index' />" onclick="javascript:$('body').showLoading();">行驶趋势分析</a>
            </li>
            <li <#if selected == "BXDJYZ">class="active"</#if>>
                <a href="<@tags.spring.url value='/ipfc/export.excel' />">保险定价因子</a>
            </li>
            <li <#if selected == "VUVC">class="active"</#if>>
                <a href="<@tags.spring.url value='/vuvc/index' />" onclick="javascript:$('body').showLoading();">汽车使用可视化</a>
            </li>
        </ul>
    </div>
    <!--left nav end-->
</#macro>
<#-- 左部结束 -->


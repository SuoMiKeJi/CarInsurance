<#import "/plugin/tags.ftl" as tags />

<#-- 首页头部开始 -->
<#macro indexHeader selected projectName="" title="" charset="UTF-8" keywords="" description="" >
    <!DOCTYPE HTML>
    <html lang="${charset}">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=${charset}"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <title><#if projectName?? && projectName?trim != "" >${projectName!}&nbsp;-&nbsp;<#elseif PROJECT_NAME?? && PROJECT_NAME?trim != "" >${PROJECT_NAME!}&nbsp;-&nbsp;</#if>${title}</title>
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
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/myJS/myForm.js' />"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/myJS/myUI.js' />"></script>
            <script type="text/javascript" charset="UTF-8" src="<@tags.spring.url value='/script/myJS/jquery.validate.plugin.xinzhe.js' />"></script>
        </head>
        <body>
            <div id="header">
                <h1 style="width:320px;">
                    <a href="<@tags.spring.url value='/smkj/index' />" onclick="javascript:$('body').showLoading();" style="color:#FFFFFF;font-size: 30px;font-weight: bold;" >Demo</a>
                </h1>
            </div>
            <div id="user-nav" class="navbar navbar-inverse">
                <ul class="nav">
                    <li <#if selected == "HELP">class="open"</#if>>
                        <a href="#" >
                            <span class="text">帮助</span>
                        </a>
                    </li>
                    <li class="dropdown <#if selected == "PERSONAL_DATA" || selected == "MODIFY_PASSWORD">cur</#if>"
                        id="profile-messages">
                        <a href="javascript:;" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle">
                            <i class="icon-user"></i>
                            <span class="text">
                                <#if DAASBANK_DSTORE_USER??>${DAASBANK_DSTORE_USER.name!}<#else><span style="color : #BFBFBF; font-weight: 900; font-size: 14px;">未登录</span></#if>
                            </span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li <#if selected == "PERSONAL_DATA">class="active"</#if>>
                                <a href="#" >个人资料</a>
                            </li>
                            <li class="divider"></li>
                            <li <#if selected == "MODIFY_PASSWORD">class="active"</#if>>
                                <a href="#" >修改密码</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">退出</a>
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
            <div id="footerWapper" class="row-fluid">
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
    <div class="st_tree" style="overflow-y:auto;">
        <ul class="site-stats">
            <li <#if selected == "QCFXPJ">class="active"</#if>>
                <a href="<@tags.spring.url value='/es/qcfxpj' />" onclick="javascript:$('body').showLoading();" >汽车风险评级</a>
            </li>
            <li <#if selected == "JSXWFX">class="active"</#if>>
                <a href="<@tags.spring.url value='/es/dba/皖A-50D90' />" onclick="javascript:$('body').showLoading();" >驾驶行为分析</a>
            </li>
            <li <#if selected == "BXDJYZ">class="active"</#if>>
                <a href="<@tags.spring.url value='/es/bxdjyz.xlsx' />" >保险定价因子</a>
            </li>
            <li <#if selected == "QCSYKSH">class="active"</#if>>
                <a href="<@tags.spring.url value='/es/qcsyksh' />" onclick="javascript:$('body').showLoading();" >汽车使用可视化</a>
            </li>
        </ul>
    </div>
    <!--left nav end-->
</#macro>
<#-- 左部结束 -->


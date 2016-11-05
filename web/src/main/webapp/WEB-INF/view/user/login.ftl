<#import "/lib/common.ftl" as com />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="<@com.tags.spring.url value='/script/css/bootstrap.min.css' />"/>
    <link rel="stylesheet" type="text/css" href="<@com.tags.spring.url value='/script/css/bootstrap-responsive.min.css'/>"/>
    <link rel="stylesheet" type="text/css" href="<@com.tags.spring.url value='/script/css/matrix-login.css'/>"/>
    <link rel="stylesheet" type="text/css" href="<@com.tags.spring.url value='/script/jquery/plug-in/showloading/showLoading.min.css' />"/>
    <link rel="stylesheet" type="text/css" href="<@com.tags.spring.url value="/script/jquery/plug-in/artDialog/skins/aero.css" />"/>

    <script type="text/javascript" charset="UTF-8" src="<@com.tags.spring.url value='/script/jquery/core/1.11.1/jquery-1.11.1.min.js' />"></script>
    <script type="text/javascript" charset="UTF-8" src="<@com.tags.spring.url value='/script/plugins/bootstrap/bootstrap.min.js' />"></script>
    <script type="text/javascript" charset="UTF-8" src="<@com.tags.spring.url value="/script/jquery/plug-in/artDialog/artDialog.min.js" />"></script>
    <script type="text/javascript" charset="UTF-8" src="<@com.tags.spring.url value='/script/jquery/plug-in/jquery-migrate-1.1.1.js' />"></script>
    <script type="text/javascript" charset="UTF-8" src="<@com.tags.spring.url value='/script/jquery/plug-in/showloading/jquery.showLoading.min.js' />"></script>
    <script type="text/javascript" charset="UTF-8" src="<@com.tags.spring.url value='/script/jquery/plug-in/validate/core/jquery.validate.min.js' />"></script>
    <script type="text/javascript" charset="UTF-8" src="<@com.tags.spring.url value='/script/my-js/jlForm.js' />"></script>
    <script type="text/javascript" charset="UTF-8" src="<@com.tags.spring.url value='/script/my-js/jquery.validate.plugin.js' />"></script>

    <script language="javascript" >
        $().ready(function() {
            jlForm.field.setDefault($("[name='username']"), "用户名");
            jlForm.field.setDefault($("[name='password']"), "密码", "text", "password");
            jlForm.field.setDefault($("[name='validateCode']"), "输入验证码");

            $("#loginForm").validate({
                focusCleanup : true,
                focusInvalid : false,
                onkeyup : false,
                errorClass : "error",
                validClass : "checked",
                errorElement : "font",
                submitHandler : function(form) {
                    jlForm.submit(form,{
                        success:function(response, textStatus){
                            if(response.code == 200){
                                var data = response.result;
                                alert("登陆成功，用户ID="+data.uid);
//                                if(typeof(data.data.forward) == "string"){
//                                    window.location = data.data.forward;
//                                }else{
//                                    window.location = "www.baidu.com";
//                                }
                            }else{
                                art.dialog({
                                    title : "提示",
                                    content : response.msg,
                                    fixed: true,
                                    okValue : '确定',
                                    ok : function() {
                                        return true;
                                    }
                                }).lock();
                            }
                        }
                    });
                },
                init:{},
                rules : {
                    "username" : {
                        required : true,
                        enAndNum_ : true,
                        minlength : 3,
                        maxlength : 20
                    },
                    "password" : {
                        required : true,
                        minlength : 6,
                        maxlength : 20
                    },
                    "validateCode" : {
                        required : true
                    }
                },
                messages : {
                    "username" : {
                        required : "请输入账号！",
                        enAndNum_ : "用户名必须是英文字母、数字或下划线组成",
                        minlength : "账号长度必须大于{0}！",
                        maxlength : "账号长度必须小于{0}！"
                    },
                    "password" : {
                        required : "请输入密码！",
                        minlength : "密码长度必须大于{0}！",
                        maxlength : "密码长度必须小于{0}！"
                    },
                    "validateCode" : {
                        required : "请输入验证码"
                    }
                },
                success:function(lable, checked){
                    lable.hide();
                }
            });
            $("#refreshValidateCode").click(function(e){
                <#--jlForm.refreshValidateCode("validateCodeImg", "<@com.tags.spring.url value='/validateCode?width=84&height=22&codeCount=4&lineCount=10&time=' />" + new Date());-->
            });
//            $("#to-recover").click(function () {
//                $("#loginForm").submit();
//            });
        });
    </script>
</head>
<body>
<div id="loginbox">
    <form id="loginForm" action="<@com.tags.spring.url value='/user/login.json' />" method="GET" class="form-vertical">
        <div class="control-group normal_text">
           <!-- <h3><img src="images/login_logo.png" alt="Logo" /></h3>-->
            <h2>欢迎使用索米车险大数据平台</h2>
        </div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on">账 号</span>
                    <input value="用户名" name="username" type="text" />
                </div>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on">密 码</span>
                    <input value="密码"  name="password"  />
                </div>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on">验证码</span>
                    <input name="validateCode" style="width:30%;"/>
                    <span class="imag"><a id="refreshValidateCode" href="javascript:;">
                    <#--<img src="<@com.tags.spring.url value='/validateCode?width=84&height=22&codeCount=4&lineCount=10' />" />-->
                    <i>换一张</i></a></span>
                </div>
            </div>
        </div>
        <div class="form-actions">
            <span class="pull-left">
                <#--<button id="to-recover" class="flip-link btn btn-info" >登 录</button>-->
                <input type="submit" value="登录" class="flip-link btn btn-info" />
            </span>
        </div>
    </form>
</div>

<div id="footer">
    <span style="padding:0 10px;">索米科技</span>
    <span style="padding:0 10px;">京ICP000000号</span>
</div>

</body>
</html>
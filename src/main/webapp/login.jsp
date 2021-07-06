 <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
 <html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="static/bootstrap-3.4.1-dist/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="static/css/verifyCode.css">
    <link rel="stylesheet" type="text/css" href="static/css/register-login.css">
</head>
<body>
    <div class="container" style="text-align:center;">
        <div class="navbar-collapse collapse" style=" width:80%;  position: relative; left: 10%;">
            <div class="jumbotron" style="margin:5%;
            padding:1% 20%;">
                <center><h1>登录</h1></center>                
                <div class="tips" style="opacity:1;display:block;position:relative;">
                    <span>→没有账号？您可以选择: </span>
                    <a href="register.jsp"> 注册</a>
                </div>
                <hr/>
                <form action="#" id="login-form" class="diy-form" style=" text-align: left;">
                    <div class="form-group">
                        <label for="name" style="text-align: left;">ID<font class="font" style="color: red;zoom:95%;font-weight:500;display:none;"> &nbsp;* ID不能为空 ！ </font></label>
                        <input id="name" type="text" class="form-control" placeholder="请输入用户名/邮箱/手机号">
                    </div>
                    <div class="form-group">
                        <label for="password">密码<font class="font" style="color: red;zoom:95%;font-weight:500;display:none;" > &nbsp;* 密码不能为空 !</font></label>
                        <input id="password" type="password" class="form-control" placeholder="请输入密码">
                    </div>
                    <div class="form-group" style="position:relative; ">
                        <label for="verifital_input">验证码</label>
                        <div id="verifycode" class="verificationCode" style=" height:34px; position:absolute; right:15%; top:0; ">
                            <span id="refresh-verifycode" class="glyphicon glyphicon-refresh" style="zoom:150%; position:relative; right:-105%; top:100%; "> </span>
                            <canvas width="100" height="40" id="verifyCanvas"></canvas>
                            <img id="code_img" style="display:inline;">
                        </div>
                        <input type="text" id="verifital_input" placeholder="请输入验证码 " class="form-control " style="width: 65%; "/>
                    </div>
                   <label><input type="checkbox"/>记住密码</label>
                    <div style=" text-align:center; margin:0 auto;">
                        <input type="button" class="btn btn-primary  btn-operate " value="登录" style="margin: 3% ;margin-bottom:0;" id="check-identity" onclick="javascript:checkAll()">
                        <input type="reset" class="btn btn-warning btn-operate " value="清空 " style="margin: 3% ;margin-bottom:0;">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!---------------------------------------------------- js begin------------------------------------------------------------->
    <!-------------------- base js begin---------------------->
    <script type="text/javascript" src="static/js/jquery.js"></script>
    <script type="text/javascript" src="static/bootstrap3/js/bootstrap.js"></script>
    <!--------------------- base js end----------------------->
    <script type="text/javascript" src="static/js/code.js"></script>
    <!-- for verifyCode -->
    <script type="text/javascript" src="static/js/login.js"></script>
    <!------------------------------------------------- js end--------------------------------------------------------------->
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="static/bootstrap-3.4.1-dist/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="static/css/verifyCode.css" />
    <link rel="stylesheet" type="text/css" href="static/css/register-login.css" />
</head>

<body>
    <div class="container" style="text-align:center;">
        <div class="navbar-collapse collapse" style=" width:80%;  position: relative; left: 10%;">
            <div class="jumbotron" style="margin:3%;padding:1% 20%;">
                <center><h1>注册</h1></center>
                    <div class="tips" style="opacity:1;display:block;position:relative;">
                    <span>→已有账号？您可以直接: <a href="login.jsp">登录 </a></span><br>
                </div>
                <hr/>

                <form action="#" id="form-login" class="diy-form" style=" text-align: left;">
                	<div class="form-group row" style="position:relative;left:3%; ">
                        <label for="tele">手机号</label>
                        <div class="need-check">
                            <input id="tele" type="text" class="form-control optional" placeholder="请输入手机号" style="width: 50%;" />
                         
                            <div class="input-group" style="width: 24%; position:absolute;top:25px;left:53%; ">
                                <div class="row input-group-btn">
                                    <input type="text" class="form-control" aria-label="手机验证码" placeholder="一分钟后失效">
                                    <button type="button" class="btn btn-info" aria-label="Bold" onclick="getTele()">手机验证</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group" style="position:relative;">
                        <label for="password">*密码 <font class="font" style="color: red;zoom:95%;font-weight:500;display:none;"> &nbsp; 密码6-20位,必须同时包含数字、大小写字母三种类型 !</font></label>
                        <input id="password" type="password" class="form-control required" placeholder="请输入6-20位的密码，必须同时包含数字、大小写字母三种类型" value="">
                        <span class="" style="position:absolute;right:1.5%;top:60%;"></span>
                    </div>
                    <div class="form-group" style="position:relative;">
                        <label for="re-password">*确认密码 <font class="font" style="color: red;zoom:95%;font-weight:500;display:none;"> &nbsp;两次密码不一致 !</font></label>
                        <input id="re-password" type="password" class="form-control required" placeholder="请再次输入密码">
                        <span class="" style="position:absolute;right:1.5%;top:60%; "></span>
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
                    <div style=" text-align:center; margin:0 auto;">
                        <input type="submit" class="btn btn-primary btn-operate" value="注册" id="check-info"style="margin: 3% ;margin-bottom:0;" onclick="checkAll()">
                        <input type="reset" class="btn btn-warning btn-operate" value="清空" style="margin: 3% ;margin-bottom:0;">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-------------------------------- js begin------------------------------>
    <!-------------------- base js begin---------------------->
    <script type="text/javascript" src="static/js/jquery.js"></script>
    <script type="text/javascript" src="static/bootstrap3/js/bootstrap.js"></script>
    <!--------------------- base js end----------------------->
    <script type="text/javascript" src="static/js/code.js"></script>
    <!-- for verifyCode -->
    <script type="text/javascript " src="static/js/register.js "></script>
    <!-- for register operate -->

    <!-------------------------------- js end------------------------------>

</body>

</html>
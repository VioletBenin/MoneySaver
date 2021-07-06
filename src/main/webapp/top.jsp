<%@ page language="java" import="java.util.*,com.qst.test01.javabean.*"
	pageEncoding="utf-8"%>
<html>
<head>
   	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="static/bootstrap-3.4.1-dist/css/bootstrap.css">
</head>
<%-- 
top.jsp
<%
        String s="未登录";
        Cookie cookies[]=request.getCookies();
        User user=(User)request.getSession().getAttribute("SESSION_USER");
		s=user.getUserLogname();
		if(s==null||s.equals(null)||s.equals(""))
		  s="未登录";
%> 

<body style="background: url(../images/topbg.gif) repeat-x;">
	<div class="topleft">
		<a href="main.jsp" target="_parent"><img
			src="../images/main_logo.png" title="系统首页" /></a>
	</div>

	<div class="topright">
		<ul>
			<li><span><img src="../images/help.png" title="帮助"
					class="helpimg" /></span><a href="#">帮助</a></li>
			<li><a href="#">关于</a></li>
			<li><a href="../login.jsp" target="_parent">退出</a></li>
		</ul>
		<div class="user">
			<span>${sessionScope.SESSION_USER.userRealname}</span>
		</div>
	</div>
	<ul class="nav">
		<li><a href="http://www.itoffer.cn" target="_blank"
			class="selected"><img src="../images/globe.png" title="网站前台" />
				<h2>网站前台</h2> </a></li>
		<li><a href="index.jsp" target="rightFrame"><img
				src="../images/home.png" title="后台首页" />
				<h2>后台首页</h2> </a></li>
	</ul>	
--%>	
	    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
                <a class="navbar-brand" href="#">家庭理财管理系统</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <!-- 管理员 -->         
                    <li><a href="">用户管理</a></li>
                    <li><a href="">（网站维护）</a></li>
                    <!-- 普通用户 -->
                    <li><a href="">个人信息</a></li>
                    <li><a href="">收支管理</a></li>
                    <li><a href="">（投资管理）</a></li>
                    <li><a href="">意见反馈</a></li>  
                </ul>
                <form class="navbar-form navbar-left">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="您想搜索什么功能...">
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="login.html">登录</a></li>
                    <li><a href="register.html">注册</a></li>
                </ul>
            </div>
        </div>
    </nav>
        <script type="text/javascript" src="static/js/jquery.js"></script>
    <script type="text/javascript" src="static/bootstrap-3.4.1-dist/js/bootstrap.js"></script>
</body>

</html>
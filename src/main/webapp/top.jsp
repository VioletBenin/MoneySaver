<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head>
   	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="static/bootstrap-3.4.1-dist/css/bootstrap.css">
</head>	
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
                    <li><a href="" target="mainFrame">用户管理</a></li>
                    <li><a href="" target="mainFrame">（网站维护）</a></li>
                    <!-- 普通用户 -->
                    <li><a href="" target="mainFrame">个人信息</a></li>
                    <li><a href="" target="mainFrame">收支管理</a></li>
                    <li><a href="" target="mainFrame">（投资管理）</a></li>
                    <li><a href="" target="mainFrame">意见反馈</a></li> 
                                           
                    
                </ul>
                <form class="navbar-form navbar-left">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="您想搜索什么功能...">
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
                <ul class="nav navbar-nav navbar-right">     
                           
                	<li><a href="login.jsp" target="mainFrame">注销</a></li>
                	
                    <li><a href="login.jsp" target="mainFrame">登录</a></li>
                    <li><a href="register.jsp" target="mainFrame">注册</a></li>
                </ul>
            </div>
        </div>
    </nav>
        <script type="text/javascript" src="static/js/jquery.js"></script>
    <script type="text/javascript" src="static/bootstrap-3.4.1-dist/js/bootstrap.js"></script>
</body>

</html>
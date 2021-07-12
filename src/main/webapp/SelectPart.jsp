<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="static/bootstrap-3.4.1-dist/css/bootstrap.css">	
<body>
<div class="container-fluid">
selectpart
 <div class="table1">
                <!--数据列表-->
							<table id="userList"
								class="table table-bordered table-striped table-hover dataTable">
								<thead>
									<tr>
										<th>
										<!--  
											<input id="selall" type="checkbox" class="icheckbox_square-blue">
											-->
										
										</th>
										<th class="sorting_asc">用户编号</th>
										<th class="sorting_desc">用户名称</th>
										<th class="sorting_asc ">用户密码</th>
										<th class="sorting_asc ">手机号码</th>
										<th class="sorting_asc ">性别</th>
										<th class="sorting_asc ">年龄</th>
										<th class="sorting_asc ">出生日期</th>
										<th class="sorting_asc ">省份</th>
										<th class="sorting_asc ">用户类别</th>
										<th class="text-center">操作</th>
									</tr>
								</thead>
								<tbody>		
								    <c:forEach var="ulist" items="${userlist} }">
										<tr>
											<td><input name="ids" type="checkbox"></td>
											<td>${userlist.id}</td>
											<td>${userlist.name}</td>
											<td>${userlist.password}</td>
											<td>${userlist.telephone}</td>
											<td>${userlist.sex}</td>
											<td>${userlist.age}</td>
										 	<td>${userlist.birthday}</td>
											<td>${userlist.province}</td>
											<td>${userlist.usertype}</td>
										 	<td class="text-center">
												<a href="${pageContext.request.contextPath}/user/toUpdate.do?id=${user.id}" class="btn bg-olive btn-xs">更新</a>
												<a href="${pageContext.request.contextPath}/user/delete.do?id=${user.id}" class="btn bg-olive btn-xs">删除</a>
												<a href="#" class="btn bg-olive btn-xs">添加角色</a>
											</td>  
										</tr>
									</c:forEach>
								</tbody>
								<!--
                            <tfoot>
                            <tr>
                            <th>Rendering engine</th>
                            <th>Browser</th>
                            <th>Platform(s)</th>
                            <th>Engine version</th>
                            <th>CSS grade</th>
                            </tr>
                            </tfoot>-->
							</table>
                </div>
             <!--   <div class="box-tools pull-right">
							<ul class="pagination">
								<li><a href="${pageContext.request.contextPath}/user/findAll.do?page=1&size=5" aria-label="Previous">首页</a></li>
								<li><a href="${pageContext.request.contextPath}/user/findAll.do?page=${pageInfo.pageNum-1}&size=5">上一页</a></li>
								<c:forEach begin="1" end="${pageInfo.pages}" var="pageNum">
									<li><a href="${pageContext.request.contextPath}/user/findAll.do?page=${pageNum}&size=5">${pageNum}</a></li>
								</c:forEach>
								<li><a href="${pageContext.request.contextPath}/user/findAll.do?page=${pageInfo.pageNum+1}&size=5">下一页</a></li>
								<li><a href="${pageContext.request.contextPath}/user/findAll.do?page=${pageInfo.pages}&size=5" aria-label="Next">尾页</a></li>
							</ul>
						</div>   -->  


</div>
 <script type="text/javascript" src="static/js/jquery.js"></script>
    <script type="text/javascript" src="static/bootstrap3/js/bootstrap.js"></script>		
    <script src="https://cdn.bootcss.com/bootbox.js/5.3.2/bootbox.js"></script>
</body>
</html>
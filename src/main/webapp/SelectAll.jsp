<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <link rel="stylesheet" type="text/css" href="static/bootstrap-3.4.1-dist/css/bootstrap.css">	

<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdn.bootcss.com/bootbox.js/5.3.2/bootbox.js"></script>
<body>
<div class="container-fluid">

 <div class="table1">
                <!--数据列表-->
							<table id="userList"
								class="table table-bordered table-striped table-hover dataTable">
								<thead>
									<tr>			
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
								     <c:forEach  items="${userlist}" var="user">
										<tr>
											<td>${user.id}</td>
											<td>${user.name}</td>
											<td>${user.password}</td>
											<td>${user.telephone}</td>
											<td>${user.sex}</td>
											<td>${user.age}</td>
										 	<td>${user.birthday}</td>
											<td>${user.province}</td>
											<td>${user.usertype}</td>
										 	<td class="text-center">
												<button class="btn btn-default" data-target="#updatepwd" data-toggle="modal">维护密码</button>
												<button class="btn btn-default" data-target="#updatetype" data-toggle="modal">角色管理</button>
												<button class="btn btn-default" id="deleteuser" data-id="${user.id}">删除用户</button>
			
											</td>  
										</tr>
									</c:forEach>
								</tbody>
							
                       
							</table>
                </div>
                	
            <div class="box-tools pull-right">
							<ul class="pagination">
		<li><a href="list?pageNo=${pageInfo.firstPage}">第一页</a><li>
      <c:if test="${pageInfo.hasPreviousPage }">
           <li>   <a href="list?pageNo=${pageInfo.pageNum-1}">上一页</a></li>
        </c:if>
      
     
        <c:if test="${pageInfo.hasNextPage }">
            <a href="list?pageNo=${pageInfo.pageNum+1}">下一页</a>
        </c:if>
        </li>
        <li>
        <a href="list?pageNo=${pageInfo.lastPage}">最后页</a><li>
</ul>
						</div>  


</div>






  <div class="modal fade"  id="updatepwd" aria-labelledby="myModallabel" aria-hidden="true" tabindex="-1" >
<div class="modal-dialog modal-lg " >
    <div class="modal-content ">
        <div class="modal-header">
            <button class="close" type="button" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h5 class="modal-title" id="myModallabel">更改用户密码</h5>
        </div>
        <form id="updatepwd1" class="form-horizontal">
        <div class="modal-body">
            <div class="form-group">
            <label class="control-label col-lg-3">用户编号：</label>
            <div class="col-lg-7">
            <input type="text" value="" id="userid" placeholder="Userid" class="form-control" readonly="readonly" value="${user.id}"> </br>
           
            </div>
            </div>
            <div class="form-group">
            <label class="control-label col-lg-3">用户名称：</label>
            <div class="col-lg-7">
            <input type="text" value="" id="username" placeholder="Username" class="form-control" readonly="readonly" value="${user.name}"> </br>
           
            </div>
            </div>
            <div class="form-group">
            <label class="control-label col-lg-3">更改密码：</label>
            <div class="col-lg-7">
                <input type="password" placeholder="System Default Password" value="" id="password" class="form-control" ></br>
                <div id="userpassword1Error" height="35" colspan="2" class="errotext" style="display:none">
                <font color="red" size="-1">请输入系统默认密码！</font> </br></div>
                
            </div>
            </div>
        </div>         
        <div class="modal-footer">
        <button class="btn btn-default" type="button" data-dismiss="modal"  >关闭</button>
            <button  class="btn btn-default" id="update1" type="button" onclick="">更新</button>
        </div>
        </form>
    </div>
</div>
</div>

<div class="modal fade"  id="updatetype" aria-labelledby="myModallabel" aria-hidden="true" tabindex="-1" >
<div class="modal-dialog modal-lg " >
    <div class="modal-content ">
        <div class="modal-header">
            <button class="close" type="button" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h5 class="modal-title" id="myModallabel">角色管理</h5>
        </div>
        <form id="updatetype" class="form-horizontal">
        <div class="modal-body">
            <div class="form-group">
            <label class="control-label col-lg-3">用户名称：</label>
            <div class="col-lg-7">
            <input type="text" value="" id="username" placeholder="Username" class="form-control" readonly="readonly"> </br>
           
            </div>
            </div>
            <div class="form-group">
            <label class="control-label col-lg-3">用户类型：</label>
            <div class="col-lg-7">
                <select ID="UserType" runat="server" AutoPostBack="True" class="form-control"> 
                                                <option Value="1">管理员</option>
                                                <option Value="2">普通用户</option>   
                                            </select></br>
                
            </div>
            </div>
        </div>         
        <div class="modal-footer">
        <button class="btn btn-default" type="button" data-dismiss="modal"  >关闭</button>
            <button  class="btn btn-default" id="update2" type="button" onclick="">更新</button>
        </div>
        </form>
    </div>
</div>
</div>
<script>

$("#password").on('blur',function(){
                 if(($('#password').val() !='000000')){          
                    $("#userpassword1Error").show();     
                }else{
                	$("#userpassword1Error").remove();
                }
            })
            //模态框居中
$('#updatepwd').on('shown.bs.modal', function (e) {
    // 关键代码，如没将modal设置为 block，则$modala_dialog.height() 为零
    $(this).css('display', 'block');
    var modalHeight=$(window).height()/2 - $('#updatepwd .modal-dialog').height()/2
    $(this).find('.modal-dialog').css({
        'margin-top': modalHeight
    });
});
$('#updatetype').on('shown.bs.modal', function (e) {
    // 关键代码，如没将modal设置为 block，则$modala_dialog.height() 为零
    $(this).css('display', 'block');
    var modalHeight=$(window).height()/2 - $('#updatetype .modal-dialog').height()/2
    $(this).find('.modal-dialog').css({
        'margin-top': modalHeight
    });
});
//更新密码
$("#update1").click(function () {
	if(($('#password').val() =='000000')){
		bootbox.confirm({ 
			  size: "small",
			  message: "确定重置此用户密码?", 
			  callback: function(result){ /* result is a boolean; true = OK, false = Cancel*/ }
			});
	}	
})

//删除用户
$("#deleteuser").click(function () {	
		bootbox.confirm({ 
			  size: "small",
			  message: "确定删除此用户?",				  
			  callback: function(result){ 
				  if(result){
					  var id = $(this).attr("data-id");
			            $.ajax({
			                url : "manager/delete/{id},
			                type : "POST",
			                success : function (result) {
			                     if(result.code==100){
			                         alert("删除成功");
			                         $(this).parent().parent().parent().remove();
			                         jsZj();
			                         // 删除成功后刷新页面
			                         window.location.reload();
			                     }else if(result.code==200){
			                         alert("删除失败");
			                     }
			                }
			            });
					  
				  }
			  }
			});	
})
$("#update2").click(function () {
		bootbox.confirm({ 
			  size: "small",
			  message: "确定修改其用户类别?", 
			  callback: function(result){ /* result is a boolean; true = OK, false = Cancel*/ }
			});
	
})
	</script>	
	 			
</body>
</html>
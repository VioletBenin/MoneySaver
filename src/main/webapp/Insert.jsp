<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdn.bootcss.com/bootbox.js/5.3.2/bootbox.js"></script>
</head>
<body>
Hello world

<form action="f1" method="post">
	<input type="text" name="name">
	<input type="password" name="pwd">
	<input type="submit">		

</form>
 <c:forEach var="ulist" items="${userlist}">
										
											<input name="ids" type="checkbox"></br>
											${userlist.id}</br>
											</br>${userlist.name}</br>
											</br>${userlist.password}</br>
											</br>${userlist.telephone}</br>
											</br>${userlist.sex}</br>
											</br>${userlist.age}</br>
										 	</br>${userlist.birthday}</br>
											</br>${userlist.province}</br>
											</br>${userlist.usertype}</br>
										
									</c:forEach>

<!--bootstrap实现弹出模态框-->
<button class="btn btn-default" data-target="#updatepwd" data-toggle="modal">
    点击弹出模态框
</button>
        <!--fade 淡入淡出-->
<div class="modal fade"  id="updatepwd" aria-labelledby="myModallabel" aria-hidden="true" tabindex="-1" onclick="return get_edit_info({user_id})">
<div class="modal-dialog modal-lg " >
    <div class="modal-content ">
        <div class="modal-header">
            <button class="close" type="button" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h5 class="modal-title" id="myModallabel">更改用户密码</h5>
        </div>
        <form id="updatepwd" class="form-horizontal">
        <div class="modal-body">
            <div class="form-group">
            <label class="control-label col-lg-3">用户名称：</label>
            <div class="col-lg-7">
            <input type="text" value="" id="username" placeholder="Username" class="form-control" readonly="readonly"> </br>
           
            </div>
            </div>
            <div class="form-group">
            <label class="control-label col-lg-3">更改密码：</label>
            <div class="col-lg-7">
                <input type="password" placeholder="System Default Password" value="" id="password" class="form-control" ></br>
                <div id="userpassword1Error" name="userpassword1Error" height="35" colspan="2" class="errotext" style="display:none">
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

<script>

$("#password").on('blur',function(){
                 if(($('#password').val() !='000000')){          
                    $("#userpassword1Error").show();
                }
            })
            //模态框居中
$('#updatepwd').on('shown.bs.modal', function (e) {
    // 关键代码，如没将modal设置为 block，则$modala_dialog.height() 为零
    $(this).css('display', 'block');
    var modalHeight=$(window).height() / 2 - $('#updatepwd .modal-dialog').height() / 2;
    $(this).find('.modal-dialog').css({
        'margin-top': modalHeight
    })
});
$("#update1").click(function () {
	
	bootbox.confirm({ 
		  size: "small",
		  message: "确定重置此用户密码?", 
		  callback: function(result){ /* result is a boolean; true = OK, false = Cancel*/ }
		});
	
})
	</script>								
</body>
</html>
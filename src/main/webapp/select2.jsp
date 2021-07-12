<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理员界面——管理用户</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

	<style>
	.table1{padding:3px}
	</style>
	<script>
		function showDiv(str) {
			if(str=='shouView1'){
				document.getElementById('shouView1').style.display = "block";  
				document.getElementById('shouView2').style.display = "none";  
			}else{
				document.getElementById('shouView1').style.display = "none";
				document.getElementById('shouView2').style.display = "block";  
			}	              
        }
	</script>

</head>
<body>
 <div class="container-fluid">
 
        <div class="row">
                <div class="panel panel-default"> 
                    <div class="panel-heading">
                         <span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> 条件查找
                    </div>
                    <!-- 面板内容 -->
                    <div class="panel-body">
                        <div class="row">
                         
                             <!-- 用户名 -->
                            <div class="col-lg-4 col-sm-8 col-xs-8 col-xxs-12">
                                <div class="form-horizontal">
                                    <div class="form-group">
                                         <div class="col-md-4 control-label" >用户名称</div>
                                        <div class="col-md-4">
                                            <input type="text" class="form-control" runat="server" id="Username"  name="Username" />
                                        </div>
 
                                    </div>
                                  </div>
                                </div>
                                 <!-- 手机号码 -->
                            <div class="col-lg-4 col-sm-8 col-xs-8 col-xxs-12">
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <div class="col-md-4 control-label" >手机号码 </div>
                                        <div class="col-md-4">
                                            <input type="text" class="form-control" runat="server" id="telephone" name="telephone" onkeyup="value=value.replace(/[^\d]/g,'')" onblur="value=value.replace(/[^\d]/g,'')" />
                                            
                                        </div>
                                    </div>     
                                    </div>
                                </div>
                                 <!-- 性别 -->
                                <div class="col-lg-4 col-sm-8 col-xs-8 col-xxs-12">
                                <div class="form-horizontal">
                                    <div class="form-group">
                                         <div class="col-md-4 control-label" for="select">用户性别</div>
                                        <div class="col-md-4">
                                            <select ID="Usersex" runat="server" AutoPostBack="True" class="form-control"  >
                                                <option Value="0">男</option>
                                                <option Value="1">女</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                             <!-- 年龄-->
                            <div class="col-lg-4 col-sm-8 col-xs-8 col-xxs-12">
                                <div class="form-horizontal">
                                    <div class="form-group">
                                       <div class="col-md-4 control-label" >用户年龄</div>
                                        <div class="col-md-4">
                                             <input type="number" placeholder="please enter the number" value="" id="password" class="form-control"  />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 所在省份-->
                            <div class="col-lg-4 col-sm-8 col-xs-8 col-xxs-12">
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <div class="col-md-4 control-label" >所在省份</div>
                                        <div class="col-md-4">
                                            <input type="text" class="form-control" runat="server" id="Userid" name="Userpro" />
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                             <!-- 用户类型 -->
                            <div class="col-lg-4 col-sm-8 col-xs-8 col-xxs-12">
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <div class="col-md-4 control-label" for="select">用户类型</div>
                                        <div class="col-md-4">
                                            <select ID="UserType" runat="server" AutoPostBack="True" class="form-control"> 
                                                <option Value="1">管理员</option>
                                                <option Value="2">普通用户</option>   
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                       <div class="row">
                            <div class="col-lg-4 col-sm-8 col-xs-8 col-xxs-12 ">
                                <div class="form-horizontal">
                                    <div class="form-group">
                                          <div class="col-md-4 ">
                                            <input type="button" ID="partSearch" value=" 查询用户 " class="btn btn-success col-md-12 " onclick="showDiv('shouView2');" />
                                        </div>
                                    </div>
                            	</div>
                        	</div>      
                        	
                        	<div class="col-lg-4 col-sm-8 col-xs-8 col-xxs-12">
                                <div class="form-horizontal">
                                    <div class="form-group">
                                          <div class="col-md-4">
                                            <input type="button" action="select" ID="allSearch" value=" 全部用户 " class="btn btn-success col-md-12 " onclick="showDiv('shouView1');" />
                                        </div>
                                    </div>
                            	</div>
                        	</div>      
                        	<div class="col-lg-4 col-sm-8 col-xs-8 col-xxs-12">
                                <div class="form-horizontal">
                                    <div class="form-group">
                                          <div class="col-md-4">
                                            <button class="btn btn-success col-md-12" data-target="#insertuser" data-toggle="modal">添加用户</button>
                                        </div>
                                    </div>
                            	</div>
                        	</div>      
               		 </div>
                </div>
                
                
                
          </div>    
         
					</div>
					
                              
				<div class="shouView1" id="shouView1" style="display: none;"> <%@include file="SelectAll.jsp" %> </div>
				<div class="shouView2"  id="shouView2" style="display: none;"> <%@include file="SelectPart.jsp" %> </div>
		
     
  </div>   
  
  <div class="modal fade"  id="insertuser" aria-labelledby="myModallabel" aria-hidden="true" tabindex="-1" >
<div class="modal-dialog modal-lg " >
    <div class="modal-content ">
        <div class="modal-header">
            <button class="close" type="button" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h5 class="modal-title" id="myModallabel">添加用户</h5>
        </div>
        <form id="insertuser" class="form-horizontal">
        <div class="modal-body">
            <div class="form-group">
            <label class="control-label col-lg-3">用户名称：</label>
            <div class="col-lg-7">
            <input type="text" value="" id="username" placeholder="Username" class="form-control" > </br> 
            <div id="usernameError" height="35" colspan="2" class="errotext" style="display:none">
                <font color="red" size="-1">请输入用户名！</font> </br></div>       
            </div>
            </div>
            <div class="form-group">
            <label class="control-label col-lg-3">用户密码：</label>
            <div class="col-lg-7">
                <input type="password" placeholder="Password" id="password" class="form-control"/></br>
                <div id="userpassword1Error" height="35" colspan="2" class="errotext" style="display:none">
                <font color="red" size="-1">请输入密码！</font> </br></div>
            </div>
            </div>
             <div class="form-group">
            <label class="control-label col-lg-3">手机号码：</label>
            <div class="col-lg-7">
                <input type="text" placeholder="Telephone"  id="telephone" class="form-control" required onblur="checktelephone()" onkeyup="value=value.replace(/[^\d]/g,'')" onblur="value=value.replace(/[^\d]/g,'')"></br>
           <div id="userteleError" height="35" colspan="2" class="errotext" style="display:none">
                <font color="red" size="-1">请输入手机号码！</font> </br></div>       
            </div>
            </div>
             <div class="form-group">
            <label class="control-label col-lg-3">用户性别：</label>
            <div class="col-lg-7">
                            <select ID="Usersex" runat="server" AutoPostBack="True" class="form-control"  >
                                     <option Value="0">男</option>
                                      <option Value="1">女</option>
                             </select>
                                       <br/>
            </div>
            </div>
            <div class="form-group">
            <label class="control-label col-lg-3">用户年龄：</label>
            <div class="col-lg-7">
                <input type="number" value="" id="password" class="form-control" ></br>
            </div>
            </div>    
             <div class="form-group">
             <label class="control-label col-lg-3">所在省份：</label>
            <div class="col-lg-7">
                <input type="text" placeholder="Province" id="province" class="form-control" ></br> 
            </div>
            </div>
             <div class="form-group">
             <label class="control-label col-lg-3">用户类型：</label>
            <div class="col-lg-7">
                <select ID="UserType" runat="server" AutoPostBack="True" class="form-control"> 
                                                <option Value="1">管理员</option>
                                                <option Value="2">普通用户</option>   
                                            </select><br/>
            </div>
            </div>
             
            </div>
             
        <div class="modal-footer">
        <button class="btn btn-default" type="button" data-dismiss="modal"  >关闭</button>
            <button  class="btn btn-default" id="add" type="button" onclick="">添加</button>
        </div>
        </form>
    </div>
</div>
</div>
<script>

<!--验证手机号是否存在 -->
function checktelephone(){
        $.ajax({
            url:"${ctx}/manage/checktelephone",	//发起请求
            type:'post',	//采用post方式
            success:return_json		//调用return_json函数
        });
        function return_json(data) {
            //alert(data);
            //console.log(data);
			var telephone = $('#telephone').val();	//获取用户输入的用户名
			//alert(name);
			var obj1 = JSON.parse(data);			//把后端传递的json数据转换为js数据
			//console.log(obj1.list[0].name)
			for(var i=0;i<obj1.list.length;i++){		//对jss数据进行遍历
				//console.log(obj1.list[i].name)
				if(obj1.list[i].telephone==telephone){			//如果用户名已经存在，提示用户注册其他用户名
					alert("手机号已存在")
					document.getElementById("telephone").value="";	//清空输入框中的数据
				}
			}
        }
    }








$("#password").on('blur',function(){
    if(($('#password').val() == '')){          
       $("#userpassword1Error").show();     
   }else{
   	$("#userpassword1Error").remove();
   }
})



  $('#insertuser').on('shown.bs.modal', function (e) {
    // 关键代码，如没将modal设置为 block，则$modala_dialog.height() 为零
    $(this).css('display', 'block');
    var modalHeight=$(window).height()/2 - $('#insertuser .modal-dialog').height()/2
    $(this).find('.modal-dialog').css({
        'margin-top': modalHeight
    });
});
$("#add").click(function () {
	
		bootbox.confirm({ 
			  size: "small",
			  message: "确定添加该用户?", 
			  callback: function(result){ /* result is a boolean; true = OK, false = Cancel*/ }
			});
	
})
  
  </script>
  
  <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdn.bootcss.com/bootbox.js/5.3.2/bootbox.js"></script>
</body>
</html>
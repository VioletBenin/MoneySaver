// 判断是否为空
function isNull(str) {
    return str == ""
}

// 检查是否为空
function checkElem0(strId) {
    var elem = $('#' + strId)[0];
    $(elem).focus(
        function() {
            $(elem).parent().find("font").css("display", "none")
            $(elem).blur(
                function() {
                    var ans = isNull(elem.value) //是空的吗
                    if (ans)
                        $(elem).parent().find("font").css("display", "inline")
                    else
                        $(elem).parent().find("font").css("display", "none")
                })
        })
} //before submit




function checkElem(strId) {
    var elem = $('#' + strId)[0];
    var ans = isNull(elem.value) //是空的吗
    if (ans)
        $(elem).parent().find("font").css("display", "inline")
    else
        $(elem).parent().find("font").css("display", "none")
    return !ans;
} //submit check




$(
    function() {
        checkElem0('tele')
        checkElem0('password')
    }
)

// 表单提交请求验证
function validate() {
    if (document.getElementById("userLogname").value == "") {
        alert("用户登录名不能为空！");
        document.getElementById("userLogname").focus();
        return false;
    }
    if (document.getElementById("userPwd").value == "") {
        alert("登录密码不能为空！");
        document.getElementById("userPwd").focus();
        return false;
    }
    if (document.getElementById("validateCode").value == "") {
        alert("验证码不能为空！");
        document.getElementById("validateCode").focus();
        return false;
    }
    return true;
}

function changeValidateCode() {
    document.getElementById("validateCode").src =
        "ValidateCodeServlet?rand=" + Math.random();
}


// $(alert())



function checkAll() {
    var verifycode = $('#verifital_input')[0].value;
    if (verifycode == 0)
        alert("验证码不能为空")
    else if (verifycode != verVal)
        alert("验证码错误")
    else {
        // alert("验证码正确！")
        if (checkElem('name') && checkElem('password')) {
            var id = $("#name")[0].value;
            var psw = $('#password')[0].value;
            //check("user@qq.com", "user88888888", json)
            check(id, psw, json)
        } else alert("ID和密码都要填写！")
    }
}





$("input[type='text']").blur(function() {
    if ($(this).val() == '') {
        $("#pop1 strong").html("用户名不能为空");
        $("#pop1").removeClass("hidden");
    } else {
        $("#pop1").addClass("hidden");
    }
});

$("input[type='password']").blur(function() {
    if ($(this).val() == '') {
        $("#pop2 strong").html("密码不能为空");
        $("#pop2").removeClass("hidden");
    } else {
        $("#pop2").addClass("hidden");
    }
});
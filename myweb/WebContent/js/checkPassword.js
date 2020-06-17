//对用户名校验是否存在
/*function checkUsername(){
	//alert("checkname");
	var f=false;
	//javascript所有的变量都是以var定义的
	//javascript的变量属于弱类型
	//获取用户输入的用户名
	var name = document.getElementById("username").value;
	//去除字符串两端空格
	name=name.trim();
	//判断是否为空

	if(name==""){
		document.getElementById("username_span").innerHTML="用户名不能为空";
	}else (name.length<6||name.length>16){
		document.getElementById("username_span").innerHTML="用户名的长度为6-16位";
	}
	else{
		document.getElementById("username_span").innerHTML="";
		//校验用户名是否存在
		//使用ajax异步校验用户名
		$.ajax({
			url:"/oldbookweb_1/checkName",   
			type:"post",
			data:{"username":name},
			dataType:"json",
			async:false,
			success:function(data){
				if(data.msg=="false"){
					//alert("false");
					document.getElementById("username_span").innerHTML="用户名已存在";
				}else{

					document.getElementById("username_span").innerHTML="用户名可用";
					f=true;
				}
			}
		});	

	}
	return f;
}*/
//校验密码是否正确
function checkPassword(){
	var password=document.getElementById("userpassword").value;
	var reg=/^[a-zA-Z]\w{1,15}$/;
	var f = reg.test(password);//判断是否满足正则表达式 
	if(f==false){
		document.getElementById("userpassword").innerHTML="密码格式错误";
		return false;
	}else{
		document.getElementById("userpassword").innerHTML="密码格式正确";
		return true;
	}
}
//校验两次密码是否正确
function checkRePassword(){
	var password=document.getElementById("userpassword").value;
	var repassword=document.getElementById("confirmpassword").value;
	if(password==repassword){
		document.getElementById("confirmpassword").innerHTML="两次密码相一致";
		return true;
	}else{
		document.getElementById("confirmpassword").innerHTML="两次输入密码不一致!请重新确认";
		return false;
	}
}


/*//验证邮箱
function checkEmail(){
	var email=document.getElementById("emailRe").value;
	//两种引用正则表达式方式
	//var reg = new RegExp("^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$");
	var reg=/^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
	var f = reg.test(email);
	if(f==false || email==""){
		document.getElementById("email_span").innerHTML="邮箱格式错误";
		return false;
	}
	else{
		document.getElementById("email_span").innerHTML="";
		//校验邮箱是否注册
		//使用ajax异步校检邮箱
		$.ajax({
			url:"/oldbookweb_1/checkEmail",
			type:"post",
			data:{"email":email},
			dataType:"json",
			async:false,
			success:function(data){
				if(data.msg=="false"){
					//alert("false");
					document.getElementById("email_span").innerHTML="邮箱已注册";
				}else{

					document.getElementById("email_span").innerHTML="邮箱可用";
					f=true;
				}
			}
		});	

	}
	return f;
}*/
/*function check(){
	var name = checkname();
	var password = checkPassword();
	var repassword = checkRepassword();
	var nickname = checkNickname();
	var email=  checkEmail();
	if(name&&password&&repassword&&nickname&&email)
		return true;
	else
		return false;
}	*/
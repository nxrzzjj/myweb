<!-- 导入相关的包 -->
<%@page import="model.Ordered"%>
<%@page import="servlet.OrderUserFindServlet"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.io.*,java.util.List,java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en" >
<head>
<meta charset="UTF-8">
<title>用户注册界面</title>


<link rel="stylesheet" href="css/style2.css">

</head>
<body>

<script>
		function validate() {
			var username = document.Iform.username.value;
			var psw1 = document.Iform.userpassword.value;
			var psw2 = document.Iform.confirmpassword.value;
			var age = document.Iform.age.value;
			if (username == "") {
				alert("请输入用户名");
				document.Iform.username.focus();//光标定位
				return false;
			} else if (psw2 != psw1) {
				alert("两次密码不一致，请重新输入！");
				document.Iform.userpassword.focus();//光标定位
				return false;
			} else if (age < 0) {
				alert("年龄不能为负数，请重新输入！");
				document.Iform.age.focus();//光标定位
				return false;
			}
			
			return true;
		}
	</script>

<div class="container">
	<div class="header">
		<h2>用户注册</h2>
	</div>
	
	<form  action="RegisterServlet" id="form" class="form" name="Iform" method="post"
		onSubmit="return validate()">
		<div class="form-control">
			<label for="username">用户名</label>
			<input type="text" placeholder="用户名" name="username" />
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		<div class="form-control">
			<label for="username">年龄</label>
			<input type="text" placeholder="请输年龄" name="age" />
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		<div class="form-control">
			<label for="username">性别</label>
			
			 <select name="gender">
             <option selected="selected">男</option>
              <option>女</option>
             </select>
             
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		<div class="form-control">
			<label for="username">密码</label>
			<input type="password" placeholder="密码" name="userpassword" id="userpassword"/>
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		<div class="form-control">
			<label for="username">确认密码</label>
			<input type="password" placeholder="确认密码" name="confirmpassword" id="confirmpassword"/>
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
	
		<button>提交</button>
	</form>
	
<!-- 	<a href="index.jsp"> 回到主页面</a></div> -->
<!-- 	<a href="UserInfo.jsp"> 回到用户中心</a></div> -->

</div>


<input type="button" onclick="window.location='index.jsp'"
		value="返回主页面">
</body>
</html>
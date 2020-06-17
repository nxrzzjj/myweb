<!-- 导入相关的包 -->
<%@page import="model.Ordered"%>
<%@page import="servlet.OrderUserFindServlet"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.io.*,java.util.List,java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<title>登陆页面</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!--图标-->
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	
	<!--布局框架-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	
	<!--主要样式-->
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body>

<div class="login">
	<div class="container-login100">
		<div class="wrap-login100">
		    <form class="login100-form validate-form" action="DLoginServlet" method="post">
		     
				<span class="login100-form-title">
					医生登录
				</span>
            
				<div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="dname" placeholder="医生名">
					<span class="focus-input100"></span>
					<span class="symbol-input100">
						<i class="fa fa-envelope" aria-hidden="true"></i>
					</span>
				</div>

				<div class="wrap-input100 validate-input">
					<input class="input100" type="password" name="dpassword"" placeholder="医生密码">
					<span class="focus-input100"></span>
					<span class="symbol-input100">
						<i class="fa fa-lock" aria-hidden="true"></i>
					</span>
				</div>
				
				
				<div class="container-login100-form-btn">
					<button class="login100-form-btn" type="submit">登录</button>
				</div>
				</form>
					
			

			<form class="login100-form validate-form" action="LoginServlet" method="post">
				<span class="login100-form-title">
					用户登录
				</span>
				
        
				<div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="username" placeholder="用户名">
					<span class="focus-input100"></span>
					<span class="symbol-input100">
						<i class="fa fa-envelope" aria-hidden="true"></i>
					</span>
				</div>

				<div class="wrap-input100 validate-input">
					<input class="input100" type="password" name="userpassword"" placeholder="密码">
					<span class="focus-input100"></span>
					<span class="symbol-input100">
						<i class="fa fa-lock" aria-hidden="true"></i>
					</span>
				</div>
	
				<div class="container-login100-form-btn">
					<button class="login100-form-btn" type="submit">登录</button>
				</div>
				</form>

					
		</div>
	</div>
</div>

</body>
</html>
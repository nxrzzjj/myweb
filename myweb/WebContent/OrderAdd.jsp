<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="java.net.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	request.setCharacterEncoding("UTF-8");
%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户填写预约信息</title>
<link rel="stylesheet" href="css/style2.css">
<!-- css样式 -->
<style type="text/css">
body {
	backgroud: url(images/a.png) no-repeat center 0
}

;
font {color ="darkgray"
	
}

;
tr {
	height: 60px
}
</style>

<!-- 声明js代码域 -->
<script language="javascript" type="text/javascript"
	src="${pageContext.request.contextPath }/js/checkPassword.js"></script>

<!-- body主体 -->
</head>
<body style="text-align: center;">
	<!-- 获取当前时间 -->
	<%
		Date d = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String now = df.format(d);
	%>

	<%-- 当前时间：<%=now %> --%>

	<%
		String dname1 = request.getParameter("dname");
		//out.println("返回的医生名：" + dname1);
		String dname = URLDecoder.decode(dname1, "UTF-8");  
		//out.println("返回的医生名：" + dname);
		String dnumber = request.getParameter("dnumber");
		
		String username = (String) request.getSession().getAttribute("username");
		String age = (String) request.getSession().getAttribute("age");
		String gender = (String) request.getSession().getAttribute("gender");
	%>
	<div class="container">
	<div class="header">
		<h2>请填写预约信息</h2>
	</div>
	<form action="OrderAddServlet" method="post"  class="form" name="Iform">
		
			<div class="form-control">
			<label for="username">病人姓名</label>
			<input type="text" placeholder="病人姓名" name="username" Id="username" value="<%=username%>">
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		<div class="form-control">
			<label for="username">病人年龄</label>
			<input type="text" placeholder="病人年龄" name="age" value="<%=age%>">
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>	
				

		
		<div class="form-control">
			<label for="username">病人性别</label>
			
			 <select name="gender">
             <option selected="<%=age%>">男</option>
             <option>女</option>
             </select>
             
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>		
		
		<div class="form-control">
			<label for="username">医生姓名</label>
			<input type="text" placeholder="医生姓名" name="dname" Id="dname"
					value="<%=dname%>" >
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>	
		
		<div class="form-control">
			<label for="username">医生编号</label>
			<input type="text" placeholder="医生编号" name="dnumber" Id="dnumber"
					value="<%=dnumber%>" >
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		<div class="form-control">
			<label for="username">预约时间</label>
			<input type="text" placeholder="预约时间" name="ordertime" value="<%=now%>">
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		<div class="form-control">
			<label for="username">预约状态</label>
			<input type="text" type="text" name="state" value="ok" readonly>
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
			
			<input type="reset" value="清空">
			<input type="submit" value="提交" onclick="checkdata()">
		
	</form>
</body>
</html>

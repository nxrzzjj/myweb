<!-- 导入相关的包 -->
<%@page import="model.User"%>
<%@page import="servlet.FindDoctorServlet"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.io.*,java.util.List,java.util.ArrayList"%>
<!-- 正文 -->
<!DOCTYPE html>
<html>
<head>
<%request.setCharacterEncoding("UTF-8");%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>查询用户信息</title>
<meta content="信息完善，让彼此更熟悉！" name="keywords">
<link rel="stylesheet" href="css/searchstyle.css" />
</head>


<body style="background: url(doctoe-1.png)">
<section class="products2">
	<div class="container2">
	<br>
	<font size=7 color=#494e8f face="Hanzipen SC"><center>用户信息管理平台</center></font>
	<br>
	<table align="center" bordercolor="#2a5caa">
		<tr>
			<td>用户名</td>
			<td>用户密码</td>
			<td>年龄</td>
			<td>性别</td>
			<td>电话号码</td>
			<td>邮箱</td>

		</tr>
		<%

			ArrayList<User> list = (ArrayList<User>) request.getAttribute("list");

			if (list == null || list.size() < 1) {
				out.print("该用户没有注册记录！");
			} else {
				for (User info : list) {
		%>
		<tr>
			<td><%=info.getUserName()%></td>
			<td><%=info.getUserPassword()%></td>
			<td><%=info.getAge()%></td>
			<td><%=info.getGender()%></td>
			<td><%=info.getPhoneNumber()%></td>
			<td><%=info.getEmail()%></td>
			<td><a class="btn btn-success btn-lg" href="index.jsp">返回主界面</a>
		    <td><a class="btn btn-success btn-lg" href="UserInfo.jsp">返回用户中心</a>
			
		</tr>
		<%
			}
			}
		%>

	</table>
	<br>
	<br>
	<br>
	
</div>
</section>
</body>
<iframe src="${pageContext.request.contextPath }/foot.html" width="100%"
	height="150" scrolling="no" frameborder="0"></iframe>

</html>

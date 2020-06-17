<!-- 导入相关的包 -->
<%@page import="model.Doctor"%>
<%@page import="model.User"%>
<%@page import="servlet.FindDoctorServlet"%>
<%@page import="dao.DAO"%>
<%@page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.io.*,java.util.List,java.util.ArrayList"%>
<!-- 正文 -->
<!DOCTYPE html>
<html>
<head>
<%
	request.setCharacterEncoding("UTF-8");
%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>查询医生信息</title>


<link href="css/base.css" type="text/css" rel="stylesheet" />
<link href="css/my_infor.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="css/searchstyle.css" />


<meta content="信息完善，让彼此更熟悉！" name="keywords">
</head>


<body style="background: url(doctor-1.png)">
<section class="products2">
	<div class="container2">
	<div class="search">
	<br>
	<br>
	<br>
	<font size=7 color=#494e8f face="Hanzipen SC"><center>便捷医生信息查询平台</center></font>
	<br>
	<br>
	<!-- 	指定条件查询医生信息
 -->


	<form action="FindSelectedDoctorQServlet" method="post">
		<select name="hospital">
			<option value="null">选择医院</option>
			<%
				ArrayList<String> list1 = (ArrayList) session.getAttribute("list1");
				//Doctor doctor = new Doctor();
				//request.setAttribute("doctor", doctor);
			%>
			<c:forEach items="${list1}" var="item">
				<option value="${item}">${item}</option>
			</c:forEach>
		</select> <select name="department">
			<option value="null">选择科室</option>
			<%
				ArrayList<String> list2 = (ArrayList) session.getAttribute("list2");
			%>
			<c:forEach items="${list2}" var="items">
				<option value="${items}">${items}</option>
			</c:forEach>
		</select>


		<%
			String hospital = (String) request.getParameter("hospital");
			String department = (String) request.getParameter("department");
		%>
		<input type="hidden" name="department" value="department" /> <input
			type="hidden" name="hospital" value="hospital" /> <input
			type="submit" value="查询医生信息" />
	</form>


	<table align="center" bordercolor="#2a5caa">
		<tr>
			<td>医生姓名</td>
			<td>医生编号</td>
			<td>挂号费用</td>
			<td>被预约人数</td>
			<td>概要</td>
			<td>电话</td>
			<td>邮箱</td>

			<td>科室</td>
			<td>医院</td>
			<td>单日可预约最大人数</td>
			<td>当前是否可预约</td>

		</tr>

		<%
			String messages = (String) request.getAttribute("message");

			ArrayList<Doctor> list = (ArrayList<Doctor>) request.getAttribute("list");
			//out.println(list);
			if (list == null || list.size() < 1) {
				out.print("当前系统没有医生注册！");
			} else {
				for (Doctor info : list) {
		%>
		<tr>
			<td><%=info.getDname()%></td>
			<td><%=info.getDnumber()%></td>
			<td><%=info.getDcost()%></td>
			<td><%=info.getDnum_people()%></td>
			<td><%=info.getDresume()%></td>
			<td><%=info.getDtel()%></td>
			<td><%=info.getDemail()%></td>
			<td><%=info.getDepartment()%></td>
			<td><%=info.getHospital()%></td>
			<td><%=info.getMAXnum()%></td>
			<td><%=info.getAllowstate()%></td>
</tr>
		<%
			}
			}
		%>

	</table>
	<br>
	<br>
	<br>
	
	
	<a class="btn btn-success btn-sm" href="index.jsp">返回主界面</a>
	 </div>
     </div>
</section>
</body>


</html>

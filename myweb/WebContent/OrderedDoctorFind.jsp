<!-- 导入相关的包 -->
<%@page import="model.Ordered"%>
<%@page import="model.Doctor"%>
<%@page import="model.User"%>

<%@page import="servlet.OrderUserFindServlet"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.io.*,java.util.List,java.util.ArrayList"%>
<!-- 正文 -->
<!DOCTYPE html>
<html>
<head>
<%request.setCharacterEncoding("UTF-8");%> 

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>医生查询预约信息</title>


<link href="css/base.css" type="text/css" rel="stylesheet" />
<link href="css/my_infor.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="css/searchstyle.css" />

<meta content="信息完善，让彼此更熟悉！" name="keywords">
</head>


<body style="background: url(a.png)">
<section class="products">
	<div class="container">
	<br>
	<br>
	<br>
	<font size=7 color=#494e8f face="Hanzipen SC"><center>医生预约信息管理平台</center></font>
	<br>
	<br>
	<table align="center" bordercolor="#2a5caa">
		<tr>
			<td>预约ID号</td>
			<td>预约者姓名</td>
			<td>预约者年龄</td>
			<td>预约者性别</td>

			<td>医生姓名</td>
			<td>医生编号</td>
			<td>被预约人数</td>

			<td>预约时间</td>
			<td>预约状态</td>

<!-- 			<td>预约者电话</td>
 -->

		</tr>

		<%
			ArrayList<Ordered> list = (ArrayList<Ordered>) request.getAttribute("list");

			if (list == null || list.size() < 1) {
				out.print("目前没有预约信息！");
			} else {
				for (Ordered info : list) {
		%>
		<tr>
			<td><%=info.getId()%></td>
			<td><%=info.getUserName()%></td>
			<td><%=info.getAge()%></td>
			<td><%=info.getGender()%></td>

			<td><%=info.getDname()%></td>
			<td><%=info.getDnumber()%></td>
			<td><%=info.getDnum_people()%></td>


			<td><%=info.getOrderTime()%></td>
			<td><%=info.getState()%></td>

			<!-- 			缺预计等待状态
 --><td><a class="btn btn-success btn-sm"
				href="javascript:location.href=encodeURI(encodeURI('DoctorDelOrderServlet?id=<%=info.getId()%>&dname=<%=info.getDname()%>&state=<%=info.getState()%>&input=next'))">下一位</a></td>
<td><a class="btn btn-success btn-sm"
				href="javascript:location.href=encodeURI(encodeURI('DoctorDelOrderServlet?id=<%=info.getId()%>&dname=<%=info.getDname()%>&state=<%=info.getState()%>&input=delete'))">删除</a></td> 
		
		</tr>
		<%
			}
				%>
				<% 
			}
			%>
		

	</table>
	<br>
	<br>
	<br>
	
	
	<a href="index.jsp"> 回到主页面</a>
	<a href="DoctorInfo.jsp"> 回到医生中心</a>
	 </div>
</section>
</body>


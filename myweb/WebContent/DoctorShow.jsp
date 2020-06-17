<!-- 导入相关的包 -->
<%@page import="model.Doctor"%>
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

<title>查询医生信息</title>
<meta content="信息完善，让彼此更熟悉！" name="keywords">
<link rel="stylesheet" href="css/searchstyle.css" />
</head>


<body style="background: url(doctor-1.png)">
<section class="products2">
	<div class="container2">
	<div class="search">
	<br>
	<font size=7 color=#494e8f face="宋体"><center>医生信息管理平台</center></font>
	<br>
	<table align="center" bordercolor="#2a5caa">
		<tr>
			<td>医生姓名</td>
			<td>密码</td>
			<td>医生编号</td>
			<td>挂号费用</td>
			<td>被预约人数</td>
			<td>医生概要</td>
			<td>电话号码</td>
			<td>邮箱地址</td>

			<td>科室</td>
			<td>医院</td>
			<td>单日可预约最大人数</td>
			<td>当前可预约状态</td>
		</tr>

		<%
			String messages = (String) request.getAttribute("message");

			ArrayList<Doctor> list = (ArrayList<Doctor>) request.getAttribute("list");

			if (list == null || list.size() < 1) {
				out.print("该医生当前没有注册记录！");
			} else {
				for (Doctor info : list) {
		%>
		<tr>
			<td><%=info.getDname()%></td>
			<td><%=info.getDpassword()%>
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
	
</body>
<a class="btn btn-success btn-sm" href="index.jsp">返回主界面</a>
<a class="btn btn-success btn-sm" href="DoctorInfo.jsp">返回医生中心</a>
</div>
     </div>
</section>	


</html>

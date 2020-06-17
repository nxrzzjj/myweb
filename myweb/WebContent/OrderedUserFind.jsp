<!-- 导入相关的包 -->
<%@page import="model.Ordered"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.io.*,java.util.List,java.util.ArrayList"%>
<!-- 正文 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
<head>
<%request.setCharacterEncoding("UTF-8");%> 

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>用户查询预约信息</title>


<link href="css/base.css" type="text/css" rel="stylesheet" />
<link href="css/my_infor.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="css/searchstyle.css" />

<meta content="信息完善，让彼此更熟悉！" name="keywords">
</head>


<body style="background: url(a.png)">
<section class="products2">
	<div class="container2">
	<!-- <form action="UserDelOrderServlet" method="post">

		id：<input type="password" name="id"><br>
		 <input type="submit" value="提交">
	</form> -->
	<br>
	<br>
	<br>
	<font size=7 color=#494e8f face="Hanzipen SC"><center>用户预约信息管理平台</center></font>
	<br>
	<br>

	<table align="center" bordercolor="#2a5caa">
		<tr>
			<td>预约ID号</td>

			<td>医生姓名</td>
			<td>医生编号</td>
			<td>预约者姓名</td>
			<td>预约者年龄</td>
			<td>预约者性别</td>
			<td>预约时间</td>
			<td>预约状态</td>

			<!-- <td>挂号费用</td>
			<td>被预约人数</td>
			<td>医生概要</td>
			<td>医生电话号码</td>

			<td>预约者电话</td>

			<td>预计等待时间</td> -->
		</tr>

		<%
			ArrayList<Ordered> list = (ArrayList<Ordered>) request.getAttribute("list");

			if (list == null || list.size() < 1) {
				out.print("该用户目前没有预约信息！");
			} else {
				for (Ordered info : list) {
		%>
		<tr>
			<td><%=info.getId()%></td>

			<td><%=info.getDname()%></td>
			<td><%=info.getDnumber()%></td>
			<%-- <td><%=info.getDcost()%></td>
			<td><%=info.getDnum_people()%></td>
			<td><%=info.getDresume()%></td>
			<td><%=info.getDtel()%></td>
			 --%>
			<td><%=info.getUserName()%></td>
			<td><%=info.getAge()%></td>
			<td><%=info.getGender()%></td>
			<%-- 			<td><%=info.getPhoneNumber()%></td>
 --%>
			<td><%=info.getOrderTime()%></td>
			<td><%=info.getState()%></td>

		
			<td><a class="btn btn-success btn-sm"
				href="javascript:location.href=encodeURI(encodeURI('UserDelOrderServlet?idname=<%=info.getId()%>&username=<%=info.getUserName()%>&dname=<%=info.getDname()%>&state=<%=info.getState()%>'))">删除</a></td> 
		
		</tr>
		<%
			}
			}
		%>

	</table>




	<br>
	<br>
	<br>
<a href="index.jsp"> 回到主页面</a>
<a href="UserInfo.jsp"> 回到用户中心</a>
 </div>
</section>
</body>

</html>

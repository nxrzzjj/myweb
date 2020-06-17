<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <%request.setCharacterEncoding("UTF-8");%> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>医生信息基本操作</title>
<link rel="stylesheet" href="css/searchstyle.css" />
</head>
<body>
<section class="products">
	<div class="container">
        <h3>个人信息管理平台</h3>
        <p>角色：医生</p>
	       <div class="search">
<input  class="btn" type="button" onclick="window.location='${pageContext.request.contextPath}/DoctorServlet?ss=1'" value="查看个人信息">
<input  class="btn" type="button" onclick="window.location='${pageContext.request.contextPath}/DoctorServlet?ss=2'" value="修改个人信息">
<input  class="btn" type="button" onclick="window.location='${pageContext.request.contextPath}/DoctorServlet?ss=3'" value="删除个人信息">
<input  class="btn" type="button" onclick="window.location='${pageContext.request.contextPath}/OrderDoctorFindServlet'" value="查看个人被预约情况">
  <p></p>
<input  class="btn" type="button" onclick="window.location='${pageContext.request.contextPath}/DoctorUpdYYstateServlet'" value="当前可预约">
<input  class="btn" type="button" onclick="window.location='index.jsp'" value="主页面">
 </div>
     </div>
</section>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <%request.setCharacterEncoding("UTF-8");%> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户中心</title>
<link rel="stylesheet" href="css/searchstyle.css" />
</head>
<body>
<section class="products">
	<div class="container">
<h3>个人信息管理平台</h3>
        <p>角色：用户</p>
          <div class="search">
<input class="btn"  type="button" onclick="window.location='${pageContext.request.contextPath}/UserServlet?ss=1'" value="查看个人信息">
<!-- <input type="button" onclick="window.location='ImproveInfo.jsp'" value="修改个人信息">
 -->
<input class="btn" type="button" onclick="window.location='${pageContext.request.contextPath}/UserServlet?ss=3'" value="修改个人信息">
<input class="btn"  type="button" onclick="window.location='${pageContext.request.contextPath}/UserServlet?ss=2'" value="删除个人信息">
<input class="btn" type="button" onclick="window.location='${pageContext.request.contextPath}/OrderUserFindServlet'" value="查看个人预约情况">
<input class="btn" type="button" onclick="window.location='${pageContext.request.contextPath}/FindDoctorServlet'" value="显示医生信息">
<input class="btn" type="button" onclick="window.location='index.jsp'" value="主页面">
 </div>
     </div>
</section>
</body>
</html>
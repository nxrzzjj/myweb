<!-- 导入相关的包 -->
<%@page import="model.Doctor"%>
<%@page import="servlet.FindDoctorServlet"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.io.*,java.util.List,java.util.ArrayList"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title></title>
	<!--重置样式-->
    <link href="css/reset.css" rel="stylesheet">
    <!--幻灯片-->
	<link href="css/hwslider.css" rel="stylesheet">
    <!--bootstrap css 文件-->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <!--字体 -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!--自定义 -->
    <link href="css/style.css" rel="stylesheet">
  </head>
<body>
	<!--头部-->
	<nav class="navbar navbar-default">
	  <div class="container">
	    <!-- 移动端导航图标 -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="#">Hospital</a>
	    </div>
	    <!-- 导航-->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="index.jsp">首页 <span class="sr-only"></span></a></li>
	          <li><a href="login.jsp">登录</a></li>
	        <li><a href="register.jsp">用户注册</a></li>
	        <li><a href="AddDoctor.jsp">医生注册</a></li>
	         <li><a href="FindDoctorQServlet">查看在诊医生信息</a></li>
	        <li><a href="about.jsp">关于我们</a></li>
	        <li><a href="news.jsp">医疗动态</a></li>
	        <li><a href="resource.jsp">医疗资源</a></li>
	        <li><a href="contact.jsp" class="active">联系我们</a></li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<!--幻灯片-->
	<div class="page1-title">
		<div class="container">
		</div>
	</div>
	<!--联系我们-->
  <div class="main" role="main">
    <div class="container p50"> 
        <div class="contact row">  
	        <div class="map col-md-6 col-sm-12">
	        	<iframe src="ditu.html" style="width: 100%; height: 450px; padding: 10px;"></iframe>
	        </div>
	        <form method="post" action="index.jsp" class="left_form col-md-6">
				    	<div>
					    	<span><label>您的姓名</label></span>
					    	<span><input name="userName" type="text" class="textbox"></span>
					    </div>
					    <div>
					    	<span><label>您的邮箱</label></span>
					    	<span><input name="userEmail" type="text" class="textbox"></span>
					    </div>
					    <div>
					     	<span><label>联系电话</label></span>
					    	<span><input name="userPhone" type="text" class="textbox"></span>
					    </div>
					    <div>					    	
					    	<span><label>其他要求</label></span>
					    	<span><textarea name="userMsg"> </textarea></span>
					    </div>
					   	<div>
					   		<span><input type="submit" value="提交" class="myButton" ></span>
					  	</div>
						</div>
			    </form>
			</div>
  	</div>
	</div>
	<!--尾部-->
	<footer>
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-12">
						<div class="single-footer-widget">
            	<div class="section-heading">
            	<h4>关于我们</h4>
            	<div class="line"></div>
          		</div>           
          		<p>如有不适，尽快就医。沉着冷静，谨遵医嘱！</p>
          	</div>
					</div>
					<div class="col-md-3 col-sm-12 f1">
						<div class="single-footer-widget">
	            <div class="section-heading">
	            <h4>我们的服务</h4>
	            <div class="line"></div>
              </div>
              <ul class="footer-service">
                <li><a href="#"><span class="fa fa-check"></span>病毒常识普及</a></li>
                <li><a href="#"><span class="fa fa-check"></span>防疫妙招放送</a></li>
                <li><a href="#"><span class="fa fa-check"></span>病毒实况播报</a></li>
                <li><a href="#"><span class="fa fa-check"></span>医患在线预约</a></li>
              </ul>
            </div>
					</div>
					<div class="col-md-3 col-sm-12 f2">
						<div class="single-footer-widget">
	            <div class="section-heading">
	            <h4>关注我们</h4>
	            <div class="line"></div>
            	</div>
              <img src="images/status.gif"/>
            </div>
					</div>
					<div class="col-md-3 col-sm-12">
						<div class="single-footer-widget">
                <div class="section-heading">
                <h4>联系我们</h4>
                <div class="line"></div>
              </div>
              <address class="contact-info">
                <p><span class="fa fa-home"></span>山东省威海市哈尔滨工业大学（威海）二公寓</p>
                <p><span class="fa fa-phone"></span>17860971950</p>
                <p><span class="fa fa-envelope"></span>1254773039@qq.com</p>
              </address>
              </div>
					</div>
				</div>
			</div>
		</div>
	</footer>
		<!--jq和bootstrapjs 文件 -->
		<script src="js/jquery.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/bootstrap.js" ></script>
		<!--幻灯片JS 文件 -->
		<script type="text/javascript" src="js/jquery.hwslider.min.js" ></script>
		<script>
			$(function(){
				$("#hwslider").hwSlider({
					height:290,
					autoPlay:true,
					arrShow:true,
					dotShow:true,
					touch:false,
				});
			});
		</script>
</body>
</html>
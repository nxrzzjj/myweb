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
	        <li><a href="news.jsp" class="active">医疗动态</a></li>
	        <li><a href="resource.jsp">医疗资源</a></li>
	        <li><a href="contact.jsp">联系我们</a></li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<!--幻灯片-->
	<div class="page-title">
		<div class="container">
		</div>
	</div>
	<!--团队-->
	<div class="team p50">
		<section class="team-section go_pt eo_pb">
			<div class="container">
				<div class="row team-style4">
					
					
					
					<div class="col-md-4 col-sm-6">
						<div class="team-post">
							<div class="thumb">
								<img src="images/15.jpg" alt="">
							</div>
							<div class="content">
								<h4 class="title">荷兰出现疑似“水貂传人”新冠病例 </h4>
								<h5 class="sub-title">光明网</h5>
								<p>美国有线电视新闻网（CNN）20日报道称，荷兰政府相信，该国一只（被感染的）水貂可能已经将新冠病毒传染给了人类。目前，荷兰正在对该国所有水貂养殖场实行强制性的（抗体）检测。</p>
								<a href="news-show1.jsp" class="profile">阅读更多</a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="team-post">
							<div class="thumb">
								<img src="images/14.jpg" alt="">
							</div>
							<div class="content">
								<h4 class="title">《自然》：新冠患者重症预警信号被发现</h4>
								<h5 class="sub-title">光明网</h5>
								<p>5月20日，《自然》杂志在线发表了一篇来自上海市公共卫生临床中心与转化医学国家重大科技基础设施（上海）以及瑞金医院等单位合作研究的题为</p>
								<a href="news-show2.jsp" class="profile">阅读更多</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
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
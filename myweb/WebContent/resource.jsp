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
	        <li><a href="resource.jsp" class="active">医疗资源</a></li>
	        <li><a href="contact.jsp">联系我们</a></li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<!--幻灯片-->
	<div class="page2-title">
		<div class="container">
		</div>
	</div>
	<!--医疗资源-->
	<div class="r-top p50">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h3>最充足的医疗资源</h3>
					<p>汇集威海多家甲等综合医院，集医疗、教学、科研于一体。以学科齐全、技术力量雄厚、享誉海内外。</p>
				</div>
				<div class="col-sm-4 col-xs-12">
					<img src="images/r (1).png"/>
					<h4>我们的研究</h4>
					<p>集医疗、教学、科研于一体，享誉海内外，医生均为业界权威。</p>
					
				</div>
				<div class="col-sm-4 col-xs-12">
					<img src="images/r (2).png"/>
					<h4>我们的救护车</h4>
					<p>具有“严谨、求</p>
					<p>精、勤奋、奉献”的精神和兼格以及“三基”、“三严”的现代医学理念，及时、快速、准确。</p>
				</div>
				<div class="col-sm-4 col-xs-12">
					<img src="images/r (3).png"/>
					<h4>我们的医生</h4>
					<p>部门细化，方便智能，对症专科。</p>
					<p></p>
				</div>
			</div>
		</div>
	</div>
	<div class="r-mid">
		<div class="container-fluid">
			<img src="images/r.png"/>
				<h3>—    最专业的医疗技术    —</h3>
				<p>医院形成了“严谨、求精、勤奋、奉献”的精神和兼格，创立了“三基”、“三严”的现代</p>
				<p>医学教育理念，形成了以“教授、病案、图书馆”著称的星际“三宝”，培养造需就了许多一代医学大师和多位中国现代</p>
		</div>
	</div>
	<div class="r-bottom p50">
		<div class="container-fluid">
				<h3>专家团队</h3>
				<p>我们有最专业的专家团队为您保驾护航</p>
		</div>
		<div class="container p50">
			<div class="row">
				<div class="col-md-3 col-sm-6 col-xs-6 my-team-member wow fadeInUp">
	        <div class="my-member-img">
	          <img src="images/dcj.jpg" class="img-responsive" alt="team01">
	        </div>
	        <div class="my-team-detail text-center">
	          <h4 class="my-member-name">董崇娟</h4>
	          <p class="my-member-post">威海市中心医院  儿科主任</p>  
	        </div>        
	      </div>
	      <div class="col-md-3 col-sm-6 col-xs-6 my-team-member wow fadeInUp">
	        <div class="my-member-img">
	          <img src="images/lhq.jpg" class="img-responsive" alt="team01">
	        </div>
	        <div class="my-team-detail text-center">
	          <h4 class="my-member-name">刘厚强</h4>
	          <p class="my-member-post">威海市中心医院  消化科主任</p>  
	        </div>        
	      </div>
	      <div class="col-md-3 col-sm-6  col-xs-6 my-team-member wow fadeInUp">
	        <div class="my-member-img">
	          <img src="images/wzy.jpg" class="img-responsive" alt="team01">
	        </div>
	        <div class="my-team-detail text-center">
	          <h4 class="my-member-name">王忠叶</h4>
	          <p class="my-member-post">威海市中心医院 妇科主任</p>  
	        </div>        
	      </div>
	      <div class="col-md-3 col-sm-6 col-xs-6 my-team-member wow fadeInUp">
	        <div class="my-member-img">
	          <img src="images/zjd.jpg" class="img-responsive" alt="team01">
	        </div>
	        <div class="my-team-detail text-center">
	          <h4 class="my-member-name">邹积典</h4>
	          <p class="my-member-post">威海市中心医院 神经外科主任</p>  
	        </div>        
	      </div>

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
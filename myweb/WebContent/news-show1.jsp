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
	<div class="mianb p50">
			<div class="container">
				<div class="row">
					<div class="news_show">
						<div class="container">
							<div class="row">
								<div class="xiangq">
									<h4>荷兰出现疑似“水貂传人”新冠病例 </h4>
									<span>来源：光明网&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2020-5-21&nbsp;&nbsp;&nbsp;&nbsp;点击次数：1203</span>
								</div>
								<div class="xiangq_top">
										<p class="col-md-12 col-sm-12 col-xs-12">报道称，荷兰政府在19日晚的一份声明中说，“基于仍在进行中的水貂养殖场新冠病毒感染情况得出的新研究，水貂传染给人类是有可能的”，“这项研究还表明，水貂也可能在感染新冠病毒后未出现相关症状。”</p>
										<p class="col-md-12 col-sm-12 col-xs-12">荷兰政府表示，对水貂的抗体检测将扩大到“荷兰所有水貂养殖场，并将成为强制性的。”
此外，报道称，荷兰政府还表示，其认为新冠病毒于农场之间传播时，猫可能发挥了作用。“正在进行的研究表明，两个受感染农场的病毒非常相似。”荷兰政府声明说，在一个水貂养殖场的11只猫中，有3只猫被发现感染了新冠病毒。</p>
		                                <p class="col-md-12 col-sm-12 col-xs-12">声明还表示，“在调查过程中，建议受（病毒）感染的水貂养殖场确保猫不能进出养殖场。”

路透社20日在报道此事时提到，荷兰农业大臣斯考滕当天在提交给议会的一封信中说，一名在水貂养殖场工作的工人从水貂身上感染了新冠病毒。斯考滕承认，其办公室早些时候发布的关于“人类可以将（新冠）病毒传染给动物、但反过来不会被感染”的警告是错误的。</p>
							   </div>
							   <div class="top_p clear_float">
								   	<P><a href="news-show1.jsp">上一篇：无</a></P>
								   	<P><a href="news-show2.jsp">下一篇：《自然》：新冠患者重症预警信号被发现</a></P>
							   </div>
						   </div>
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
					<div class="col-md-3 col-sm-12">
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
					<div class="col-md-3 col-sm-12 f1">
						<div class="single-footer-widget">
	            <div class="section-heading">
	            <h4>关注我们</h4>
	            <div class="line"></div>
            	</div>
              <img src="images/status.gif"/>
            </div>
					</div>
					<div class="col-md-3 col-sm-12 f2">
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
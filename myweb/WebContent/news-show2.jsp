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
									<h4>《自然》：新冠患者重症预警信号被发现</h4>
									<span>来源：光明网&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2020-5-21&nbsp;&nbsp;&nbsp;&nbsp;点击次数：1345</span>
								</div>
								<div class="xiangq_top">
										<p class="col-md-12 col-sm-12 col-xs-12">5月20日，《自然》杂志在线发表了一篇来自上海市公共卫生临床中心与转化医学国家重大科技基础设施（上海）以及瑞金医院等单位合作研究的题为《与新冠临床结果相关的病毒和宿主因素》的论文，揭示了新型冠状病毒性肺炎的分子流行病学和临床表现特征，尤其是发现了向重症转化的关键预警因子。研究团队得出的一个重要结论是：疾病严重程度的决定因素似乎主要来自于宿主因素，比如年龄、淋巴细胞减少症以及相关的细胞因子风暴，而与病毒的遗传变异没有显著的关联。（第一财经，LS）</p>
										  <img src="images/ziran.jpeg" >
							   </div>
							   <div class="top_p clear_float">
								   	<P><a href="news-show1.jsp">上一篇：荷兰出现疑似“水貂传人”新冠病例</a></P>
								   	<P><a href="news-show2.jsp">下一篇：无</a></P>
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
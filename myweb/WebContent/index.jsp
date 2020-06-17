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
	        <li><a href="index.jsp" class="active">首页 <span class="sr-only"></span></a></li>
	        <li><a href="login.jsp">登录</a></li>
	        <li><a href="register.jsp">用户注册</a></li>
	        <li><a href="AddDoctor.jsp">医生注册</a></li>
	        <li><a href="FindDoctorQServlet">查看在诊医生信息</a></li>
	        
	        <li><a href="about.jsp">关于我们</a></li>
	        <li><a href="news.jsp">医疗动态</a></li>
	        <li><a href="resource.jsp">医疗资源</a></li>
	        <li><a href="contact.jsp">联系我们</a></li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<!--幻灯片-->
	<div id="hwslider" class="hwslider">
		<ul>
			<li><a><img src="images/banner-1.jpg" /></a></li>
			<li><a><img src="images/banner-2.jpg" /></a></li>
		</ul>	
	</div>
	<!--服务-->
	<div class="service">
		<div class="container p50">
			<div class="row">
			  <div class="col-md-12 title">
			  	<h2>我们的服务</h2>
          <div class="line"></div>
			  </div>
			  <div class="col-md-4 col-sm-6 col-xs-12">
			  	<div class="ser-item">
				  	<div class="service-icon">
					    <span class="fa fa-heartbeat service-icon-effect"></span>  
					  </div>                      
					  <h3><a href="#">病毒常识普及</a></h3>
					  <p>人感染了冠状病毒后常见体征有呼吸道症状、发热、咳嗽、气促和呼吸困难等。在较严重病例中，感染可导致肺炎、严重急性呼吸综合征、肾衰竭，甚至死亡。</p>
			  	</div>
			  </div>
			  <div class="col-md-4 col-sm-6 col-xs-12">
			  	<div class="ser-item">
				  	<div class="service-icon">
					    <span class="fa fa-stethoscope service-icon-effect"></span>  
					  </div>                      
					  <h3><a href="#">防疫妙招放送</a></h3>
					  <p>保持室内空气流通：专家表示，工作场所应优先打开窗户采用自然通风，有条件的可以开启排风扇等抽气装置以加强室内空气流动。使用集中空调通风系统时，应保证集中空调系统运转正常。</p>
			  	</div>
			  </div>
			  <div class="col-md-4 col-sm-6 col-xs-12">
			  	<div class="ser-item">
				  	<div class="service-icon">
					    <span class="fa fa-h-square service-icon-effect"></span>  
					  </div>                      
					  <h3><a href="#">病毒实况播报</a></h3>
					  <p>综合新华社消息 美国华盛顿州斯诺霍米什地区卫生官员15日表示，新冠病毒感染病例可能在1月中旬前就已经在美国出现。斯诺霍米什地区卫生部门当天发布一份声明说，2名新冠病毒抗体检测结果呈阳性的居民表示去年12月中下旬曾患病，症状和新冠肺炎相似.</p>
			  	</div>
			  </div>
			  <div class="col-md-4 col-sm-6 col-xs-12">
			  	<div class="ser-item">
				  	<div class="service-icon">
					    <span class="fa fa-medkit service-icon-effect"></span>  
					  </div>                      
					  <h3><a href="#">医患在线预约</a></h3>
					  <p>对症寻医，实时预约无忧。医生和患者可以通过我们的平台随时预约问诊，并提供当前排队信息和问诊完成情况，方便快捷，实现了信息的透明化。</p>
			  	</div>
			  </div>
			  <div class="col-md-4 col-sm-6 col-xs-12">
			  	<div class="ser-item">
				  	<div class="service-icon">
					    <span class="fa fa-user-md service-icon-effect"></span>  
					  </div>                      
					  <h3><a href="#">健康小常识</a></h3>
					  <p>不吃晚饭并不能减肥。很多减肥党深信过午不食的减肥法则，这其实是十分不正确的，晚饭不仅不会起到减肥的作用，还会使得人的肠胃健康受到影响。</p>
			  	</div>
			  </div>
			  <div class="col-md-4 col-sm-6 col-xs-12">
			  	<div class="ser-item">
				  	<div class="service-icon">
					    <span class="fa fa-ambulance service-icon-effect"></span>  
					  </div>                      
					  <h3><a href="#">24小时服务</a></h3>
					  <p>我们一直在路上</p>
			  	</div>
			  </div>
			</div>
		</div>
	</div>
	<!--选择我们 -->
	<div class="choose p50">
		<div class="container">
			<div class="row">
			  <div class="col-md-12 title">
			  	<h2>为什么选择我们</h2>
          <div class="line"></div>
			  </div>
			  <div class="col-md-5 col-sm-12 col-xs-12 p30">
			  	<img src="images/choose-us-img1.jpg" />
			  </div>
			  <div class="col-md-7 col-sm-12 col-xs-12 p30 c-show">
			  	<div class="row">
            <div class="col-md-2 col-sm-2">
              <a href="#" class="media-icon">
                <span class="fa fa-hospital-o"></span>
              </a>
            </div>
            <div class="col-md-10 col-sm-10 clearfix c-w">
              <h3 class="">先进的医疗设备</h3>
              <p>威海市众多医院加盟</p>  
            </div>
          </div>
          <div class="row">
            <div class="col-md-2 col-sm-2 ">
              <a href="#" class="media-icon">
                <span class="fa fa-user-md"></span>
              </a>
            </div>
            <div class="col-md-10 col-sm-10 clearfix c-w">
              <h3 class="">专业的医疗团队</h3>
              <p>专业科室推荐</p>  
            </div>
          </div>
         <div class="row">
            <div class="col-md-2 col-sm-2">
              <a href="#" class="media-icon">
                <span class="fa fa-ambulance"></span>
              </a>
            </div>
            <div class="col-md-10 col-sm-10 clearfix c-w">
              <h3 class="">紧急支援</h3>
              <p>随时可拨打热线电话</p>  
            </div>
          </div>
			  </div>
			</div>
		</div>	
	</div>
	<!--数据-->
	<div class="counters p50 clearfix">
		<div class="container">
			<div class="row">
		  	<div class="col-md-3 col-sm-6 col-xs-6">
		  		<div class="counter-box">
              <div class="counter-no counter">
                258
              </div>
              <div class="counter-label">医疗人员</div>
          </div>	
		  	</div>
		  	<div class="col-md-3 col-sm-6 col-xs-6">
		  		<div class="counter-box">
              <div class="counter-no counter">
                322
              </div>
              <div class="counter-label">诊所病房</div>
          </div>	
		  	</div>
		  	<div class="col-md-3 col-sm-6 col-xs-6">
		  		<div class="counter-box">
              <div class="counter-no counter">
                350
              </div>
              <div class="counter-label">医疗设备</div>
          </div>	
		  	</div>
		  	<div class="col-md-3 col-sm-6 col-xs-6">
		  		<div class="counter-box">
              <div class="counter-no counter">
                789
              </div>
              <div class="counter-label">康复病人</div>
          </div>	
		  	</div>
			  
			</div>
		</div>		
	</div>
	<!--新闻资讯-->
	<div class="news p50">
		<div class="container">
			<div class="row">
				<div class="col-md-12 title">
			  	<h2>新闻资讯</h2>
          <div class="line"></div>
			  </div>
		  	<div class="col-md-4 col-sm-12 clearfix">
		  		<div class="single-Blog">
	          <div class="single-blog-left">
	            <ul class="blog-comments-box">
	              <li>五月 <h2>17</h2>2020</li>
	              <li><span class="fa fa-eye"></span>1523</li>
	            </ul>
	          </div>
	          <div class="single-blog-right">
	            <div class="blog-img">
	              <figure class="blog-figure">
	               <a href="news-show.jsp"><img src="images/choose-us-img3.jpg" alt="img"></a>
	                <span class="image-effect"></span>
	              </figure>
	            </div>
	            <div class="blog-author">
	              <p>作者：<span>赵博士</span></p>
	            </div>
	            <div class="blog-content">
	              <h3>医疗牙科部门最新趋势</h3>
	              <p>XXX的通道有许多变化，但大部分人以某种形式遭受改变，注入幽默，或者看起来不太可信的随机词。</p>
	              <div class="more">
	                <a href="news-show.jsp" data-hover="Read More"><span>阅读更多</span></a>                
	              </div>
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
					<div class="col-md-3 col-sm-12 ">
						<div class="single-footer-widget">
            	<div class="section-heading">
            	<h4>关于我们</h4>
            	<div class="line"></div>
          		</div>           
          		<p>用先进的科技为人类造福，是我们的理想，也是我们的价值所在。</p>
          	</div>
					</div>
					<div class="col-md-3 col-sm-12 f1">
						<div class="single-footer-widget">
	            <div class="section-heading">
	            <h4>我们的服务</h4>
	            <div class="line"></div>
              </div>
              <ul class="footer-service">
                <li><a href="#"><span class="fa fa-check"></span></a></li>
                <li><a href="#"><span class="fa fa-check"></span>服务名称</a></li>
                <li><a href="#"><span class="fa fa-check"></span>服务名称</a></li>
                <li><a href="#"><span class="fa fa-check"></span>服务名称</a></li>
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
                <p><span class="fa fa-home"></span>哈尔滨工业大学（威海）二公寓</p>
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
					height:220,
					autoPlay:true,
					arrShow:true,
					dotShow:true,
					touch:false,
				});
			});
		</script>
</body>
</html>
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
	        <li><a href="about.jsp" class="active">关于我们</a></li>
	        <li><a href="news.jsp">医疗动态</a></li>
	        <li><a href="resource.jsp">医疗资源</a></li>
	        <li><a href="contact.jsp">联系我们</a></li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<!--幻灯片-->
	<div class="page3-title">
		<div class="container">
		</div>
	</div>
	<!--关于我们-->
	<div class="container p50 about">
    <div class="row">
	    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 text-area ">
        <h3 class="heading left-align">关于我们</h3>
        <div class="line"></div>
        <div class="headul left-align"></div>
        <p> 由于国内公共医疗管理系统的不完善，医疗成本高、渠道少、覆盖面低等问题困扰着大众民生。尤其以“效率较低的医疗体系、质量欠佳的医疗服务、看病难且贵的就医现状”为代表的医疗问题为社会关注的主要焦点。大医院人满为患，社区医院无人问津，病人就诊手续繁琐等等问题都是由于医疗信息不畅，医疗资源两极化，医疗监督机制不全等原因导致，这些问题已经成为影响社会和谐发展的重要因素。所以我们需要建立一套智慧的医疗信息网络平台体系，使患者用较短的等疗时间、支付基本的医疗费用，就可以享受安全、便利、优质的诊疗服务。从根本上解决“看病难、看病贵”等问题，真正做到“人人健康，健康人人”。在“新冠疫情”的国际局势之下，我们希望能为威海的广大市民多普及防疫小常识，也希望能方便市民及时就医。</p>
        <p class="margin-bottom-50 hidden-md">用先进的科技为人类造福，是我们的理想，也是我们的价值所在。</p>
	    	<a href="contact.jsp" class="btn btn-primary">联系我们</a>       	
    	</div>
	    <div class="col-md-5 col-sm-12 col-xs-12 p30">
		  	<img src="images/choose-us-img1.jpg" style="width: 100%;" />
		  </div>
  	</div>
  </div>
  <div class="content_1 container">
		<div class="over_3">
			<h3 class="heading left-align">我们的服务</h3>
			<div class="line"></div>
	    <div class="bak_7 clearfix">
	        
	        <div class="over_3a f_l  bounceInLeft col-md-6 clearfix">
	            <dl>
	                <dt>
	                    <span class="fa fa-heartbeat service-icon-effect"></span></dt>
	                <dd>
	                    <a href="Overseas_Populaize.html" ><b>
	                        病毒常识普及</b></a>
	                            <p>人感染了冠状病毒后常见体征有呼吸道症状、发热、咳嗽、气促和呼吸困难等。</p>
	                </dd>
	            </dl>
	        </div>
	        
	        <div class="over_3a f_r bounceInRight col-md-6 clearfix">
	            <dl>
	                <dt>
	                    <span class="fa fa-stethoscope service-icon-effect"></span> </dt>
	                <dd>
	                    <a href="Overseas_Populaize.html" ><b>
	                        防疫妙招放送</b></a>
	                            <p>保持室内空气流通：专家表示，工作场所应优先打开窗户采用自然通风，有条件的可以开启排风扇等抽气装置以加强室内空气流动。</p>
	                </dd>
	            </dl>
	        </div>
	        
	        <div class="over_3a f_l  bounceInLeft col-md-6 clearfix">
	            <dl>
	                <dt>
	                    <span class="fa fa-h-square service-icon-effect"></span></dt>
	                <dd>
	                    <a href="Overseas_Populaize.html" ><b>
	                        病毒实况播报</b></a>
	                            <p>综合新华社消息 美国华盛顿州斯诺霍米什地区卫生官员15日表示，新冠病毒感染病例可能在1月中旬前就已经在美国出现。</p>
	                </dd>
	            </dl>
	        </div>
	      
	        <div class="over_3a f_r  bounceInRight col-md-6 clearfix">
	            <dl>
	                <dt>
	                    <span class="fa fa-medkit service-icon-effect"></span></dt>
	                <dd>
	                    <a href="Overseas_Populaize.html" ><b>
	                        医患在线预约</b></a>
	                            <p>对症寻医，实时预约无忧。医生和患者可以通过我们的平台随时预约问诊，并提供当前排队信息和问诊完成情况，方便快捷，实现了信息的透明化。</p>
	                </dd>
	            </dl>
	        </div>
	        
	        <div class="over_3a f_l  bounceInLeft col-md-6 clearfix">
	            <dl>
	                <dt>
	                    <span class="fa fa-user-md service-icon-effect"></span></dt>
	                <dd>
	                    <a href="Overseas_Populaize.html" ><b>
	                        健康小常识</b></a>
	                            <p>不吃晚饭并不能减肥。很多减肥党深信过午不食的减肥法则，这其实是十分不正确的。</p>
	                </dd>
	            </dl>
	        </div>
	        
	        <div class="over_3a f_r  bounceInRight col-md-6 clearfix">
	            <dl>
	                <dt>
	                    <span class="fa fa-ambulance service-icon-effect"></span></dt>
	                <dd>
	                    <a href="Overseas_Populaize.html" ><b>
	                        医院推荐</b></a>
	                            <p>

威海市中心医院三级甲等综合医院
预约电话：(0631)3806624,(0631)3806600
联系地址：威海市文登区米山东路西3号</p>
	                </dd>
	            </dl>
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
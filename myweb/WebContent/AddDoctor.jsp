<!-- 导入相关的包 -->
<%@page import="model.Ordered"%>
<%@page import="servlet.OrderUserFindServlet"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.io.*,java.util.List,java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en" >
<head>
<meta charset="UTF-8">
<title>医生注册界面</title>


<link rel="stylesheet" href="css/style2.css">

</head>
<body>

<script>
		function validate() {
			var username = document.Iform.dname.value;
			var psw1 = document.Iform.dpassword.value;
			var psw2 = document.Iform.confirmpassword.value;
			var MAXnum = document.Iform.MAXnum.value;
			
			if (username == "") {
				alert("请输入医生名");
				document.Iform.dname.focus();//光标定位
				return false;
			} else if (psw2 != psw1) {
				alert("两次密码不一致，请重新输入！");
				document.Iform.userpassword.focus();//光标定位
				return false;
			} else if (MAXnum < 0) {
				alert("预约人数不能为负数，请重新输入！");
				document.Iform.MAXnum.focus();//光标定位
				return false;
			}
			return true;
		}
	</script>

<div class="container">
	<div class="header">
		<h2>医生注册</h2>
	</div>
	
<form action="AddDoctorServlet" class="form" name="Iform"
		onSubmit="return validate()" method="post">
		<div class="form-control">
			<label for="username">医生姓名</label>
			<input type="text" placeholder="医生姓名" name="dname" />
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		
		<div class="form-control">
			<label for="username">密码</label>
			<input type="password" placeholder="密码" name="dpassword" id="userpassword"/>
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		<div class="form-control">
			<label for="username">确认密码</label>
			<input type="password" placeholder="确认密码" name="confirmpassword" id="confirmpassword"/>
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		<div class="form-control">
			<label for="username">医生编号</label>
			<input type="text" placeholder="编号" name="dnumber" />
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		<div class="form-control">
			<label for="username">挂号费用</label>
			<input type="text" placeholder="挂号费用" name="dcost" />
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		<div class="form-control">
			<label for="username">医生概要</label>
			<input type="text" placeholder="概要" name="dresume" />
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		<div class="form-control">
			<label for="username">医生电话</label>
			<input type="text" placeholder="电话号码" name="dtel" />
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		<div class="form-control">
			<label for="username">邮箱</label>
			<input type="text" placeholder="电子邮箱账号" name="demail" />
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		<div class="form-control">
			<label for="username">医院 </label>       
           <select id="first" name="hospital" onChange="change()">
             <option selected="selected">威海卫人民医院</option>
             <option>威海妇女儿童医院</option>
             <option>威海市立医院</option>
             <option>威海市中医院</option>
             
           </select>
           <label for="username">科室  </label>
           <select id="second" name="department">
             <option selected="selected">血管外科</option>
              <option>心内科</option>
              <option>普外科</option>
              <option>泌尿外科</option>
              <option>儿科</option>
           </select>
 
 
<script>
function change()
{
   var x = document.getElementById("first");
   var y = document.getElementById("second");
   y.options.length = 0; // 清除second下拉框的所有内容
   if(x.selectedIndex == 0)
   {
		y.options.add(new Option("血管外科", "血管外科",false,true));
		y.options.add(new Option("心内科", "心内科" ));  
		y.options.add(new Option("普外科", "普外科" ));  
		y.options.add(new Option("泌尿外科", "泌尿外科" ));  
		y.options.add(new Option("儿科", "儿科" ));  
   }
 
   if(x.selectedIndex == 1)
   {
		y.options.add(new Option("内科", "内科", false, true));
		y.options.add(new Option("妇产科", "妇产科"));  
		y.options.add(new Option("生殖中心", "生殖中心"));
		y.options.add(new Option("耳鼻咽喉科", "耳鼻咽喉科"));
		y.options.add(new Option("呼吸科", "呼吸科"));
   }
   if(x.selectedIndex == 2)
   {
		y.options.add(new Option("心血管科", "心血管科", false, true));
		y.options.add(new Option("妇产科", "妇产科"));  
		y.options.add(new Option("儿科", "儿科"));
		y.options.add(new Option("肿瘤科", "肿瘤科"));
		y.options.add(new Option("神经内科", "神经内科"));
   }
   if(x.selectedIndex == 3)
   {
		y.options.add(new Option("肾脏科", "肾脏科", false, true));
		y.options.add(new Option("妇产科", "妇产科"));  
		y.options.add(new Option("消化科", "消化科"));
		y.options.add(new Option("耳鼻咽喉科", "耳鼻咽喉科"));
		y.options.add(new Option("男科", "男科"));
   }
}
</script>

              
			
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		
		
		<div class="form-control">
			<label for="username">单日可预约最大人数</label>
			<input type="text" placeholder="单日可预约最大人数" name="MAXnum"  value=0>
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		
		<button>提交</button>
	</form>
</div>


	<input type="button" onclick="window.location='index.jsp'"
		value="返回主页面">


</body>
</html>
<%@page import="model.Doctor"%>
<%@page import="servlet.UdpDoctorServlet"%>
<%@page import="java.io.*,java.util.List,java.util.ArrayList"%>

	
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	request.setCharacterEncoding("UTF-8");
%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>医生信息修改</title>


<link href="css/base.css" type="text/css" rel="stylesheet" />
<link href="css/my_infor.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="css/style2.css">


<meta content="信息完善，让彼此更熟悉！" name="keywords">
</head>


<body style="text-align: center;">

	

	
<%

			ArrayList<Doctor> list = (ArrayList<Doctor>) request.getAttribute("list");

			if (list == null || list.size() < 1) {
				out.print("该用户没有注册记录！");
			} else {
				//out.println(list);
					Doctor doctor=new Doctor();
					doctor=list.get(0);
					
					 String dname=doctor.getDname();
					 String dpassword=doctor.getDpassword();

					 String dnumber=doctor.getDnumber();
					 String dcost=doctor.getDcost();
					 String dnum_people=doctor.getDnum_people();

					 String dresume=doctor.getDresume();
					 String dtel=doctor.getDtel();
					 String demail=doctor.getDemail();
				 String department=doctor.getDepartment();
				 String hospital=doctor.getHospital();
				 int MAXnum=doctor.getMAXnum();
				 String allowstate=doctor.getAllowstate();

				
				session.setAttribute("dname",dname);
				   session.setAttribute("dpassword",dpassword);
				   session.setAttribute("dnumber",dnumber);
				   session.setAttribute("dcost",dcost);
				   session.setAttribute("dnum_people",dnum_people);
				   session.setAttribute("dresume",dresume);
				   session.setAttribute("dtel",dtel);
				   session.setAttribute("demail",demail);
				   session.setAttribute("department",department);
				   session.setAttribute("hospital",hospital);
				   session.setAttribute("MAXnum",MAXnum);
				   session.setAttribute("allowstate",allowstate);
			}
			
		%>


<div class="container">
	<div class="header">
		<h2>医生资料修改</h2>
	</div>

	<form action="UdpDoctorServlet" method="post"  class="form" name="Iform">
		
		<div class="form-control">
			<label for="username">医生姓名</label>
			<input type="text" placeholder="医生姓名" name="dname" value="<%=session.getAttribute("dname")%>">
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		
		<div class="form-control">
			<label for="username">密码</label>
			<input type="password" placeholder="密码" name="dpassword" id="userpassword" value="<%=session.getAttribute("dpassword")%>">
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
				<div class="form-control">
			<label for="username">医生编号</label>
			<input type="text" placeholder="编号" name="dnumber" value="<%=session.getAttribute("dnumber")%>">
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		<div class="form-control">
			<label for="username">挂号费用</label>
			<input type="text" placeholder="挂号费用" name="dcost" value="<%=session.getAttribute("dcost")%>">
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>

                <div class="form-control">
			<label for="username">被预约人数</label>
			<input type="text" placeholder="被预约人数" name="dnum_people" value="<%=session.getAttribute("dnum_people")%>"> 
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		<div class="form-control">
			<label for="username">医生概要</label>
			<input type="text" placeholder="概要" name="dresume" value="<%=session.getAttribute("dresume")%>">
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
				
       
			

		<div class="form-control">
			<label for="username">医生电话</label>
			<input type="text" placeholder="电话号码" name="dtel" value="<%=session.getAttribute("dtel")%>" >
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		<div class="form-control">
			<label for="username">邮箱</label>
			<input type="text" placeholder="电子邮箱账号" name="demail" value="<%=session.getAttribute("demail")%>">
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		<div class="form-control">
			<label for="username">医院 </label>       
           <select id="first" name="hospital" onChange="change()">
             <option id="first1" value="威海卫人民医院">威海卫人民医院</option>
             <option id="first2" value="威海妇女儿童医院">威海妇女儿童医院</option>
             <option id="first3" value="威海市立医院">威海市立医院</option>
             <option id="first4" value="威海市中医院">威海市中医院</option>        
           </select>
            <input type="hidden" id="firstv" value="<%=session.getAttribute("hospital")%>">
            
           <label for="username">科室  </label>
           <select id="second" name="department">
             <option id="second1" value="血管外科">血管外科</option>
             <option id="second2" value="心内科">心内科</option>
             <option id="second3" value="普外科">普外科</option>
             <option id="second4" value="儿科">儿科</option>     
           </select>
            <input type="hidden" id="secondv" value="<%=session.getAttribute("department")%>">
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
            
        <script>
		//控制轮播类型的初始选中值
		str = document.getElementById("firstv").value;
		obj1 = document.getElementById("first");
		for(i=0;i<obj1.length;i++){
		    if(obj1[i].value==str)
		        obj1[i].selected = true;
		}
		
        </script>
        <script>
		//控制轮播类型的初始选中值
		str2 = document.getElementById("secondv").value;
		obj2 = document.getElementById("second");
		for(i=0;i<obj2.length;i++){
		    if(obj2[i].value==str)
		        obj2[i].selected = true;
		}
		
        </script>
 
<script>
function change()
{
   var x = document.getElementById("first");
   var y = document.getElementById("second");
   y.options.length = 0; // 清除second下拉框的所有内容
   if(x.selectedIndex == 0)
   {
		y.options.add(new Option("血管外科", "血管外科"));
		y.options.add(new Option("心内科", "心内科" ));  
		y.options.add(new Option("普外科", "普外科" ));  
		y.options.add(new Option("泌尿外科", "泌尿外科" ));  
		y.options.add(new Option("儿科", "儿科" ));  
   }
 
   if(x.selectedIndex == 1)
   {
		y.options.add(new Option("内科", "内科"));
		y.options.add(new Option("妇产科", "妇产科"));  
		y.options.add(new Option("生殖中心", "生殖中心"));
		y.options.add(new Option("耳鼻咽喉科", "耳鼻咽喉科"));
		y.options.add(new Option("呼吸科", "呼吸科"));
   }
   if(x.selectedIndex == 2)
   {
		y.options.add(new Option("心血管科", "心血管科"));
		y.options.add(new Option("妇产科", "妇产科"));  
		y.options.add(new Option("儿科", "儿科"));
		y.options.add(new Option("肿瘤科", "肿瘤科"));
		y.options.add(new Option("神经内科", "神经内科"));
   }
   if(x.selectedIndex == 3)
   {
		y.options.add(new Option("肾脏科", "肾脏科"));
		y.options.add(new Option("妇产科", "妇产科"));  
		y.options.add(new Option("消化科", "消化科"));
		y.options.add(new Option("耳鼻咽喉科", "耳鼻咽喉科"));
		y.options.add(new Option("男科", "男科"));
   }

	//控制轮播类型的初始选中值
	str2 = document.getElementById("secondv").value;
	obj2 = document.getElementById("second");
	for(i=0;i<obj2.length;i++){
	    if(obj2[i].value==str)
	        obj2[i].selected = true;
	}
	
  
}

</script>

              
			
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		
		
		<div class="form-control">
			<label for="username">单日可预约最大人数</label>
			<input type="text" placeholder="单日可预约最大人数" name="MAXnum"  value="<%=session.getAttribute("MAXnum")%>">
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
               
        <div class="form-control">
			<label for="username">当前可预约状态</label>
			<input type="text" placeholder="当前可预约状态" name="allowstate"value="<%=session.getAttribute("allowstate")%>">
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
				
			<button>提交</button>
			<a class="btn btn-success btn-sm" href="index.jsp">返回主界面</a>
			<a class="btn btn-success btn-sm" href="DoctorInfo.jsp">返回医生个人中心</a>
<!-- 			<input type="button" onclick="window.location='index.jsp'" value="返回主页面">	 -->
<!--             <input type="button" onclick="window.location='DoctorInfo.jsp'" value="返回医生个人中心"> -->
    </div>
			
			

	

</form>
	
</body>



</html>

<%@page import="model.User"%>
<%@page import="servlet.User_ImproveServlet"%>
<%@page import="java.io.*,java.util.List,java.util.ArrayList"%>

	

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <%request.setCharacterEncoding("UTF-8");%> 

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>个人信息完善</title>
<meta content="信息完善，让彼此更熟悉！" name="keywords">
<link rel="stylesheet" href="css/style2.css">
</head>

<body style="text-align: center;">
<div class="container">
	<div class="header">
		<h2>个人信息完善</h2>
	</div>

		
	
<%

			ArrayList<User> list = (ArrayList<User>) request.getAttribute("list");

			if (list == null || list.size() < 1) {
				out.print("该用户没有注册记录！");
			} else {
				//out.println(list);
					User user=new User();
					user=list.get(0);
					//out.println(user);
					String username=user.getUserName();
					String userpassword=user.getUserPassword();
					String age=user.getAge();
					String gender=user.getGender();
					String phonenumber=user.getPhoneNumber();
					String email=user.getEmail();
				//out.println(username+userpassword+age+gender+phonenumber+email);
				
				session.setAttribute("username",username);
				   session.setAttribute("userpassword",userpassword);
				   session.setAttribute("age",age);
				   session.setAttribute("gender",gender);
				   session.setAttribute("phonenumber",phonenumber);
				   session.setAttribute("email",email);
			}
			
		%>

	<form action="User_ImproveServlet" method="post"  method="post" class="form" name="Iform">
		<h3>个人信息完善</h3>
			<div class="form-control">
			<label for="username">用户名</label>
			<input type="text" placeholder="用户名" name="username" value=<%=session.getAttribute("username")%>>
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		
		<div class="form-control">
			<label for="username">密码</label>
			<input type="password" name="userpassword" Id="userpassword" value="<%=session.getAttribute("userpassword")%>">
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		
		<div class="form-control">
			<label for="username">年龄</label>
			<input type="text" placeholder="年龄" name="age" value="<%=session.getAttribute("age")%>">
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		<div class="form-control">
			<label for="username">性别</label>

			 <select name="gender" id="type" >
             <option id="type1" value="男">男</option>
             <option id="type2" value="女">女</option>
             </select>
             <input type="hidden" id="typev" value="<%=session.getAttribute("gender")%>">
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		<script>
		//控制轮播类型的初始选中值
		str = document.getElementById("typev").value;
		obj = document.getElementById("type");
		for(i=0;i<obj.length;i++){
		    if(obj[i].value==str)
		        obj[i].selected = true;
		}
		
        </script>
		
		<div class="form-control">
			<label for="username">手机号码</label>
			<input type="text" placeholder="手机号码" name="phonenumber"  value="<%=session.getAttribute("phonenumber")%>"> 
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
		
		<div class="form-control">
			<label for="username">邮箱号码</label>
			<input type="text" placeholder="邮箱号码" name="email" value="<%=session.getAttribute("email")%>">
			<i class="fas fa-check-circle"></i>
			<i class="fas fa-exclamation-circle"></i>
			
		</div>
			
		<button>保存</button>
	
	</form>
	

	

</body>
<input type="button" onclick="window.location='index.jsp'" value="返回主页面">
	
<input type="button" onclick="window.location='UserInfo.jsp'" value="返回用户中心">


</html>

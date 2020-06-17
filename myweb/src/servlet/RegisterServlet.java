/*用户注册处理*/
package servlet;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.DAO;
import model.User;
import util.DbUtil;
@WebServlet("/RegisterServlet")
public class RegisterServlet  extends HttpServlet {

	@Override

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		String username=request.getParameter("username");
		String userpassword=request.getParameter("userpassword");
		String age=request.getParameter("age");
		String gender=request.getParameter("gender");
		String phonenumber=null;
		String email=null;
		System.out.println(username+"      "+userpassword+"      "+age+"      "+gender);
		DbUtil db=new DbUtil();
		User user=new User(username,userpassword, age,gender,phonenumber,email);
		User user1=new User();
		user1.setUserPassword(userpassword);
		user1.setUserName(username);
		System.out.println(username+"      "+userpassword);
		DAO dao=new DAO();
		try {
			Connection con=db.getCon();
			if(dao.login(con, user1)!=null) {
				System.out.println("该用户已存在");
				//response.sendRedirect("register.jsp");	
				response.getWriter().print("<script language='javascript'>alert('该用户已存在，请重新填写注册信息！')</script>"); 
				response.setHeader("refresh", "1;URL=register.jsp");
			}else {
				System.out.println("该用户不存在");
				dao.register(con, user);
				response.sendRedirect("login.jsp");

			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}


/*医生登录*/
package servlet;
import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DAO;
import model.Doctor;
import model.User;
import util.DbUtil;
@WebServlet("/DLoginServlet")
public class DLoginServlet extends HttpServlet{

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String dname=request.getParameter("dname");
		String dpassword=request.getParameter("dpassword");
		DbUtil db=new DbUtil();
		Doctor doctor =new Doctor(dname,dpassword);
		DAO dao=new DAO();
		HttpSession session = request.getSession();
		System.out.println(dname+"55555555555555555"+dpassword);
		session.setAttribute("dname1",dname);  
		session.setAttribute("dpassword1",dpassword);  
		
		session.setAttribute("dname2",dname);  //系统中使用的医生账户信息
		session.setAttribute("dpassword2",dpassword);  
		try {
			Connection con=db.getCon();
			if(dao.dlogin(con, doctor)!=null) {
				//response.sendRedirect("DoctorInfo.jsp");
				response.getWriter().print("<script language='javascript'>alert('登录成功！')</script>"); 
				response.setHeader("refresh", "1;URL=DoctorInfo.jsp");
			}else {	
				//response.sendRedirect("AddDoctor.jsp");
				response.getWriter().print("<script language='javascript'>alert('该医生没有注册信息！')</script>"); 
				response.setHeader("refresh", "1;URL=AddDoctor.jsp");
			}

		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
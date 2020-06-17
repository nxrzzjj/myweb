/*添加医生信息
*/
package servlet;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.DAO;
import model.Doctor;
import model.User;
import util.DbUtil;
@WebServlet("/AddDoctorServlet")
public class AddDoctorServlet  extends HttpServlet {
	@Override

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		String dname=request.getParameter("dname");
		String dpassword=request.getParameter("dpassword");
		String dnumber=request.getParameter("dnumber");
		String dcost=request.getParameter("dcost");
		String dnum_people="0";
		String dresume=request.getParameter("dresume");
		String dtel=request.getParameter("dtel");
		String demail=request.getParameter("demail");
		
		String department=request.getParameter("department");
		String hospital=request.getParameter("hospital");
		String MAXnum1=request.getParameter("MAXnum");
		String allowstate="Yes";
		int MAXnum=Integer.parseInt(MAXnum1);

		DbUtil db=new DbUtil();
		Doctor user=new Doctor( dname,  dpassword,  dnumber,  dcost,  dnum_people,  dresume,
				dtel,  demail,department,hospital,MAXnum,allowstate);
		DAO dao=new DAO();
		try {
			Connection con=db.getCon();
			if(dao.AddDoctorInfo(con, user)) {
				//response.sendRedirect("DoctorInfo.jsp");
				response.getWriter().print("<script language='javascript'>alert('添加医生信息成功！')</script>"); 
				response.setHeader("refresh", "1;URL=login.jsp");
			}else {	
				//response.sendRedirect("AddDoctor.jsp");
				response.getWriter().print("<script language='javascript'>alert('添加医生信息失败！')</script>"); 
				response.setHeader("refresh", "1;URL=AddDoctor.jsp");
			}

		}catch(Exception e){
			e.printStackTrace();
		}
	}
}



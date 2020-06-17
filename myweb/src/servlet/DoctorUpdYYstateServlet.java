/*医生设置当前可预约状态
 */
package servlet;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.DAO;
import model.Doctor;
import model.Ordered;
import model.User;
import util.DbUtil;
@WebServlet("/DoctorUpdYYstateServlet")
public class DoctorUpdYYstateServlet  extends HttpServlet {

	@Override

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		DbUtil db=new DbUtil();
		Doctor doctor=new Doctor();
		DAO dao=new DAO();

		String dname2 = (String)request.getSession().getAttribute("dname2");         
		System.out.println(dname2);
		doctor.setDname(dname2);
		
		Connection con = null;
		try {
			con = db.getCon();
			try {//修改可预约状态
				dao.YYstateUpdY(con, doctor);
				response.getWriter().print("<script language='javascript'>alert('用户当前可预约！')</script>"); 
				response.setHeader("refresh", "1;URL=DoctorInfo.jsp");

			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}
}



/*返回满足搜索条件的所有医生信息，方便用户查看
 */
package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import model.Doctor;
import util.DbUtil;

@WebServlet("/FindSelectedDoctorQServlet")
public class FindSelectedDoctorQServlet  extends HttpServlet {


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		String department=request.getParameter("department");
		String hospital=request.getParameter("hospital");
		System.out.println(department+"++++++++++++++++++++++++"+hospital);

		DbUtil db=new DbUtil();
		Doctor doc=new Doctor( );
		DAO dao=new DAO();
		try
		{
			Connection con=db.getCon();
			ArrayList<Doctor> list=dao.SelectDoctorInfo(con, department, hospital);
			System.out.println(list);
			request.setAttribute("list", list);
			request.getRequestDispatcher("/DShow.jsp").forward(request,response);	
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}


}
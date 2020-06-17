/*返回所有医生信息，方便用户查看
 */
package servlet;

import java.awt.List;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DAO;
import model.Doctor;
import model.User;
import util.DbUtil;

@WebServlet("/FindDoctorQServlet")
public class FindDoctorQServlet  extends HttpServlet {


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		DbUtil db=new DbUtil();
		Doctor doc=new Doctor();
		DAO dao=new DAO();
		
		try
		{
			Connection con=db.getCon();
			ArrayList<Doctor> list=dao.FindDoctorInfo(con);
			request.setAttribute("list", list);

			ArrayList<String> list1=dao.FindHospital(con);
			LinkedHashSet<String> set = new LinkedHashSet<String>(list1);       
	        ArrayList<String> list111 = new ArrayList<String>(set);     
	        
			ArrayList<String> list2=dao.FindDepartment(con);
			LinkedHashSet<String> set1 = new LinkedHashSet<String>(list2);       
	        ArrayList<String> list222 = new ArrayList<String>(set1);  
			
			HttpSession session = request.getSession();
			session.setAttribute("list1", list111);
			session.setAttribute("list2", list222);
			request.getRequestDispatcher("/DShow.jsp").forward(request,response);	


		}catch(Exception e)
		{
			e.printStackTrace();
		}

	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}
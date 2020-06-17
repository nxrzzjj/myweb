/*医生查看个人被预约情况
 */
package servlet;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.DAO;
import dao.OrderDao;
import model.Doctor;
import model.Ordered;
import model.User;
import util.DbUtil;
@WebServlet("/OrderDoctorFindServlet")
public class OrderDoctorFindServlet  extends HttpServlet {

	@Override

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		//String dname=request.getParameter("dname");

		String dname = (String) request.getSession().getAttribute("dname2");
		System.out.println("医生名：  "+dname);
		DbUtil db=new DbUtil();

		Ordered order=new Ordered();//预约对象1
		order.setDname(dname);

		OrderDao orderdao=new OrderDao();
		try {
			Connection con=db.getCon();
			//返回该医生名下的所有预约信息
			ArrayList<Ordered> list=orderdao.DoctorFindOrder(con,order);
			System.out.println(list);
			request.setAttribute("list", list);
			request.getRequestDispatcher("/OrderedDoctorFind.jsp").forward(request,response);	
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}


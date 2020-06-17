/*用户查看个人预约情况*/
package servlet;
import java.io.*;
import java.net.URLDecoder;
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
@WebServlet("/OrderUserFindServlet")
public class OrderUserFindServlet  extends HttpServlet {

	@Override

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		//String username1=request.getParameter("username");
		String username = (String)request.getSession().getAttribute("username1");         

		//String username = URLDecoder.decode(username1, "UTF-8");  

		DbUtil db=new DbUtil();
		Ordered order=new Ordered(username);

		OrderDao orderdao=new OrderDao();
		try {
			Connection con=db.getCon();

			ArrayList<Ordered> list=orderdao.UserFindOrder(con,order);
			request.setAttribute("list", list);
			request.getRequestDispatcher("/OrderedUserFind.jsp").forward(request,response);	

		}catch(Exception e){
			e.printStackTrace();
		}
	}
}


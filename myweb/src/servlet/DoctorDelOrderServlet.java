/*医生删除某条预约信息（医生完成该项业务）
 */
package servlet;
import java.io.*;
import java.net.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.DAO;
import dao.OrderDao;
import model.Doctor;
import model.Ordered;
import model.User;
import util.DbUtil;
@WebServlet("/DoctorDelOrderServlet")
public class DoctorDelOrderServlet  extends HttpServlet {
	@Override

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		String dname1=request.getParameter("dname");
		String dname = URLDecoder.decode(dname1, "UTF-8");  

		
		System.out.println(dname);
		String state=request.getParameter("state");
		System.out.println(state);
		
		String input=request.getParameter("input");
		System.out.println(input);
		
		String id1 = request.getParameter("id");
		int id=Integer.parseInt(id1);//类型转换
		
		DbUtil db=new DbUtil();
		Ordered order=new Ordered();//ԤԼ����1
		order.setDname(dname);

		Doctor doctor=new Doctor();//ҽ������
		doctor.setDname(dname);

		Ordered order2=new Ordered();//ԤԼ����2
		order2.setId(id);

		OrderDao orderdao=new OrderDao();
		DAO dao=new DAO();
		try {
			Connection con=db.getCon();
			if(("ok".equals(state))&&("next".equals(input)))
			{
				orderdao.DoctorUpdOrder(con,order2);//修改预约表状态:ok->completed 
				int dnum_people=orderdao.UpdDnum_people(con,order);//修改预约单人数（-1）
				System.out.println("预约单人数:  "+dnum_people);
				String password=dao.FindDpassword(con, doctor);
				String dnum_people1=" "+dnum_people;
				doctor.setDnum_people(dnum_people1);
				doctor.setDpassword(password);
				dao.DoctorUpdDnumber(con,doctor);//修改医生表人数（-1）
				
				ArrayList<Ordered> list=orderdao.DoctorFindOrder(con,order);
				request.setAttribute("list", list);
				request.getRequestDispatcher("/OrderedDoctorFind.jsp").forward(request,response);	

			}else if(("delete".equals(input))&&("completed".equals(state))) {
				orderdao.UserDelOrder(con,order2);//删除预约表里该条记录
				
				ArrayList<Ordered> list=orderdao.DoctorFindOrder(con,order);
				request.setAttribute("list", list);
				request.getRequestDispatcher("/OrderedDoctorFind.jsp").forward(request,response);	

			}else {
				response.getWriter().print("<script language='javascript'>alert('此为无效操作！')</script>");
				//ArrayList<Ordered> list=orderdao.DoctorFindOrder(con,order);
				//request.setAttribute("list", list);
				//request.getRequestDispatcher("/OrderedDoctorFind.jsp").forward(request,response);	
				response.setHeader("refresh", "1;URL=DoctorInfo.jsp");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}


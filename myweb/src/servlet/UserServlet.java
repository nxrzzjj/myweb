/*用户业务处理中心
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
@WebServlet("/UserServlet")
public class UserServlet  extends HttpServlet {

	@Override

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		DbUtil db=new DbUtil();
		User user=new User();
		Ordered order=new Ordered();
		DAO dao=new DAO();
		OrderDao orderdao=new OrderDao();
		String username2 = (String)request.getSession().getAttribute("username1");         
		String userpassword2 = (String)request.getSession().getAttribute("userpassword1");   
		System.out.println(username2+"++++++++++++++++++++"+userpassword2);
		user.setUserName(username2);
		user.setUserPassword(userpassword2);

		Doctor doctor=new Doctor();
		String ss=request.getParameter("ss");
		int ss1=Integer.parseInt(ss);
		if(1==ss1) {                               //查看用户信息
			System.out.println("查看用户信息");
			Connection con = null;
			try {
				con = db.getCon();
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}

			try {//返回该用户信息
				ArrayList<User> list=dao.FindUserInfo(con, user);
				System.out.println(list);
				request.setAttribute("list", list);
				request.getRequestDispatcher("/UserShow.jsp").forward(request,response);	

			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}else if(2==ss1) {                          //删除用户信息
			System.out.println("删除用户信息");
			Connection con = null;
			try {
				con = db.getCon();
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			try {//删除该用户信息
				dao.userDel(con, user);
				int num=0;
				order.setUserName(username2);
				ArrayList<Ordered> list=orderdao.FindIdUser(con, order);//返回预约表里id
				if(null == list || list.isEmpty())
				{
					System.out.println("该用户并未预约医生！");
					System.out.println("用户删除成功！");
					//response.sendRedirect("UserInfo.jsp");
					response.getWriter().print("<script language='javascript'>alert('删除成功！')</script>"); 
					response.setHeader("refresh", "1;URL=index.jsp");
				}else {
					System.out.println("list不为空");
					for(int i=0;i<list.size();i++)
					{
						Ordered orde=list.get(i);
						int id2=orde.getId();
						System.out.println("++++++++++++++++"+id2);
						order.setId(id2);
						ArrayList<Ordered> list1=orderdao.FindDnumDname(con, order);
						Ordered ord=list1.get(0);
						String dname=ord.getDname();
						order.setDname(dname);
						int renshu=orderdao.UpdDnum_people(con, order);
						String renshu1=""+renshu;
						doctor.setDname(dname);
						String dpassword=dao.FindDpassword(con, doctor);
						doctor.setDnum_people(renshu1);
						doctor.setDpassword(dpassword);
						dao.DoctorUpdDnumber(con, doctor);
						orderdao.UserDelOrder(con, order);
					}
					System.out.println("用户删除成功！");
					//response.sendRedirect("UserInfo.jsp");
					response.getWriter().print("<script language='javascript'>alert('删除成功！')</script>"); 
					response.setHeader("refresh", "1;URL=index.jsp");
				}
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}

		}else if(3==ss1) {                               //修改用户信息
			System.out.println("修改用户信息");
			Connection con = null;
			try {
				con = db.getCon();
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}

			try {//返回该用户信息
				ArrayList<User> list=dao.FindUserInfo(con, user);
				System.out.println(list);
				request.setAttribute("list", list);
				request.getRequestDispatcher("/ImproveInfo.jsp").forward(request,response);	

			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}

	}
}



/*用户更新信息
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
import model.Ordered;
import model.User;
import util.DbUtil;

@WebServlet("/User_ImproveServlet")
public class User_ImproveServlet extends HttpServlet {

	@Override

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		String username = request.getParameter("username");
		String userpassword = request.getParameter("userpassword");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String phonenumber = request.getParameter("phonenumber");
		String email = request.getParameter("email");
		System.out.println("欲修改的姓名和密码：  "+userpassword + "----" + username);

		String username1 = (String) request.getSession().getAttribute("username1");
		String userpassword1 = (String) request.getSession().getAttribute("userpassword1");
		System.out.println("初始姓名和密码：  "+userpassword1 + "----" + username1);

		DbUtil db = new DbUtil();
		User user = new User(username, userpassword, age, gender, phonenumber, email);
		User user1 = new User();//旧对象
		User user2 = new User();//新对象
		user2.setUserName(username);
		user2.setUserPassword(userpassword);
		Ordered order = new Ordered();
		DAO dao = new DAO();
		OrderDao orderdao = new OrderDao();
		HttpSession session = request.getSession();

		try {
			Connection con = db.getCon();
			if (!username.equals(username1))// 新旧信息是否相同(用户名改变)
			{
				ArrayList<User> list11=new ArrayList<User>();
				list11=dao.FindUserInfo(con, user2);
				// 用户不存在
				if(null == list11 || list11.size() ==0)
				{
					session.setAttribute("username1", username);//更新名字
					//session.setAttribute("userpassword1", userpassword);

					user1.setUserName(username1);
					//user1.setUserPassword(userpassword1);
					dao.userDel(con, user1);// 删除原有账户信息
					if (dao.register(con, user)) {
						System.out.println("用户添加成功");

						ArrayList<Ordered> list = new ArrayList<Ordered>();
						order.setUserName(username1);
						list = orderdao.FindIdUser(con, order);// 返回原用户对应id
						System.out.println("ordered--------------" + list);
						if (null == list || list.isEmpty()) {
							System.out.println("list为空");
							response.getWriter().print("<script language='javascript'>alert('更新完成！')</script>");
							response.setHeader("refresh", "1;URL=UserInfo.jsp");
						} else {
							System.out.println("list不为空");
							for (int i = 0; i < list.size(); i++) {
								Ordered orde = list.get(i);
								int id2 = orde.getId();
								System.out.println("++++++++++++++++" + id2);
								order.setId(id2);
								order.setUserName(username);
								order.setAge(age);
								order.setGender(gender);
								orderdao.OrderUpdUserName(con, order);// 更新预约表里用户信息
								System.out.println("ordered update successfully!");
							}
							response.getWriter().print("<script language='javascript'>alert('预约表里信息已同步更新完成！')</script>");
							response.setHeader("refresh", "1;URL=UserInfo.jsp");
						}

					}
				} else {
					System.out.println("用户已存在");
					response.getWriter().print("<script language='javascript'>alert('该用户已存在，更新失败！')</script>");
					response.setHeader("refresh", "1;URL=ImproveInfo.jsp");}
			} else if (dao.userUpdate(con, user)) {

				ArrayList<Ordered> list = new ArrayList<Ordered>();
				order.setUserName(username1);
				list = orderdao.FindIdUser(con, order);// 返回原用户对应id
				System.out.println("ordered--------------" + list);
				if (null == list || list.isEmpty()) {
					System.out.println("list为空");
					response.getWriter().print("<script language='javascript'>alert('更新完成！')</script>");
					response.setHeader("refresh", "1;URL=UserInfo.jsp");
				} else {
					System.out.println("list不为空");
					for (int i = 0; i < list.size(); i++) {
						Ordered orde = list.get(i);
						int id2 = orde.getId();
						System.out.println("++++++++++++++++" + id2);
						order.setId(id2);
						order.setUserName(username1);
						order.setAge(age);
						order.setGender(gender);
						orderdao.OrderUpdUserName(con, order);// 更新预约表里用户信息
						System.out.println("ordered update successfully!");
					}
					response.getWriter().print("<script language='javascript'>alert('预约表里信息已同步更新完成！')</script>");
					response.setHeader("refresh", "1;URL=UserInfo.jsp");
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

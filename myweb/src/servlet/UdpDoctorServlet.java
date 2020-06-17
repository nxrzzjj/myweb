/*更新医生信息
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

@WebServlet("/UdpDoctorServlet")
public class UdpDoctorServlet extends HttpServlet {

	@Override

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		String dname = request.getParameter("dname");
		String dpassword = request.getParameter("dpassword");
		String dnumber = request.getParameter("dnumber");
		String dcost = request.getParameter("dcost");
		String dnum_people = request.getParameter("dnum_people");
		String dresume = request.getParameter("dresume");
		String dtel = request.getParameter("dtel");
		String demail = request.getParameter("demail");

		String department = request.getParameter("department");
		String hospital = request.getParameter("hospital");
		String MAXnum1 = request.getParameter("MAXnum");
		String allowstate=request.getParameter("allowstate");
		int MAXnum = Integer.parseInt(MAXnum1);
		System.out.println("欲修改的姓名和密码：  " + dpassword + "----" + dname);

		String dname1 = (String) request.getSession().getAttribute("dname2");
		String dpassword1 = (String) request.getSession().getAttribute("dpassword2");
		System.out.println("医生上一次登录账户名和密码：" + dpassword1 + "----" + dname1);

		DbUtil db = new DbUtil();
		Doctor doctor = new Doctor(dname, dpassword, dnumber, dcost, dnum_people, dresume, dtel, demail, department,
				hospital, MAXnum,allowstate);
		DAO dao = new DAO();
		Ordered order = new Ordered();
		OrderDao orderdao = new OrderDao();
		Doctor doctor1 = new Doctor();// 更新时所用 旧对象
		Doctor doctor2 = new Doctor();// 更新界面的账户名和密码（判断） 新对象
		doctor2.setDname(dname);
		//doctor2.setDpassword(dpassword);
		HttpSession session = request.getSession();
		// session.setAttribute("dname2",dname1); //系统中使用的医生账户信息
		// session.setAttribute("dpassword2",dpassword1);
		try {
			Connection con = db.getCon();
			if (!dname.equals(dname1))// 新键入信息与原来信息不同(医生名改变)
			{
				ArrayList<Doctor> list11 = new ArrayList<Doctor>();
				list11 = dao.FindDoctorInfo(con, doctor2);
				// 该医生账户不存在
				if (null == list11 || list11.size() == 0) {

					
					
					session.setAttribute("dname2", dname);
					session.setAttribute("dpassword2", dpassword); // 进行医生账户信息的更新

					doctor1.setDname(dname1);
					//doctor1.setDpassword(dpassword1);
					dao.doctorDel(con, doctor1);// 删除原来医生账户记录
					if (dao.AddDoctorInfo(con, doctor))// 增加新账户信息
					{
						System.out.println("医生信息增添成功！");
						// 修改预约表里医生信息
						ArrayList<Ordered> list = new ArrayList<Ordered>();
						order.setDname(dname1);// 查询原账户对应的id
						list = orderdao.FindIdDoctor(con, order);// 返回doctor中的id值
						System.out.println("ordered--------------" + list);
						if (null == list || list.isEmpty()) {
							System.out.println("list为空");
							response.getWriter().print("<script language='javascript'>alert('更新成功！')</script>");
							response.setHeader("refresh", "1;URL=DoctorInfo.jsp");
						} else {
							System.out.println("list不为空");
							for (int i = 0; i < list.size(); i++) {
								Ordered orde = list.get(i);
								int id2 = orde.getId();
								System.out.println("++++++++++++++++" + id2);
								order.setId(id2);
								order.setDname(dname);
								System.out.println("将传的医生名  " + dname);
								order.setDnumber(dnumber);
								orderdao.OrderUpdDName(con, order);// 更新预约表中医生信息
								System.out.println("ordered update successfully!");
							}
							// response.sendRedirect("ok.jsp");
							response.getWriter().print("<script language='javascript'>alert('预约表已同步更新！')</script>");
							response.setHeader("refresh", "1;URL=DoctorInfo.jsp");
						}

					}
				} else {
					System.out.println("该医生账户已存在！");
					// response.sendRedirect("UpdDoctorInfo.jsp");
					response.getWriter().print("<script language='javascript'>alert('该医生账户已存在,请重新填写！')</script>");
					response.setHeader("refresh", "1;URL=UpdDoctorInfo.jsp");
				}
			} else if (dao.UpdDoctorInfo(con, doctor)) {// 新旧账户名和密码相同,直接更新
				
				ArrayList<Ordered> list = new ArrayList<Ordered>();
				order.setDname(dname1);// 查询原账户对应的id
				list = orderdao.FindIdDoctor(con, order);// 返回doctor中的id值
				System.out.println("ordered--------------" + list);
				if (null == list || list.isEmpty()) {
					System.out.println("list为空");
					response.getWriter().print("<script language='javascript'>alert('更新成功！')</script>");
					response.setHeader("refresh", "1;URL=DoctorInfo.jsp");
				} else {
					System.out.println("list不为空");
					for (int i = 0; i < list.size(); i++) {
						Ordered orde = list.get(i);
						int id2 = orde.getId();
						System.out.println("++++++++++++++++" + id2);
						order.setId(id2);
						order.setDname(dname1);
						System.out.println("将传的医生名  " + dname1);
						order.setDnumber(dnumber);
						orderdao.OrderUpdDName(con, order);// 更新预约表中医生信息
						System.out.println("ordered update successfully!");
					}
					response.getWriter().print("<script language='javascript'>alert('预约表已同步更新！')</script>");
					response.setHeader("refresh", "1;URL=DoctorInfo.jsp");
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

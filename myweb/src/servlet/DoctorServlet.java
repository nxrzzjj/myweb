/*医生对应功能处理中心
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
@WebServlet("/DoctorServlet")
public class DoctorServlet  extends HttpServlet {

	@Override

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		DbUtil db=new DbUtil();
		Doctor doctor=new Doctor();
		Ordered order=new Ordered();
		DAO dao=new DAO();
		OrderDao orderdao=new OrderDao();
		String dname2 = (String)request.getSession().getAttribute("dname2");         
		String dpassword2 = (String)request.getSession().getAttribute("dpassword2");   
		System.out.println(dname2+"++++++++++++++++++++"+dpassword2);
		doctor.setDname(dname2);
		//doctor.setDpassword(dpassword2);

		order.setDname(dname2);
		String ss=request.getParameter("ss");
		int ss1=Integer.parseInt(ss);
		if(1==ss1) {                               //查看医生信息
			System.out.println("1-----查看医生信息");
			Connection con = null;
			try {
				con = db.getCon();
				try {//返回该医生信息
					ArrayList<Doctor> list=dao.FindDoctorInfo(con, doctor);
					System.out.println(list);
					request.setAttribute("list", list);
					request.getRequestDispatcher("/DoctorShow.jsp").forward(request,response);	

				} catch (Exception e) {
					// TODO 自动生成的 catch 块
					e.printStackTrace();
				}
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}


		}else if(2==ss1) {                          //修改医生信息
			System.out.println("修改医生信息");

			Connection con = null;
			try {
				con = db.getCon();
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}

			try {//返回该用户信息
				ArrayList<Doctor> list=dao.FindDoctorInfo(con, doctor);
				System.out.println(list);
				request.setAttribute("list", list);
				request.getRequestDispatcher("/UpdDoctorInfo.jsp").forward(request,response);	

			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}

			//response.sendRedirect("UpdDoctorInfo.jsp");

		}else if(3==ss1) {                          //删除医生信息
			System.out.println("删除医生信息");
			Connection con = null;
			try {
				con = db.getCon();
				try {//删除该医生信息
					ArrayList<Doctor> list4=dao.FindDoctorInfo(con, doctor);
					Doctor doc=list4.get(0);
					String renshu=doc.getDnum_people().trim();//获得当前预约人数
					int rs=Integer.parseInt(renshu);
					if(0==rs) {
						orderdao.DoctorDelOrder(con, order);
						dao.doctorDel(con, doctor);
						System.out.println("医生删除成功！");
						response.getWriter().print("<script language='javascript'>alert('删除成功！')</script>"); 
						response.setHeader("refresh", "1;URL=DoctorInfo.jsp");
					}else {
						response.getWriter().print("<script language='javascript'>alert('当前仍有预约信息未处理，无法删除！')</script>"); 
						response.setHeader("refresh", "1;URL=DoctorInfo.jsp");
					}
				} catch (Exception e) {
					// TODO 自动生成的 catch 块
					e.printStackTrace();
				}
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}


		}

	}
}



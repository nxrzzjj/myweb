/*用户添加预约信息
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
@WebServlet("/OrderAddServlet")
public class OrderAddServlet  extends HttpServlet {

	@Override

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		String username=request.getParameter("username");
		String age=request.getParameter("age");
		String gender=request.getParameter("gender");
		String dname=request.getParameter("dname");
		String dnumber=request.getParameter("dnumber");
		String ordertime=request.getParameter("ordertime");
		String state=request.getParameter("state");


		DbUtil db=new DbUtil();
		Doctor doctor=new Doctor();
		doctor.setDname(dname);

		Ordered order1=new Ordered();
		order1.setDname(dname);

		OrderDao orderdao=new OrderDao();
		DAO dao=new DAO();
		Connection con = null;
		try {
			con = db.getCon();
		} catch (Exception e2) {
			// TODO �Զ����ɵ� catch ��
			e2.printStackTrace();
		}
		try {
			String allowstate2=dao.IsAllowstate(con, doctor);//返回预约状态
			if("No".equals(allowstate2))//不可以预约
			{
				System.out.println("今日预约人数已达到最大限额！");	
				response.getWriter().print("<script language='javascript'>alert('今日预约人数已达到最大限额！')</script>"); 
				response.setHeader("refresh", "1;URL=UserInfo.jsp");


			}else {            //可以预约
				int idname = 0;
				try {
					idname = orderdao.FindMaxId(con);//返回最大id
					int id1=idname+1;
					System.out.println("***************"+id1);
					Ordered order=new Ordered(id1,username,age,gender,dname,dnumber,ordertime,state);//预约对象1
					try {
						//con=db.getCon();
						if(orderdao.Add(con,order)) //添加预约信息
						{
							int dnum_peopleMAX=orderdao.UpdDnum_peopleUp(con, order1);//预约人数+1,返回最大值
							System.out.println(dnum_peopleMAX);
							ArrayList<Ordered> list=new ArrayList<Ordered>();
							System.out.println("************"+list);

							list=orderdao.FindId(con, order1,dnum_peopleMAX);//返回查询医生名下对应的各个id 
							System.out.println("--------------"+list);
							for(int i=1;i<list.size();i++)
							{
								Ordered orde=list.get(i);
								int id2=orde.getId();
								System.out.println("++++++++++++++++"+id2);
								order1.setId(id2);
								order1.setDnum_people(dnum_peopleMAX);
								orderdao.UnitDnum_people(con, order1);//统一人数
							}
							String dnum_people1=""+dnum_peopleMAX;
							System.out.println("222222222222222"+dnum_people1);
							String dpassword = dao.FindDpassword(con, doctor);//返回医生的密码
							doctor.setDnum_people(dnum_people1);
							doctor.setDpassword(dpassword);

							dao.DoctorUpdDnumber(con, doctor);//医生表里预约人数改变
							if(!dao.IsLessMAX(con, doctor)) {
								System.out.println("今日预约人数已达到最大限额！");			
								doctor.setAllowstate("No");
								dao.YYstateUpd(con, doctor);
								System.out.println("预约状态已更新！");
							}							
							//response.sendRedirect("ok.jsp");
							response.getWriter().print("<script language='javascript'>alert('预约成功！')</script>"); 
							response.setHeader("refresh", "1;URL=UserInfo.jsp");
						}else {	
							//response.sendRedirect("OrderAdd.jsp");
							response.getWriter().print("<script language='javascript'>alert('预约未成功，请重新预约！')</script>"); 
							response.setHeader("refresh", "1;URL=OrderAdd.jsp");
						}
					} catch (Exception e1) {
						// TODO �Զ����ɵ� catch ��
						e1.printStackTrace();
					}}catch(Exception e){
						e.printStackTrace();
					}
			}} catch (Exception e2) {
				// TODO 自动生成的 catch 块
				e2.printStackTrace();
			}

	}
}


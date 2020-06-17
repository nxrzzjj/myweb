/*用户取消预约
 */
package servlet;
import java.io.*;
import java.net.URLDecoder;
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
@WebServlet("/UserDelOrderServlet")
public class UserDelOrderServlet  extends HttpServlet {


	@Override

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		String dname1=request.getParameter("dname");
		String dname = URLDecoder.decode(dname1, "UTF-8");  

		String username1=request.getParameter("username");
		String username = URLDecoder.decode(username1, "UTF-8");  

		String id1 = request.getParameter("idname");
		String state = request.getParameter("state");
		int id=Integer.parseInt(id1);
		/*System.out.println("����IDNAME="+id);
		Map<String,String[]> map = request.getParameterMap();

		Set<String> keys = map.keySet();
		for(String key: keys)
		{String[] value=map.get(key);
		System.out.println(key+"ffffff="+value[0]);
		}*/
		//String id=(String)request.getSession().getAttribute("id");
		System.out.println("id:  "+id);
		System.out.println("username:  "+username);
		System.out.println("state:  "+state);

		DbUtil db=new DbUtil();
		Ordered order1=new Ordered(username);//预约对象1

		Ordered order2=new Ordered();//预约对象2
		order2.setId(id);
		order2.setDname(dname);

		Doctor doctor=new Doctor();
		doctor.setDname(dname);

		OrderDao orderdao=new OrderDao();
		DAO dao=new DAO();
		try {
			Connection con=db.getCon();
			if("ok".equals(state)) {
				int dnum_people=orderdao.UpdDnum_people(con, order2);//预约表人数更新，返回预约人数
				System.out.println("////////////////////"+dnum_people);
				String dnum_people1=""+dnum_people;
				doctor.setDnum_people(dnum_people1);
				String dpassword = dao.FindDpassword(con, doctor);//返回医生的密码
				doctor.setDpassword(dpassword);
				dao.DoctorUpdDnumber(con,doctor);//医生表里更新人数
			}
			orderdao.UserDelOrder(con,order2);//删除预约表里该条记录
			ArrayList<Ordered> list=orderdao.UserFindOrder(con,order1);//用户查询个人预约信息
			request.setAttribute("list", list);
			request.getRequestDispatcher("/OrderedUserFind.jsp").forward(request,response);	

		}catch(Exception e){
			e.printStackTrace();
		}
	}
}


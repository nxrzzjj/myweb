/*用户登录
 */
package servlet;
import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DAO;
import model.User;
import util.DbUtil;
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet{

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		String username=request.getParameter("username");
		String userpassword=request.getParameter("userpassword");
		DbUtil db=new DbUtil();
		User user=new User(username,userpassword);
		DAO dao=new DAO();
		HttpSession session = request.getSession();
		session.setAttribute("username1",username);  
		session.setAttribute("userpassword1",userpassword);  
		try {
			Connection con=db.getCon();
			if(dao.login(con, user)!=null) {
				//response.sendRedirect("UserInfo.jsp");
				response.getWriter().print("<script language='javascript'>alert('用户登录成功！')</script>"); 
				response.setHeader("refresh", "1;URL=UserInfo.jsp");
			}else {	
				//response.sendRedirect("register.jsp");
				response.getWriter().print("<script language='javascript'>alert('该用户没有注册信息！')</script>"); 
				response.setHeader("refresh", "1;URL=register.jsp");
			}

		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
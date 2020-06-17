package util;
import java.sql.*;
public class DbUtil {

	public  String dbUrl="jdbc:mysql://localhost:3306/myweb?useUnicode=true&characterEncoding=UTF-8";


	public String dbUserName="root";
	public String dbPassWord="xxxxxxxxxx";

	public String jdbcName="com.mysql.jdbc.Driver";

	/*��ȡ���ݿ�����*/
	public Connection getCon() throws Exception{
		Class.forName(jdbcName);
		Connection con=DriverManager.getConnection(dbUrl,dbUserName,dbPassWord);
		return con;
	}
	/*�ر����ݿ�����*/
	public void closeCon(Connection con) throws Exception{
		if(con!=null){
			con.close();
		}
	}
	/*���������Ƿ�ɹ�
	 */
	public static void main(String[] args) {
		DbUtil dbutil=new DbUtil();
		try {
			dbutil.getCon();
			System.out.println("���ݿ����ӳɹ�");
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}

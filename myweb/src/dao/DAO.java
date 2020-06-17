package dao;

import java.awt.List;
import java.sql.*;
import java.util.ArrayList;

import model.Doctor;
import model.Ordered;
import model.User;

public class DAO {
	/*用户登录*/
	public User login(Connection con, User user) throws Exception {
		User resultUser = null;
		String sql = "select * from user where username=? and userpassword=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, user.getUserName());
		pstmt.setString(2, user.getUserPassword());
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			//resultUser = new User("admin", "123");
			resultUser = new User();

			resultUser.setUserName(rs.getString("username"));
			resultUser.setUserPassword(rs.getString("userpassword"));
			resultUser.setAge(rs.getString("age"));
			resultUser.setGender(rs.getString("gender"));

		}
		return resultUser;
	}
	/*医生登录*/
	public Doctor dlogin(Connection con, Doctor user) throws Exception {
		Doctor resultUser = null;
		String sql = "select * from doctor where dname=? and dpassword=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, user.getDname());
		pstmt.setString(2, user.getDpassword());
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			resultUser = new Doctor();

			resultUser.setDname(rs.getString("dname"));
			resultUser.setDpassword(rs.getString("dpassword"));
			resultUser.setDnumber(rs.getString("dnumber"));
			resultUser.setDcost(rs.getString("dcost"));
			resultUser.setDnum_people(rs.getString("dnum_people"));
			resultUser.setDresume(rs.getString("dresume"));
			resultUser.setDtel(rs.getString("dtel"));
			resultUser.setDepartment(rs.getString("department"));
			resultUser.setHospital(rs.getString("hospital"));
			resultUser.setMAXnum(rs.getInt("MAXnum"));
		}
		return resultUser;
	}
	/*用户注册*/
	public boolean register(Connection con, User user) throws Exception {
		boolean flag = false;
		PreparedStatement pstmt = null;
		String sql = "insert into user(username,userpassword,age,gender,phonenumber,email)VALUES(?,?,?,?,?,?)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, user.getUserName());
		pstmt.setString(2, user.getUserPassword());
		pstmt.setString(3, user.getAge());
		pstmt.setString(4, user.getGender());
		pstmt.setString(5, user.getPhoneNumber());
		pstmt.setString(6,user.getEmail());
		if (pstmt.executeUpdate() > 0)
		{
			flag = true;
		}
		return flag;
	}
	/*特定用户信息查询 */
	public ArrayList<User> FindUserInfo(Connection con, User user) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "select * from user where username=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, user.getUserName());

		ResultSet rs = pstmt.executeQuery();
		ArrayList<User> list=new ArrayList<User>();
		while(rs.next())
		{
			User info=new User();

			info.setUserName(rs.getString("username"));
			info.setUserPassword(rs.getString("userpassword"));
			info.setAge(rs.getString("age"));
			info.setGender(rs.getString("gender"));
			info.setPhoneNumber(rs.getString("phonenumber"));
			info.setEmail(rs.getString("email"));
			list.add(info);
		}
		return list;

	}

	/*用户更新*/
	public boolean userUpdate(Connection con, User user) throws Exception {
		boolean flag = false;
		PreparedStatement pstmt = null;
		String sql = "update user set age=? ,gender=? ,phonenumber=? ,email=? ,userpassword=? where username=? ";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(6, user.getUserName());
		pstmt.setString(5, user.getUserPassword());
		pstmt.setString(1, user.getAge());
		pstmt.setString(2, user.getGender());
		pstmt.setString(3, user.getPhoneNumber());
		pstmt.setString(4, user.getEmail());
		if (pstmt.executeUpdate() > 0)
		{
			flag = true;
		}
		return flag;
	}
	/*用户删除 */
	public void userDel(Connection con, User user) throws Exception {
		boolean flag = false;
		PreparedStatement pstmt = null;
		String sql = "delete from user where username=? ";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, user.getUserName());
		pstmt.executeUpdate();
	}
	//医生信息添加
	public boolean AddDoctorInfo(Connection con, Doctor user) throws Exception {
		boolean flag = false;
		PreparedStatement pstmt = null;
		String sql = "insert into doctor(dname,  dpassword,  dnumber,  dcost,  dnum_people,  dresume,\r\n" + 
				"				 dtel,  demail,department,hospital,MAXnum,allowstate)VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, user.getDname());
		pstmt.setString(2, user.getDpassword());
		pstmt.setString(3, user.getDnumber());
		pstmt.setString(4, user.getDcost());
		pstmt.setString(5, user.getDnum_people());
		pstmt.setString(6, user.getDresume());
		pstmt.setString(7, user.getDtel());
		pstmt.setString(8, user.getDemail());

		pstmt.setString(9, user.getDepartment());
		pstmt.setString(10, user.getHospital());
		pstmt.setInt(11, user.getMAXnum());
		pstmt.setString(12, user.getAllowstate());
		if (pstmt.executeUpdate() > 0)
		{
			flag = true;
		}
		return flag;
	}
	/*医生删除 */
	public void doctorDel(Connection con, Doctor user) throws Exception {
		boolean flag = false;
		PreparedStatement pstmt = null;
		String sql = "delete from doctor where dname=? ";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, user.getDname());
		pstmt.executeUpdate();
	}
	/* 医生更新全部信息 */
	public boolean UpdDoctorInfo(Connection con, Doctor user) throws Exception {
		boolean flag = false;
		PreparedStatement pstmt = null;
		String sql = "update doctor set dnumber=? ,dcost=? ,dresume=? ,dtel=?,demail=? ,department=?, hospital=?, MAXnum=?, dpassword=?,allowstate=? where dname=? ";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, user.getDnumber());
		pstmt.setString(2, user.getDcost());
		pstmt.setString(3, user.getDresume());
		pstmt.setString(4, user.getDtel());
		pstmt.setString(5, user.getDemail());

		pstmt.setString(6, user.getDepartment());
		pstmt.setString(7, user.getHospital());
		pstmt.setInt(8, user.getMAXnum());
		pstmt.setString(9, user.getDpassword());
		pstmt.setString(10, user.getAllowstate());
		pstmt.setString(11, user.getDname());

		if (pstmt.executeUpdate() > 0)
		{
			flag = true;
		}
		return flag;

	}

	/*	全部医生信息全部进行显示 */
	public ArrayList<Doctor> FindDoctorInfo(Connection con) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "select * from doctor";
		pstmt = con.prepareStatement(sql);

		ResultSet rs = pstmt.executeQuery();//��ѯ�����
		ArrayList<Doctor> list=new ArrayList<Doctor>();
		while(rs.next())
		{
			Doctor info=new Doctor();
			info.setDname(rs.getString("dname"));
			info.setDnumber(rs.getString("dnumber"));
			info.setDcost(rs.getString("dcost"));
			info.setDnum_people(rs.getString("dnum_people"));
			info.setDresume(rs.getString("dresume"));
			info.setDtel(rs.getString("dtel"));
			info.setDemail(rs.getString("demail"));
			info.setDepartment(rs.getString("department"));
			info.setHospital(rs.getString("hospital"));
			info.setMAXnum(rs.getInt("MAXnum"));
			info.setAllowstate(rs.getString("allowstate"));
			list.add(info);
		}
		return list;
	}

	/*特定医生信息查询 */
	public ArrayList<Doctor> FindDoctorInfo(Connection con, Doctor user) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "select * from doctor where dname=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, user.getDname());

		ResultSet rs = pstmt.executeQuery();//��ѯ�����
		ArrayList<Doctor> list=new ArrayList<Doctor>();
		while(rs.next())
		{
			Doctor info=new Doctor();
			info.setDname(rs.getString("dname"));
			info.setDpassword(rs.getString("dpassword"));
			info.setDnumber(rs.getString("dnumber"));
			info.setDcost(rs.getString("dcost"));
			info.setDnum_people(rs.getString("dnum_people"));
			info.setDresume(rs.getString("dresume"));
			info.setDtel(rs.getString("dtel"));
			info.setDemail(rs.getString("demail"));

			info.setDepartment(rs.getString("department"));
			info.setHospital(rs.getString("hospital"));
			info.setMAXnum(rs.getInt("MAXnum"));
			info.setAllowstate(rs.getString("allowstate"));
			list.add(info);
		}
		return list;

	}

	/*根据指定条件查询医生信息 */
	public ArrayList<Doctor> SelectDoctorInfo(Connection con,String department,String hospital) throws Exception {
		PreparedStatement pstmt = null;
		System.out.println(department+"******************"+hospital);
		boolean flag1;
		boolean flag2;
		flag2=(department != null && !"".equals(department.trim()) && !"null".equals(department));
		flag1=(hospital != null && !"".equals(hospital.trim()) && !"null".equals(hospital));
		System.out.println(flag1+"              "+flag2);

		if((flag1==false)&&(flag2==false)) {
			String sql = "select * from doctor ";
			pstmt = con.prepareStatement(sql);
		}
		if((flag1==true)&&(flag2==false)) {
			String sql = "select * from doctor where  hospital=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, hospital);
		}
		if((flag2==true)&&(flag1==false)) {
			String sql = "select * from doctor where department=? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, department);
		}
		if((flag1==true)&&(flag2==true)) {
			String sql = "select * from doctor where department=? and hospital=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, department);
			pstmt.setString(2, hospital);
		}
		ResultSet rs = pstmt.executeQuery();
		ArrayList<Doctor> list=new ArrayList<Doctor>();
		while(rs.next())
		{
			Doctor info=new Doctor();
			info.setDname(rs.getString("dname"));
			info.setDnumber(rs.getString("dnumber"));
			info.setDcost(rs.getString("dcost"));
			info.setDnum_people(rs.getString("dnum_people"));
			info.setDresume(rs.getString("dresume"));
			info.setDtel(rs.getString("dtel"));
			info.setDemail(rs.getString("demail"));

			info.setDepartment(rs.getString("department"));
			info.setHospital(rs.getString("hospital"));
			info.setMAXnum(rs.getInt("MAXnum"));
			info.setAllowstate(rs.getString("allowstate"));
			list.add(info);
		}
		return list;

	}
	/*	更新医生表人数  */
	public void DoctorUpdDnumber(Connection con, Doctor user) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "update doctor set dnum_people=? where dname=? and dpassword=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, user.getDnum_people());
		pstmt.setString(2, user.getDname());
		pstmt.setString(3, user.getDpassword());
		pstmt.executeUpdate();
	}

	//查询医生姓名对应的密码
	public String FindDpassword(Connection con, Doctor user) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "select dpassword from doctor where dname=? ";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, user.getDname());
		ResultSet rs = pstmt.executeQuery();
		String dpassword = null;
		while(rs.next()) {
			String dpassword1 = rs.getString(1);
			dpassword=dpassword1;
		}
		return dpassword;
	}
	//查询医生姓名对应的当前最大预约人数是否超过限额
	public boolean IsLessMAX(Connection con, Doctor user) throws Exception {
		PreparedStatement pstmt = null;
		boolean flag = false;
		String sql="select dnum_people, MAXnum from doctor where dname=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, user.getDname());
		ResultSet rs = pstmt.executeQuery();
		String dnum_people = null;
		int MAXnum=0;
		while(rs.next()) {
			dnum_people = rs.getString(1);
			int MAXnum1=rs.getInt(2);
			MAXnum=MAXnum1;
		}
		int dnum_people2=Integer.parseInt(dnum_people);
		if(dnum_people2<MAXnum)
		{
			flag=true;
		}
		return flag;
	}

	//查询医生姓名对应的当前预约状态
	public String IsAllowstate(Connection con, Doctor user) throws Exception {
		PreparedStatement pstmt = null;
		String sql="select allowstate from doctor where dname=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, user.getDname());
		ResultSet rs = pstmt.executeQuery();
		String allowstate = null;
		while(rs.next()) {
			String allowstate1 = rs.getString(1);
			allowstate=allowstate1;
		}
		return allowstate;
	}
	/*	更新医生表预约状态 (y->n)*/
	public void YYstateUpd(Connection con, Doctor user) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "update doctor set allowstate=? where dname=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, user.getAllowstate());
		pstmt.setString(2, user.getDname());
		pstmt.executeUpdate();
	}
	/*	更新医生表预约状态 (n->y)*/
	public void YYstateUpdY(Connection con, Doctor user) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "update doctor set allowstate=? where dname=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, "Yes");
		pstmt.setString(2, user.getDname());
		pstmt.executeUpdate();
	}
	/*查询doctor表中所有department*/
	public ArrayList<String> FindDepartment(Connection con)throws Exception{
		PreparedStatement pstmt = null;
		String sql="select department from doctor";
		pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		String department = null;
		ArrayList<String> list=new ArrayList<String>();
		while(rs.next()) {
			department= rs.getString(1);
			list.add(department);
		}
		return list;
	}
	/*查询doctor表中所有hospital*/
	public ArrayList<String> FindHospital(Connection con)throws Exception{
		PreparedStatement pstmt = null;
		String sql="select hospital from doctor";
		pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		String hospital = null;
		ArrayList<String> list=new ArrayList<String>();
		while(rs.next()) {
			hospital= rs.getString(1);
			list.add(hospital);
		}
		return list;
	}
}


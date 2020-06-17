package dao;

import java.awt.List;
import java.sql.*;
import java.util.ArrayList;

import model.Doctor;
import model.Ordered;

public class OrderDao {

	/* 添加预约信息 */
	public boolean Add(Connection con, Ordered order) throws Exception {
		boolean flag = false;
		PreparedStatement pstmt = null;
		String sql = "insert into ordered(id,username,age,gender,dname,dnumber,dnum_people,ordertime,state)VALUES(?,?,?,?,?,?,?,?,?)";
		pstmt = con.prepareStatement(sql);

		pstmt.setInt(1, order.getId());
		pstmt.setString(2, order.getUserName());
		pstmt.setString(3, order.getAge());
		pstmt.setString(4, order.getGender());
		pstmt.setString(5, order.getDname());
		pstmt.setString(6, order.getDnumber());
		pstmt.setInt(7, 0);
		pstmt.setString(8, order.getOrderTime());
		pstmt.setString(9, order.getState());

		if (pstmt.executeUpdate() > 0) {
			flag = true;
		}
		return flag;
	}

	/* 用户查询个人预约信息 */
	public ArrayList<Ordered> UserFindOrder(Connection con, Ordered order) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "select * from ordered where username=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, order.getUserName());

		ResultSet rs = pstmt.executeQuery();//��ѯ�����
		ArrayList<Ordered> list=new ArrayList<Ordered>();
		while(rs.next())
		{
			Ordered info=new Ordered();
			info.setId(rs.getInt("id"));//��ȡԤԼ��id

			info.setDname(rs.getString("dname"));
			info.setDnumber(rs.getString("dnumber"));

			info.setUserName(rs.getString("username"));
			info.setAge(rs.getString("age"));
			info.setGender(rs.getString("gender"));

			info.setOrderTime(rs.getString("ordertime"));
			info.setState(rs.getString("state"));
			list.add(info);
		}
		return list;


	}
	/* 通过id删除预约信息 */
	public void UserDelOrder(Connection con, Ordered order) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "delete from ordered where id=? ";
		System.out.println("OrderId="+order.getId());
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, order.getId());
		pstmt.executeUpdate();

	}
	/* 医生删除预约信息 */
	public void DoctorDelOrder(Connection con, Ordered order) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "delete from ordered where dname=? ";
		System.out.println("欲删除的医生名：  "+order.getDname());
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, order.getDname());
		pstmt.executeUpdate();

	}
	/* 医生查询个人被预约情况 */
	public ArrayList<Ordered> DoctorFindOrder(Connection con, Ordered order) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "select * from ordered where dname=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, order.getDname());

		ResultSet rs = pstmt.executeQuery();//��ѯ�����
		ArrayList<Ordered> list=new ArrayList<Ordered>();
		while(rs.next())
		{
			Ordered info=new Ordered();
			info.setId(rs.getInt("id"));//��ȡԤԼ��id

			info.setDname(rs.getString("dname"));
			info.setDnumber(rs.getString("dnumber"));

			info.setDnum_people(rs.getInt("dnum_people"));
			info.setUserName(rs.getString("username"));
			info.setAge(rs.getString("age"));
			info.setGender(rs.getString("gender"));

			info.setOrderTime(rs.getString("ordertime"));
			info.setState(rs.getString("state"));
			list.add(info);
		}
		return list;


	}
	/* 医生更新预约信息（更改状态） */
	public void DoctorUpdOrder(Connection con, Ordered order) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "update ordered set state='completed' where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, order.getId());
		pstmt.executeUpdate();

	}

	/* 通过id更改用户名（适用于用户登录后修改个人信息)*/
	public void OrderUpdUserName(Connection con, Ordered order) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "update ordered set username=?, age=?, gender=? where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,order.getUserName());
		pstmt.setString(2, order.getAge());
		pstmt.setString(3, order.getGender());
		pstmt.setInt(4, order.getId());

		pstmt.executeUpdate();

	}
	/* 通过id更改医生名及编号（适用于医生登录后修改个人信息）*/
	public void OrderUpdDName(Connection con, Ordered order) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "update ordered set dname=?,dnumber=? where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,order.getDname());
		pstmt.setString(2, order.getDnumber());
		pstmt.setInt(3, order.getId());
		pstmt.executeUpdate();

	}
	/* 更新预约人数（-1）并返回最大预约人数*/
	public int UpdDnum_people(Connection con, Ordered order) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "update ordered set dnum_people=dnum_people-1 where dname=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, order.getDname());
		pstmt.executeUpdate();

		String sql1 = "select max(dnum_people) from ordered where dname=?";
		pstmt = con.prepareStatement(sql1);
		pstmt.setString(1, order.getDname());
		ResultSet rs = pstmt.executeQuery();//��ѯ�����
		int dnum_people=0;
		while(rs.next()) {
			int dnum_people1 = rs.getInt(1);
			dnum_people=dnum_people1;
		}
		return dnum_people;

	}

	/* 更新预约人数（+1）并返回最大预约人数 */
	public int UpdDnum_peopleUp(Connection con, Ordered order) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "update ordered set dnum_people=dnum_people+1 where dname=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, order.getDname());
		pstmt.executeUpdate();

		String sql1 = "select max(dnum_people) from ordered where dname=?";//�������ԤԼ����
		pstmt = con.prepareStatement(sql1);
		pstmt.setString(1, order.getDname());
		ResultSet rs = pstmt.executeQuery();//��ѯ�����
		int dnum_people=0;
		while(rs.next()) {
			int dnum_people1 = rs.getInt(1);
			dnum_people=dnum_people1;
		}
		return dnum_people;

	}
	/* 寻找当前预约表中最大的id（适用于id自增）*/
	public int FindMaxId(Connection con) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "select max(id) from ordered";
		pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();//��ѯ�����
		int idvalue=0;
		while(rs.next()) {
			int id = rs.getInt(1);
			idvalue=id;
		}
		return idvalue;
	}

	/*查询某医生名下对应的各个id */
	public ArrayList<Ordered> FindId(Connection con,Ordered order, int num) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "select id from ordered where dname=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, order.getDname());
		ResultSet rs = pstmt.executeQuery();
		/* rs.last(); //�Ƶ����һ��
		 int rowCount = rs.getRow();
		 rs.beforeFirst();
		 */		 
		ArrayList<Ordered> list=new ArrayList<Ordered>();
		while(rs.next()) {
			//			for(int i=1;i<=num;i++)
			//			{
			Ordered order1=new Ordered();
			int id = rs.getInt(1);
			order1.setId(id);
			list.add(order1);
			//			}
		}
		return list;
	}

	/* 查询某用户名下对应的各个id */
	public ArrayList<Ordered> FindIdUser(Connection con,Ordered order) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "select id from ordered where username=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, order.getUserName());
		ResultSet rs = pstmt.executeQuery();//��ѯ�����
			 
		ArrayList<Ordered> list=new ArrayList<Ordered>();
		while(rs.next()) {
			//			for(int i=1;i<=num;i++)
			//			{
			Ordered order1=new Ordered();
			int id = rs.getInt(1);
			order1.setId(id);
			list.add(order1);
			//			}
		}
		return list;
	}
	/* 查询某医生名下对应的各个id */
	public ArrayList<Ordered> FindIdDoctor(Connection con,Ordered order) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "select id from ordered where dname=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, order.getDname());
		ResultSet rs = pstmt.executeQuery();
		ArrayList<Ordered> list=new ArrayList<Ordered>();
		while(rs.next()) {
			Ordered order1=new Ordered();
			int id = rs.getInt(1);
			order1.setId(id);
			list.add(order1);
		}
		return list;
	}
	/*统一预约人数*/
	public void UnitDnum_people(Connection con,Ordered order) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "update ordered set dnum_people=?  where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, order.getDnum_people());
		pstmt.setInt(2, order.getId());
		pstmt.executeUpdate();
	}
	/*通过id返回当前预约人数和医生名*/
	public ArrayList<Ordered> FindDnumDname(Connection con,Ordered order) throws Exception {
		PreparedStatement pstmt = null;
		String sql = "select dnum_people,dname from ordered  where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, order.getId());
		ResultSet rs = pstmt.executeQuery();
		ArrayList<Ordered> list=new ArrayList<Ordered>();
		while(rs.next()) {
			Ordered order1=new Ordered();
			int dnum_people = rs.getInt(1);
			String dname=rs.getString(2);
			order1.setDnum_people(dnum_people);;
			order1.setDname(dname);
			list.add(order1);
		}
		return list;
	}
}


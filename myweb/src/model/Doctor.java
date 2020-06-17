package model;

import java.util.Date;

public class Doctor {
	private String dname;// ����
	private String dpassword;// ����

	private String dnumber;// ���
	private String dcost;// �Һŷ�
	private String dnum_people;// ԤԼ����

	private String dresume;// ҽ����Ҫ
	private String dtel;// �绰����
	private String demail;// ����
	private String department;//科室
	private String hospital;
	private int MAXnum;
	private String allowstate;//允许进行预约
	public Doctor() {
		// TODO �Զ����ɵĹ��캯�����
	}
	// ҽ������
	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getDname() {
		return dname;
	}

	// ҽ������
	public String getDpassword() {
		return dpassword;
	}

	public void setDpassword(String dpassword) {
		this.dpassword = dpassword;
	}

	// ҽ�����
	public String getDnumber() {
		return dnumber;
	}

	public void setDnumber(String dnumber) {
		this.dnumber = dnumber;
	}

	// ҽ���Һŷ�
	public String getDcost() {
		return dcost;
	}

	public void setDcost(String dcost) {
		this.dcost = dcost;
	}

	// ҽ����ԤԼ����
	public String getDnum_people() {
		return dnum_people;
	}

	public void setDnum_people(String dnum_people) {
		this.dnum_people = dnum_people;
	}

	// ҽ����Ҫ
	public String getDresume() {
		return dresume;
	}

	public void setDresume(String dresume) {
		this.dresume = dresume;
	}

	// ҽ���绰
	public String getDtel() {
		return dtel;
	}

	public void setDtel(String dtel) {
		this.dtel = dtel;
	}

	// ҽ���ʼ�
	public String getDemail() {
		return demail;
	}

	public void setDemail(String demail) {
		this.demail = demail;
	}

	//科室
	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}
	//医院
	public String getHospital() {
		return hospital;
	}

	public void setHospital(String hospital) {
		this.hospital = hospital;
	}
	//最大限制
	public int getMAXnum() {
		return MAXnum;
	}

	public void setMAXnum(int MAXnum) {
		this.MAXnum = MAXnum;
	}
	//预约状态
	public String getAllowstate() {
		return allowstate;
	}

	public void setAllowstate(String allowstate) {
		this.allowstate = allowstate;
	}
	public Doctor(String dname, String dpassword, String dnumber, String dcost, String dnum_people, String dresume,
			String dtel, String demail,String department,String hospital, int MAXnum) {
		this.dname = dname;
		this.dpassword = dpassword;
		this.dnumber = dnumber;
		this.dcost = dcost;
		this.dnum_people = dnum_people;
		this.dresume = dresume;
		this.dresume = dresume;
		this.dtel = dtel;
		this.demail = demail;
		this.department=department;
		this.hospital=hospital;
		this.MAXnum=MAXnum;
	}
	public Doctor(String dname, String dpassword, String dnumber, String dcost, String dnum_people, String dresume,
			String dtel, String demail,String department,String hospital, int MAXnum,String allowstate) {
		this.dname = dname;
		this.dpassword = dpassword;
		this.dnumber = dnumber;
		this.dcost = dcost;
		this.dnum_people = dnum_people;
		this.dresume = dresume;
		this.dresume = dresume;
		this.dtel = dtel;
		this.demail = demail;
		this.department=department;
		this.hospital=hospital;
		this.MAXnum=MAXnum;
		this.allowstate=allowstate;
	}
	public Doctor(String dname, String dpassword, String dnumber) {
		this.dname = dname;
		this.dpassword = dpassword;
		this.dnumber = dnumber;

	}

	public Doctor(String dname, String dpassword) {
		this.dname = dname;
		this.dpassword = dpassword;

	}

}

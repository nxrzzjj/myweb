package model;
import java.io.*;
import java.util.*;
//�û�ʵ����
public class Ordered {
	private int id;//ԤԼ���
	private String username;//��������
	private String age;//��������
	private String gender;//�����Ա�
	private String dname;//ҽ������
	private String dnumber;//ҽ�����
	private int dnum_people;//

	private String ordertime;//ԤԼʱ��
	private String state;//ԤԼ״̬

	public Ordered(int id,String username,String age,String gender,String dname,String dnumber,String ordertime,String state) {
		this.id= id;
		this.username= username;
		this.age=age;
		this.gender=gender;
		this.dname= dname;
		this.dnumber= dnumber;
		this.ordertime= ordertime;
		this.state= state;

	}
	public Ordered(int id,String username,String age,String gender,String dname,String dnumber,int dnum_people,String ordertime,String state) {
		this.id= id;
		this.username= username;
		this.age=age;
		this.gender=gender;
		this.dname= dname;
		this.dnumber= dnumber;
		this.dnum_people=dnum_people;
		this.ordertime= ordertime;
		this.state= state;

	}
	public Ordered(int id,String username,String dname) {
		this.id= id;
		this.username= username;
		this.dname= dname;
	}
	
	
	public Ordered(String username) {
		this.username= username;
		
	}
	
	public Ordered() {
		// TODO �Զ����ɵĹ��캯�����
	}
	//1
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id= id;
	}
	//2
	public String getUserName() {
		return username;
	}
	public void setUserName(String username) {
		this.username= username;
	}
	//3
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age= age;
	}
	//4
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender= gender;
	}
	//5
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname= dname;
	}
	//6
	public String getDnumber() {
		return dnumber;
	}
	public void setDnumber(String dnumber) {
		this.dnumber= dnumber;
	}
	//7
	public String getOrderTime() {
		return ordertime;
	}
	public void setOrderTime(String ordertime) {
		this.ordertime= ordertime;
	}
	//8
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state= state;
	}
	//9
	public int getDnum_people() {
		return dnum_people;
	}

	public void setDnum_people(int dnum_people) {
		this.dnum_people = dnum_people;
	}
}

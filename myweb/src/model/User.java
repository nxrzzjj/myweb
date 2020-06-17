package model;
import java.io.*;
import java.util.*;
//�û�ʵ����
public class User {

	private String username;
	private String userpassword;
	private String age;
	private String gender;//�Ա�
	private String phonenumber;
	private String email;




	public User(String username,String userpassword) {
		this.username= username;
		this.userpassword=userpassword;
	}
	public User(String username,String userpassword,String age,String gender) {
		this.username= username;
		this.userpassword=userpassword;
		this.age=age;
		this.gender=gender;
	}

	public User(String username,String userpassword,String age,String gender,String phonenumber,String email) {
		this.username= username;
		this.userpassword=userpassword;
		this.age=age;
		this.gender=gender;
		this.phonenumber= phonenumber;
		this.email= email;

	}

	public User() {
		// TODO �Զ����ɵĹ��캯�����
	}
	public String getUserName() {
		return username;
	}
	public void setUserName(String username) {
		this.username= username;
	}
	public String getUserPassword() {
		return userpassword;
	}
	public void setUserPassword(String userpassword) {
		this.userpassword= userpassword;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age= age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender= gender;
	}
	//�ֻ�����
	public String getPhoneNumber() {
		return phonenumber;
	}
	public void setPhoneNumber(String phonenumber) {
		this.phonenumber= phonenumber;
	}
	//����
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email= email;
	}

}

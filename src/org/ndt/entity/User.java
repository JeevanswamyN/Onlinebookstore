package org.ndt.entity;

public class User {
	private String userName;
	private String password;
	private String email;
	private String city;
	private String state;
	private String phno;
	
	
	public User(String userName, String password, String email, String city,
			String state, String phno) {
		super();
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.city = city;
		this.state = state;
		this.phno = phno;
	}
	
	public User(String userName, String password, String email) {
		super();
		this.userName = userName;
		this.password = password;
		this.email = email;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}

}

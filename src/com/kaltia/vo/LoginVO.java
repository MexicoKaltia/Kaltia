package com.kaltia.vo;

import java.io.Serializable;

public class LoginVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2167797395809541793L;
	public LoginVO()  {
		// TODO Auto-generated constructor stub
	}
	
	private String user;
	private String pass;
	
	
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	

}

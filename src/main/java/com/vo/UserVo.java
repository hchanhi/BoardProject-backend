package com.vo;

public class UserVo {
	private String userNicName;
	private String userID;
	private String userEmail;
	private String userPassword;
	
	public UserVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public UserVo(String userNicName, String userID, String userEmail, String userPassword) {
		super();
		this.userNicName = userNicName;
		this.userID = userID;
		this.userEmail = userEmail;
		this.userPassword = userPassword;
	}
	public String getUserNicName() {
		return userNicName;
	}
	public void setUserNicName(String userNicName) {
		this.userNicName = userNicName;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	
	
	

}

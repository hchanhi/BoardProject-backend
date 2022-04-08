package com.vo;

public class UserVo {
	private int userNum;
	private String userNicName;
	private String userID;
	private String userEmail;
	private String userPassword;
	private String userLevel;
	
	public UserVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserVo(int userNum, String userNicName, String userID, String userEmail, String userPassword,
			String userLevel) {
		super();
		this.userNum = userNum;
		this.userNicName = userNicName;
		this.userID = userID;
		this.userEmail = userEmail;
		this.userPassword = userPassword;
		this.userLevel = userLevel;
	}

	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
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

	public String getUserLevel() {
		return userLevel;
	}

	public void setUserLevel(String userLevel) {
		this.userLevel = userLevel;
	}
	
	
}
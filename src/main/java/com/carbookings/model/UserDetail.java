package com.carbookings.model;

import java.io.Serializable;

public class UserDetail implements Serializable {
	private int userId;
	private String firstName;
	private String cpassword;
	private String email;
	private Long phoneNo;
    private String userType;
    private long wallet;

	public UserDetail(int userId, String firstName, String cpassword, String email, Long phoneno, String usertype,
			long wallet) {
		super();
		this.userId = userId;
		this.firstName = firstName;
		this.cpassword = cpassword;
		this.email = email;
		this.phoneNo = phoneno;
		this.userType = usertype;
		this.wallet = wallet;
	}

	public UserDetail(long wallet) {
		super();
		this.wallet = wallet;
	}

	public long getWallet() {
		return wallet;
	}

	public void setWallet(long wallet) {
		this.wallet = wallet;
	}

	public UserDetail(String firstName, String cpassword, String email, Long phoneno) {
		super();
		this.firstName = firstName;
		this.cpassword = cpassword;
		this.email = email;
		this.phoneNo = phoneno;
	}

	public UserDetail(String email) {
		
		this.email = email;
	
	}
	public UserDetail(int userId, String cpassword) {
		super();
		this.userId = userId;
		this.cpassword = cpassword;
	}

	public UserDetail(int userId) {
		super();
		this.userId = userId;
	}
	public UserDetail( String email,String cpassword) {
		super();
		
		this.email = email;
		this.cpassword = cpassword;
	}
	

	

	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	
	
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getCpassword() {
		return cpassword;
	}

	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Long getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(Long phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public UserDetail() {
		super();

	}
	public UserDetail(int userId, String firstName, String cpassword, String email, Long phoneno, String usertype) {
		super();
		this.userId = userId;
		this.firstName = firstName;
		this.cpassword = cpassword;
		this.email = email;
		this.phoneNo = phoneno;
		this.userType = usertype;
	}


	public UserDetail(long wallet, int user) {

		this.wallet=wallet;
		this.userId=user;
		
	}

	public UserDetail(String firstname, String password, String email, long phone, int userid, String usertype, long wallet) {
		this.firstName=firstname;
		this.cpassword=password;
		this.email=email;
		this.phoneNo=phone;
		this.userId=userid;
		this.userType=usertype;
		this.wallet=wallet;

	}

	public UserDetail(Long wallet, String email,int userid) {

		this.wallet=wallet;
		this.email=email;
		this.userId=userid;
	}




	
	
	

	
	
}

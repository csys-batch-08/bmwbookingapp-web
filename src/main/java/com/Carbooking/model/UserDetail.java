package com.Carbooking.model;

import java.util.Objects;

public class UserDetail {
	private int userId;
	private String first_name;
	private String cpassword;
	private String Email;
	private Long phoneno;
    private String usertype;
    private long wallet;

	public UserDetail(int userId, String first_name, String cpassword, String email, Long phoneno, String usertype,
			long wallet) {
		super();
		this.userId = userId;
		this.first_name = first_name;
		this.cpassword = cpassword;
		this.Email = email;
		this.phoneno = phoneno;
		this.usertype = usertype;
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

	public UserDetail(String first_name, String cpassword, String email, Long phoneno) {
		super();
		this.first_name = first_name;
		this.cpassword = cpassword;
		this.Email = email;
		this.phoneno = phoneno;
	}

	public UserDetail(String email) {
		
		this.Email = email;
	
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
		
		this.Email = email;
		this.cpassword = cpassword;
	}
	@Override
	public String toString() {
		return "Userdetail [userId=" + userId + ", first_name=" + first_name + ", cpassword=" + cpassword + ", Email="
				+ Email + ", phoneno=" + phoneno + ", usertype=" + usertype + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(Email, cpassword, first_name, phoneno, userId, usertype, wallet);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UserDetail other = (UserDetail) obj;
		return Objects.equals(Email, other.Email) && Objects.equals(cpassword, other.cpassword)
				&& Objects.equals(first_name, other.first_name) && Objects.equals(phoneno, other.phoneno)
				&& userId == other.userId && Objects.equals(usertype, other.usertype) && wallet == other.wallet;
	}

	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		this.Email = email;
	}
	public Long getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(Long phoneno) {
		this.phoneno = phoneno;
	}
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	public UserDetail() {
		super();

	}
	public UserDetail(int userId, String first_name, String cpassword, String email, Long phoneno, String usertype) {
		super();
		this.userId = userId;
		this.first_name = first_name;
		this.cpassword = cpassword;
		this.Email = email;
		this.phoneno = phoneno;
		this.usertype = usertype;
	}


	public UserDetail(long wallet, int user) {

		this.wallet=wallet;
		this.userId=user;
		
	}

	public UserDetail(String firstname, String password, String email, long phone, int userid, String usertype, long wallet) {
		this.first_name=firstname;
		this.cpassword=password;
		this.Email=email;
		this.phoneno=phone;
		this.userId=userid;
		this.usertype=usertype;
		this.wallet=wallet;

	}

	public UserDetail(Long wallet, String Email,int userid) {

		this.wallet=wallet;
		this.Email=Email;
		this.userId=userid;
	}




	
	
	

	
	
}

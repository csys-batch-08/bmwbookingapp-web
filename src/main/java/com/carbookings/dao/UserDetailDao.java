package com.carbookings.dao;

import java.sql.ResultSet;
import java.util.List;

import com.carbookings.model.UserDetail;

public interface UserDetailDao {
	public  void insert(UserDetail obj);
	public  UserDetail validate(UserDetail user2);
	public ResultSet validateAdmin(UserDetail obj);
	public  void update(UserDetail obj);
	public  void delete(UserDetail obj1);
	public  List<UserDetail> alluser(UserDetail obj1);
	public  Long wallte(UserDetail obj);
	public void updateWallet(UserDetail obj);
}

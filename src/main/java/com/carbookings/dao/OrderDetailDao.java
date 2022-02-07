package com.carbookings.dao;

import java.sql.ResultSet;

import com.carbookings.model.OrderDetail;

public interface OrderDetailDao {

	public  void insert(OrderDetail obj);
	public  int findorder(OrderDetail obj) ;
	public  void delete(OrderDetail obj1);
	 public  ResultSet view (OrderDetail obj1);
}

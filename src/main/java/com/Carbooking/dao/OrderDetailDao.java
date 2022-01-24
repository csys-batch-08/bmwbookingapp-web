package com.Carbooking.dao;

import java.sql.ResultSet;

import com.Carbooking.model.OrderDetail;

public interface OrderDetailDao {

	public  void insert(OrderDetail obj);
	public  int Findorder(OrderDetail obj) ;
	public  void delete(OrderDetail obj1);
	 public  ResultSet view (OrderDetail obj1);
}

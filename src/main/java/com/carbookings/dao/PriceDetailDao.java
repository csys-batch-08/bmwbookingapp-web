package com.carbookings.dao;

import com.carbookings.model.Pricedetail;

public interface PriceDetailDao {

	public  void insert(Pricedetail obj);
	 public  void update(Pricedetail obj1);
	 public  void delete (Pricedetail obj);
	 public  int findproduct(String obj);
	 
}

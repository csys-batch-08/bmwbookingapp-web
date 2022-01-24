package com.Carbooking.dao;

import com.Carbooking.model.Pricedetail;

public interface PriceDetailDao {

	public  void insert(Pricedetail obj);
	 public  void update(Pricedetail obj1);
	 public  void delete (Pricedetail obj);
	 public  int Findproduct(String obj);
	 
}

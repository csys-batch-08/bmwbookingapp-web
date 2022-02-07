package com.carbookings.dao;

import java.util.List;

import com.carbookings.model.CarProduct;

public interface CarProductDao {
	public   List<CarProduct> showview();
	public  void update(CarProduct obj1);
	  public  void insert(CarProduct obj1);
	   public  void delete(CarProduct obj1);
	   public  String searchproduct(CarProduct obj3);
	   public  CarProduct selectproduct(CarProduct obj);
	  

}

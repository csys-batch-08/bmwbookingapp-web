package com.Carbooking.dao;

import java.util.List;

import com.Carbooking.model.CarOrder;

public interface CarOrderDao {

	public  void insert(CarOrder obj);
	public  List<CarOrder> allbook(CarOrder obj1);
	public  void update(CarOrder obj);
}

package com.carbookings.model;


import java.io.Serializable;
import java.util.Date;


public class CarOrder implements Serializable {
	
	private int orderId;
	private String carId;
	private String carName;
	private String status;
	private Date expectedDate;
	private String address;
	private int userId;
	private int price;
	public CarOrder(int orderId, String carId, String carname ,Date expecteddate, String status, String address,
			int userid) {
		super();
		this.orderId = orderId;
		this.carId = carId;
		this.carName = carname;
		this.expectedDate = expecteddate;
		this.status = status;
		this.address = address;
		this.userId = userid;
	}

	
	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}



	public CarOrder(int userid) {
		super();
		this.userId = userid;
	}



	public int getUserid() {
		return userId;
	}



	public void setUserid(int userid) {
		this.userId = userid;
	}



	public CarOrder(int orderId, String carId, String carname, String status, Date expecteddate, String address) {
		super();
		this.orderId = orderId;
		this.carId = carId;
		this.carName = carname;
		this.status = status;
		this.expectedDate = expecteddate;
		this.address = address;
	}


	
	public CarOrder(int orderId, String carId, String carname, Date expecteddate) {
		super();
		this.orderId = orderId;
		this.carId = carId;
		this.carName = carname;
		
		this.expectedDate = expecteddate;
	}
	public CarOrder(int orderId, String carId, String carname,String status,String address) {
		super();
		this.orderId = orderId;
		this.carId = carId;
		this.carName = carname;
		this.status = status;
		
		this.address=address;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public CarOrder( String status,int orderId) {
		super();
		
		this.status = status;
		this.orderId = orderId;
	}
	

	public int getOrderId() {
		return orderId;
	}


	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}


	public String getCarId() {
		return carId;
	}


	public void setCarId(String carId) {
		this.carId = carId;
	}


	public String getCarname() {
		return carName;
	}
	public void setCarname(String carname) {
		carName = carname;
	}
	public Date getExpecteddate() {
		return expectedDate;
	}
	public void setExpecteddate(Date expecteddate) {
		expectedDate = expecteddate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public CarOrder() {
		super();
		
	}
	
	public CarOrder(int orderid, String carid, String carnames, Date dates, String address2,int userid) {
	
		this.orderId=orderid;
		this.carId=carid;
		this.carName=carnames;
		this.expectedDate=dates;
		this.address=address2;
		this.userId=userid;
	}



	public CarOrder(int order, String carn, String carname, java.sql.Date dates1,String address,String status1) {
		
		this.orderId=order;
		this.carId=carn;
		this.carName=carname;
		this.expectedDate=dates1;
		this.address=address;
		this.status=status1;
	}








}

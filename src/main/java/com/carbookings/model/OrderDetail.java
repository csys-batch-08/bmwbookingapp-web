package com.carbookings.model;

import java.util.Objects;

public class OrderDetail {
	private  int orderId;
	private int userId;
	private String carId;
	private int price;
	
	
	
	@Override
	public int hashCode() {
		return Objects.hash(carId, orderId, price, userId);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		OrderDetail other = (OrderDetail) obj;
		return Objects.equals(carId, other.carId) && orderId == other.orderId && price == other.price
				&& userId == other.userId;
	}
	@Override
	public String toString() {
		return "OrderDetail [orderId=" + orderId + ", userId=" + userId + ", carId=" + carId + ", price=" + price + "]";
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public OrderDetail(int orderId, int userId, String carId, int price) {
		super();
		this.orderId = orderId;
		this.userId = userId;
		this.carId = carId;
		this.price = price;
	}
	public OrderDetail() {
		super();

	}
	public OrderDetail(int userId, String carid, int price) {
		super();
		this.userId = userId;
		this.carId = carid;
		this.price = price;
	}
	public OrderDetail(int orderId) {
		super();
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
	

	

}

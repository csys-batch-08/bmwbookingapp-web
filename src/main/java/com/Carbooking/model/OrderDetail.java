package com.Carbooking.model;

import java.util.Objects;

public class OrderDetail {
	private  int orderid;
	private int userId;
	private String carid;
	private int price;
	
	public int getOrder_id() {
		return orderid;
	}
	public void setOrder_id(int order_id) {
		this.orderid = order_id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getCarid() {
		return carid;
	}
	public void setCar_id(String carid) {
		this.carid = carid;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public int hashCode() {
		return Objects.hash(carid, orderid, price, userId);
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
		return Objects.equals(carid, other.carid) && orderid == other.orderid && price == other.price
				&& userId == other.userId;
	}
	@Override
	public String toString() {
		return "orderDetail [order_id=" + orderid + ", userId=" + userId + ", car_id=" + carid + ", price=" + price
				+ "]";
	}
	public OrderDetail(int order_id, int userId, String car_id, int price) {
		super();
		this.orderid = order_id;
		this.userId = userId;
		this.carid = car_id;
		this.price = price;
	}
	public OrderDetail() {
		super();

	}
	public OrderDetail(int userId, String carid, int price) {
		super();
		this.userId = userId;
		this.carid = carid;
		this.price = price;
	}
	public OrderDetail(int order_id) {
		super();
		this.orderid = order_id;
	}
	

	

}

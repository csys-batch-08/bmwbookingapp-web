package com.carbookings.model;

import java.io.Serializable;

public class Invoice  implements Serializable{
    
	
	private int invoiceId;
     private String carId;
	private int userId;
	private int price;
	private String carName;
	private int advance;
	private int remainingAmount;

	public Invoice(int invoiceId, String carId, int userId, int price, String carName) {
		super();
		this.invoiceId = invoiceId;
		this.carId = carId;
		this.userId = userId;
		this.price = price;
		this.carName = carName;
	}
	@Override
	public String toString() {
		return "Invoice [invoiceId=" + invoiceId + ", carId=" + carId + ", userId=" + userId + ", price=" + price
				+ ", carName=" + carName + ", advance=" + advance + ", remainingAmount=" + remainingAmount + "]";
	}
	public int getInvoiceId() {
		return invoiceId;
	}
	public void setInvoiceId(int invoiceId) {
		this.invoiceId = invoiceId;
	}
	public String getCarId() {
		return carId;
	}
	public void setCarId(String carId) {
		this.carId = carId;
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
	public String getCarName() {
		return carName;
	}
	public void setCarName(String carName) {
		this.carName = carName;
	}
	public int getAdvance() {
		return advance;
	}
	public void setAdvance(int advance) {
		this.advance = advance;
	}
	public int getRemainingAmount() {
		return remainingAmount;
	}
	public void setRemainingAmount(int remainingAmount) {
		this.remainingAmount = remainingAmount;
	}
	public Invoice(String carId, int userId, int price, String carName,int advance,int remainingAmount) {
		super();
		this.carId = carId;
		this.userId = userId;
		this.price = price;
		this.carName = carName;
		this.advance=advance;
		this.remainingAmount=remainingAmount;
	}
	public Invoice(int userid) {
		this.userId=userid;
	}
	
}

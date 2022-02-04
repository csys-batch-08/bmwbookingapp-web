package com.Carbooking.model;

import java.util.Objects;

public class CarProduct {
	private String carId;
	private String carName;
	private String fuelType;
	private String carType;
	private String carModel;
	private int price;

	@Override
	public int hashCode() {
		return Objects.hash(carId, carModel, carName, carType, fuelType, images, price);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CarProduct other = (CarProduct) obj;
		return Objects.equals(carId, other.carId) && Objects.equals(carModel, other.carModel)
				&& Objects.equals(carName, other.carName) && Objects.equals(carType, other.carType)
				&& Objects.equals(fuelType, other.fuelType) && Objects.equals(images, other.images)
				&& price == other.price;
	}
	@Override
	public String toString() {
		return "CarProduct [carId=" + carId + ", carName=" + carName + ", fuelType=" + fuelType + ", carType=" + carType
				+ ", carModel=" + carModel + ", price=" + price + ", images=" + images + "]";
	}
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public CarProduct(String carId, String carName, String fuelType, String carType, String carModel, String images) {
		super();
		this.carId = carId;
		this.carName = carName;
		this.fuelType = fuelType;
		this.carType = carType;
		this.carModel = carModel;
		this.images = images;
	}
	public CarProduct(String carId, String carName, String fuelType, String carType, String carModel) {
		
	
		this.carId = carId;
		this.carName = carName;
		this.fuelType = fuelType;
		this.carType = carType;
		this.carModel = carModel;
	}
	public CarProduct(String carId, String fuelType, String carType, String carModel) {
	
		this.carId = carId;
		this.fuelType = fuelType;
		this.carType = carType;
		this.carModel = carModel;
	}
	public CarProduct(String carId) {

		this.carId = carId;
	}
	public CarProduct() {

	}
	public CarProduct(String  carId, String fuelType, String carType, String carModel, int price) {

		this.carId = carId;
		this.fuelType = fuelType;
		this.carType = carType;
		this.carModel = carModel;
		this.price=price;
	}
	public String getCarId() {
		return carId;
	}
	public void setCarId(String carId) {
		this.carId = carId;
	}
	public String getCarName() {
		return carName;
	}
	public void setCarName(String carName) {
		this.carName = carName;
	}
	public String getFuelType() {
		return fuelType;
	}
	public void setFuelType(String fuelType) {
		this.fuelType = fuelType;
	}
	public String getCarType() {
		return carType;
	}
	public void setCarType(String carType) {
		this.carType = carType;
	}
	public String getCarModel() {
		return carModel;
	}
	public void setCarModel(String carModel) {
		this.carModel = carModel;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	private String images;
	
	
	


}

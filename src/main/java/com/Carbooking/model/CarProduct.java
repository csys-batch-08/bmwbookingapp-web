package com.Carbooking.model;

import java.util.Objects;

public class CarProduct {

	private String Carid;
	private String Car_name;
	private String fuelType;
	private String CarType;
	private String CarModel;
	private int price;
	private String images;
	
	
	


	
	
	public CarProduct() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public CarProduct(String car_id, String car_name, String fuelType, String carType,String carModel) {
		super();
		this.Carid = car_id;
		this.Car_name = car_name;
		this.fuelType = fuelType;
		
		this.CarType = carType;
		this.CarModel = carModel;
		
	
	
	}
	
	@Override
	public String toString() {
		return "CarProduct [Carid=" + Carid + ", Car_name=" + Car_name + ", fuelType=" + fuelType + ", CarModel="
				+ CarModel + ", CarType=" + CarType + ", price=" + price + ", images=" + images + "]";
	}


	public CarProduct(String car_name, String fuelType, String carType,String carmodel) {
		super();
		this.Car_name = car_name;
		this.fuelType = fuelType;
		this.CarType = carType;
		this.CarModel=carmodel;
	}


	@Override
	public int hashCode() {
		return Objects.hash(CarModel, CarType, Car_name, Carid, fuelType, images, price);
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
		return Objects.equals(CarModel, other.CarModel) && Objects.equals(CarType, other.CarType)
				&& Objects.equals(Car_name, other.Car_name) && Objects.equals(Carid, other.Carid)
				&& Objects.equals(fuelType, other.fuelType) && Objects.equals(images, other.images)
				&& price == other.price;
	}


	


	public String getImages() {
		return images;
	}


	public void setImages(String images) {
		this.images = images;
	}


	public CarProduct(String car_id, String car_name) {
		super();
		Carid = car_id;
		Car_name = car_name;
	}
	
	public CarProduct(String car_id, int price) {
		super();
		this.Carid = car_id;
		this.price = price;
	}
	
	public CarProduct(String car_id) {
		super();
		this.Carid = car_id;
	}
	


	public CarProduct(String carid, String fuelType, String carModel, String carType, int price) {
		super();
		this.Carid = carid;
		this.fuelType = fuelType;
		this.CarModel = carModel;
		this.CarType = carType;
		this.price = price;
	}


	public CarProduct(String carid, String car_name, String fuelType,String carType,String carModel,
			String images) {
		super();
		this.Carid = carid;
		this.Car_name = car_name;
		this.fuelType = fuelType;
		this.CarType = carType;
		this.CarModel = carModel;
		this.images = images;
	}


	public String getCar_id() {
		return Carid;
	}
	public void setCar_id(String car_id) {
		this.Carid = car_id;
	}
	
	public String getCar_name() {
		return Car_name;
	}
	public void setCar_name(String car_name) {
		this.Car_name = car_name;
	}
	public String getFuelType() {
		return fuelType;
	}
	
	public void setFuelType(String fuelType) {
		this.fuelType = fuelType;
	}
	

	
	
	
	public String getCarModel() {
		return CarModel;
	}
	public void setCarModel(String carModel) {
		this.CarModel = carModel;
	}
	public String getCarType() {
		return CarType;
	}
	public void setCarType(String carType) {
		CarType = carType;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
}

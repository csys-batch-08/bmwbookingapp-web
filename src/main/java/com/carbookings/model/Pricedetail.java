package com.carbookings.model;

import java.io.Serializable;

public class  Pricedetail implements Serializable{
	 private  String carId;
		private String carName;
		 private int exshowroomPrice;
			private int onroadPrice;
			 private int roadTax;
			 private int insurance;
			 			 
			public Pricedetail(String carId, String carName, int exshowroomPrice,  int roadTax,
					int insurance,int onroadPrice) {
				super();
				this.carId = carId;
				this.carName = carName;
				this.exshowroomPrice = exshowroomPrice;
				this.onroadPrice = onroadPrice;
				this.roadTax = roadTax;
				this.insurance = insurance;
			}
		
	
			@Override
			public String toString() {
				return "Pricedetail [carId=" + carId + ", carName=" + carName + ", exshowroomPrice=" + exshowroomPrice
						+ ", onroadPrice=" + onroadPrice + ", roadTax=" + roadTax + ", insurance=" + insurance + "]";
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


			public int getExshowroomPrice() {
				return exshowroomPrice;
			}


			public void setExshowroomPrice(int exshowroomPrice) {
				this.exshowroomPrice = exshowroomPrice;
			}


			public int getOnroadPrice() {
				return onroadPrice;
			}


			public void setOnroadPrice(int onroadPrice) {
				this.onroadPrice = onroadPrice;
			}


			public int getRoadTax() {
				return roadTax;
			}


			public void setRoadTax(int roadTax) {
				this.roadTax = roadTax;
			}


			public int getInsurance() {
				return insurance;
			}


			public void setInsurance(int insurance) {
				this.insurance = insurance;
			}


			public Pricedetail(String carId, String carName, int exshowroomPrice, int roadTax, int insurance) {
				super();
				this.carId = carId;
				this.carName = carName;
				this.exshowroomPrice = exshowroomPrice;
				this.roadTax = roadTax;
				this.insurance = insurance;
			}
			
			public Pricedetail(String carid, int exshowroomprice, int roadtax, int insurance) {
				super();
				this.carId = carid;
				exshowroomPrice = exshowroomprice;
				this.roadTax = roadtax;
				this.insurance = insurance;
			}
			
			public Pricedetail(String carId, int exshowroomprice) {
				super();
				this.carId = carId;
				this.exshowroomPrice = exshowroomprice;
			}


			public Pricedetail() {
			
			}


			public Pricedetail(String carids) {
	           this.carId=carids;
			}
			
		
	



}

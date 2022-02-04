package com.Carbooking.model;

import java.util.Objects;

public class  Pricedetail {
	 private  String carid;
		private String carname;
		 private int Exshowroomprice;
			private int onroadprice;
			 private int roadtax;
			 private int insurance;
			 			 
			public Pricedetail(String car_id, String car_name, int exshowroomprice,  int roadtax,
					int insurance,int onroadprice) {
				super();
				this.carid = car_id;
				this.carname = car_name;
				this.Exshowroomprice = exshowroomprice;
				this.onroadprice = onroadprice;
				this.roadtax = roadtax;
				this.insurance = insurance;
			}
			public Pricedetail() {
				super();
		
			}
			public String getCar_id() {
				return carid;
			}
			public void setCar_id(String car_id) {
				this.carid = car_id;
			}
			public String getCar_name() {
				return carname;
			}
			public void setCar_name(String car_name) {
				this.carname = car_name;
			}
			public int getExshowroomprice() {
				return Exshowroomprice;
			}
			public void setExshowroomprice(int exshowroomprice) {
				Exshowroomprice = exshowroomprice;
			}
			public int getOnroadprice() {
				return onroadprice;
			}
			public void setOnroadprice(int onroadprice) {
				this.onroadprice = onroadprice;
			}
			public int getRoadtax() {
				return roadtax;
			}
			public void setRoadtax(int roadtax) {
				this.roadtax = roadtax;
			}
			public int getInsurance() {
				return insurance;
			}
			public void setInsurance(int insurance) {
				this.insurance = insurance;
			}
			@Override
			public int hashCode() {
				return Objects.hash(Exshowroomprice, carid, carname, insurance, onroadprice, roadtax);
			}
			@Override
			public boolean equals(Object obj) {
				if (this == obj)
					return true;
				if (obj == null)
					return false;
				if (getClass() != obj.getClass())
					return false;
				Pricedetail other = (Pricedetail) obj;
				return Exshowroomprice == other.Exshowroomprice && Objects.equals(carid, other.carid)
						&& Objects.equals(carname, other.carname) && insurance == other.insurance
						&& onroadprice == other.onroadprice && roadtax == other.roadtax;
			}
			@Override
			public String toString() {
				return "Pricedetail [car_id=" + carid + ", car_name=" + carname + ", Exshowroomprice="
						+ Exshowroomprice + ", onroadprice=" + onroadprice + ", roadtax=" + roadtax + ", insurance="
						+ insurance + "]";
			}
			public Pricedetail(String car_id, String car_name, int exshowroomprice, int roadtax, int insurance) {
				super();
				this.carid = car_id;
				this.carname = car_name;
				this.Exshowroomprice = exshowroomprice;
				this.roadtax = roadtax;
				this.insurance = insurance;
			}
			
			public Pricedetail(String carid, int exshowroomprice, int roadtax, int insurance) {
				super();
				this.carid = carid;
				Exshowroomprice = exshowroomprice;
				this.roadtax = roadtax;
				this.insurance = insurance;
			}
			public Pricedetail(String car_id) {
				super();
				this.carid = car_id;
			}
			public Pricedetail(String car_id, int exshowroomprice) {
				super();
				this.carid = car_id;
				this.Exshowroomprice = exshowroomprice;
			}
			
		
	



}

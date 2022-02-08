package com.carbookings.daoimpl;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.carbookings.logger.Logger;
import com.carbookings.model.*;
import com.connection.*;



public  class PriceDetailDaoImpl {
	public  void insert(Pricedetail obj)
    {
		
	String insert="insert into price_detail (car_id,car_name,Exshowroom_price,road_tax,insurance,onroad_price) values(?,?,?,?,?,?)";

	Connection con=null;
	PreparedStatement statement=null;
	try {
		con = Connectionutil.getDBconnection();
		 statement=con.prepareStatement(insert);
		statement.setString(1, obj.getCarId());
		statement.setString(2, obj.getCarName());
		statement.setInt(3, obj.getExshowroomPrice());
		statement.setInt(4, obj.getRoadTax());
		statement.setInt(5, obj.getInsurance());
		statement.setInt(6, obj.getOnroadPrice());
		statement.executeUpdate();
		
	}catch (Exception e) {

		Logger.printStackTrace(e);
		Logger.runTimeException(e.getMessage());

	} finally {

		Connectionutil.close(null, statement, con);
	}
	

	
    }
    public  void update(Pricedetail obj1)
    {
  	  String update="update price_detail set Exshowroom_price=?,road_tax=?,insurance=? where car_id=? ";
  	  Connection con=null;
  	 PreparedStatement statement=null;
	try {
		con = Connectionutil.getDBconnection();
		 statement=con.prepareStatement(update);
	     statement.setInt(1, obj1.getExshowroomPrice());
	     statement.setInt(2, obj1.getRoadTax());
	     statement.setInt(3, obj1.getInsurance());
	      statement.setString(4, obj1.getCarId());
	  	  statement.executeUpdate();
	  	 
	} 
	catch (Exception e) {

		Logger.printStackTrace(e);
		Logger.runTimeException(e.getMessage());

	} finally {

		Connectionutil.close(null, statement, con);
	}
  	 
    }
    public  void delete (Pricedetail obj) 
    {
    	String delete="delete from price_detail where car_id=?";
    	Connection con=null;
    	PreparedStatement statement=null;
		try {
			con = Connectionutil.getDBconnection();
		 statement=con.prepareStatement(delete);
	    	statement.setString(1, obj.getCarId());
	    	statement.executeUpdate();
		} catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			Connectionutil.close(null, statement, con);
		}
    	
    }
    
    public static int findproduct(String obj) 
    {
   	 String search="Select onroad_price from price_detail where car_id=?";
   	 Connection con=null;
   	PreparedStatement statement=null;
   	ResultSet rs=null;
  
   	 int onprice=0;
		try {
			
			 con = Connectionutil.getDBconnection();
			statement=con.prepareStatement(search);
		    	statement.setString(1, obj);
		 
		    	 rs=statement.executeQuery();
		    	
		    	 if(rs.next())
		    	 {
		             onprice=rs.getInt(1);
		    	 }
		    	 
		} catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			Connectionutil.close(rs, statement, con);
		}
		
		
		  return onprice;
    }
	 public  List<Pricedetail> selectproduct(Pricedetail obj) 
	 {
		 List<Pricedetail> productsList=new ArrayList<>();
		 Pricedetail cars=null;
		 PreparedStatement statement=null;
		 ResultSet resultset=null;
		 String search="Select * from Price_detail where car_id=?";
   	 Connection con=null;
	try {
		con = Connectionutil.getDBconnection();
		  statement=con.prepareStatement(search);
		  
		   	statement.setString(1, obj.getCarId());
		   	  resultset=statement.executeQuery();
		   	 
		   	 
		   	 while(resultset.next())
		   	 {
		   		
		   		 cars =new Pricedetail(resultset.getString(1),resultset.getString(2),resultset.getInt(3),resultset.getInt(4),resultset.getInt(5),resultset.getInt(6));
		   		 productsList.add(cars);
		   	 }
	} 
	catch (Exception e) {

		Logger.printStackTrace(e);
		Logger.runTimeException(e.getMessage());

	} finally {

		Connectionutil.close(resultset, statement, con);
	}
	
   	
return productsList;
	 

}
	
	 public  List<Pricedetail> viewPrice() 
	 {
		 List<Pricedetail> productsList=new ArrayList<>();
		 Pricedetail cars=null;
		 String search="Select * from Price_detail ";
   	 Connection con=null;
   	ResultSet rs=null;
   	 PreparedStatement statement=null;
	try {
		con = Connectionutil.getDBconnection();
		 statement=con.prepareStatement(search);
	   	  rs=statement.executeQuery();
	   	 
	   	 while(rs.next())
	   	 {
	   		
	   		 cars =new Pricedetail(rs.getString(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getInt(5),rs.getInt(6));
	   		 productsList.add(cars);
	   	 }
	} 
	catch (Exception e) {

		Logger.printStackTrace(e);
		Logger.runTimeException(e.getMessage());

	} finally {

		Connectionutil.close(rs, statement, con);
	}
   	
return productsList;
	 }

}

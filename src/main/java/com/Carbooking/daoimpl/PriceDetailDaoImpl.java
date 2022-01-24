package com.Carbooking.daoimpl;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Carbooking.model.*;
import com.connection.*;



public  class PriceDetailDaoImpl {
	public  void insert(Pricedetail obj)
    {
		
	String insert="insert into price_detail (car_id,car_name,Exshowroom_price,road_tax,insurance,onroad_price) values(?,?,?,?,?,?)";

	Connection Con;
	try {
		Con = Connectionutil.getDBconnection();
		PreparedStatement stmt=Con.prepareStatement(insert);
		stmt.setString(1, obj.getCar_id());
		stmt.setString(2, obj.getCar_name());
		stmt.setInt(3, obj.getExshowroomprice());
		stmt.setInt(4, obj.getRoadtax());
		stmt.setInt(5, obj.getInsurance());
		stmt.setInt(6, obj.getOnroadprice());
		int i=stmt.executeUpdate();
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	

	
    }
    public static void update(Pricedetail obj1)
    {
  	  String update="update price_detail set Exshowroom_price=?,road_tax=?,insurance=? where car_id=? ";
  	  Connection Con;
	try {
		Con = Connectionutil.getDBconnection();
		 PreparedStatement stmt=Con.prepareStatement(update);
	     stmt.setInt(1, obj1.getExshowroomprice());
	     stmt.setInt(2, obj1.getRoadtax());
	     stmt.setInt(3, obj1.getInsurance());
	      stmt.setString(4, obj1.getCar_id());
	  	  int i=stmt.executeUpdate();
	  	 
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
  	 
    }
    public static void delete (Pricedetail obj) throws ClassNotFoundException, SQLException
    {
    	String delete="delete from price_detail where car_id=?";
    	Connection Con=Connectionutil.getDBconnection();
    	PreparedStatement stmt=Con.prepareStatement(delete);
    	stmt.setString(1, obj.getCar_id());
    	int i=stmt.executeUpdate();
    	
    }
    
    public static int Findproduct(String obj) 
    {
   	 String search="Select onroad_price from price_detail where car_id=?";
   	 Connection Con;
  
   	 int onprice=0;
		try {
			
			 Con = Connectionutil.getDBconnection();
			 PreparedStatement stmt=Con.prepareStatement(search);
		    	stmt.setString(1, obj);
		 
		    	 ResultSet rs=stmt.executeQuery();
		    	
		    	 if(rs.next())
		    	 {
		             onprice=rs.getInt(1);
		           
		             
		    		 
//		    		 Carproduct pd=new  Carproduct(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6));
//		    	 System.out.println(pd);
		    	 }
		    	 
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		  return onprice;
    }
    
	 public  Pricedetail selectproduct(Pricedetail obj) throws ClassNotFoundException, SQLException
	 {
		
		 Pricedetail cars=null;
		 String search="Select * from Price_detail where car_id=?";
    	 Connection Con=Connectionutil.getDBconnection();
    	 PreparedStatement stmt1=Con.prepareStatement(search);
   
    	stmt1.setString(1, obj.getCar_id());
    	 ResultSet rs=stmt1.executeQuery();
    	 
    	 
    	 while(rs.next())
    	 {
//    		 System.out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6));
    		 cars =new Pricedetail(rs.getString(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getInt(5),rs.getInt(6));
    		 return cars;
    	 }
return cars;
	 

 }
  
  
	

}

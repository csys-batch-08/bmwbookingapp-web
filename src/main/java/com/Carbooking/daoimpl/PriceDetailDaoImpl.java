package com.Carbooking.daoimpl;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Carbooking.model.*;
import com.connection.*;



public  class PriceDetailDaoImpl {
	public  void insert(Pricedetail obj)
    {
		
	String insert="insert into price_detail (car_id,car_name,Exshowroom_price,road_tax,insurance,onroad_price) values(?,?,?,?,?,?)";

	Connection Con=null;
	PreparedStatement statement=null;
	try {
		Con = Connectionutil.getDBconnection();
		 statement=Con.prepareStatement(insert);
		statement.setString(1, obj.getCar_id());
		statement.setString(2, obj.getCar_name());
		statement.setInt(3, obj.getExshowroomprice());
		statement.setInt(4, obj.getRoadtax());
		statement.setInt(5, obj.getInsurance());
		statement.setInt(6, obj.getOnroadprice());
		int i=statement.executeUpdate();
		
	} catch (ClassNotFoundException e) {

		e.printStackTrace();
	} catch (SQLException e) {

		e.printStackTrace();
	}
	finally {
		if (statement != null) {
			try {
				statement.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (Con != null) {
			try {
				Con.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
	}
	

	
    }
    public static void update(Pricedetail obj1)
    {
  	  String update="update price_detail set Exshowroom_price=?,road_tax=?,insurance=? where car_id=? ";
  	  Connection Con=null;
  	 PreparedStatement statement=null;
	try {
		Con = Connectionutil.getDBconnection();
		 statement=Con.prepareStatement(update);
	     statement.setInt(1, obj1.getExshowroomprice());
	     statement.setInt(2, obj1.getRoadtax());
	     statement.setInt(3, obj1.getInsurance());
	      statement.setString(4, obj1.getCar_id());
	  	  int i=statement.executeUpdate();
	  	 
	} catch (ClassNotFoundException e) {

		e.printStackTrace();
	} catch (SQLException e) {

		e.printStackTrace();
	}
	finally {
		if (statement != null) {
			try {
				statement.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (Con != null) {
			try {
				Con.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
	}
  	 
    }
    public static void delete (Pricedetail obj) 
    {
    	String delete="delete from price_detail where car_id=?";
    	Connection Con=null;
    	PreparedStatement statement=null;
		try {
			Con = Connectionutil.getDBconnection();
		 statement=Con.prepareStatement(delete);
	    	statement.setString(1, obj.getCar_id());
	    	int i=statement.executeUpdate();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		finally {
			if (statement != null) {
				try {
					statement.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (Con != null) {
				try {
					Con.close();
				} catch (SQLException e) {

					e.printStackTrace();
				}
			}
		}
    	
    	
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
		    	 }
		    	 
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} catch (SQLException e) {

			e.printStackTrace();
		}
		
		  return onprice;
    }
	 public  List<Pricedetail> selectproduct(Pricedetail obj) throws ClassNotFoundException, SQLException
	 {
		 List<Pricedetail> productsList=new ArrayList<Pricedetail>();
		 Pricedetail cars=null;
		 String search="Select * from Price_detail where car_id=?";
   	 Connection Con=Connectionutil.getDBconnection();
   	 PreparedStatement stmt1=Con.prepareStatement(search);
  
   	stmt1.setString(1, obj.getCar_id());
   	 ResultSet rs=stmt1.executeQuery();
   	 
   	 
   	 while(rs.next())
   	 {
   		
   		 cars =new Pricedetail(rs.getString(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getInt(5),rs.getInt(6));
   		 productsList.add(cars);
   	 }
return productsList;
	 

}
	
  
	

}

package com.Carbooking.daoimpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Carbooking.model.CarProduct;
import com.Carbooking.model.UserDetail;
import com.connection.Connectionutil;


public class CarProductDaoImpl {

	public  static List<CarProduct> showview() 
	{
		List<CarProduct> productsList=new ArrayList<CarProduct>();
		
		String showQuery="select * from Car_details";
		Connection con;
		try {
			con = Connectionutil.getDBconnection();
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(showQuery);
			while(rs.next())
			{
				
				CarProduct product=new CarProduct(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
				productsList.add(product);
				
			}
			
			
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return productsList;
	}

//	
     public  void update(CarProduct obj1) 
     {
   	  String update="update car_details set fueltype=?,cartype=?,car_model=? where Car_id=? ";
   	  Connection Con;
	try {
		Con = Connectionutil.getDBconnection();
		PreparedStatement stmt=Con.prepareStatement(update);
	   	stmt.setString(1, obj1.getFuelType());
	   	stmt.setString(2, obj1.getCarType());
	   	stmt.setString(3, obj1.getCarModel());
	   
	   	  stmt.setString(4, obj1.getCarId());
	   	  int i=stmt.executeUpdate();
	   	 
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   	  
     }
     public  void insert(CarProduct obj1) 
     {
    	 String insert="insert into car_details (car_id,car_name,fueltype,cartype,car_model,images)values(?,?,?,?,?,?)";
    	 Connection Con;
		try {
			Con = Connectionutil.getDBconnection();
			PreparedStatement stmt=Con.prepareStatement(insert);
	    	 stmt.setString(1, obj1.getCarId());
	    	 stmt.setString(2, obj1.getCarName());
	    	 stmt.setString(3, obj1.getFuelType());
	    	 stmt.setString(4, obj1.getCarModel());
	    	 stmt.setString(5, obj1.getCarType());
	    	 stmt.setString(6, obj1.getImages());
	    	
	    	 int i=stmt.executeUpdate();
	    	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	 
     }
     public  void delete(CarProduct obj1) 
     {
    	 String delete="delete from car_details where car_id=?";
    	 Connection Con;
		try {
			Con = Connectionutil.getDBconnection();
			 PreparedStatement stmt1=Con.prepareStatement(delete);
	    	 stmt1.setString(1, obj1.getCarId());
	    	 int i=stmt1.executeUpdate();
	    	 
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
     }

    	 public  List<CarProduct> selectproduct(CarProduct obj) throws ClassNotFoundException, SQLException
    	 {

    			List<CarProduct> productsList=new ArrayList<CarProduct>();
    		
    		 CarProduct cars=null;
    		 String search="Select * from car_details where car_id=?";
        	 Connection Con=Connectionutil.getDBconnection();
        	 PreparedStatement stmt1=Con.prepareStatement(search);
        	
        	stmt1.setString(1, obj.getCarId());
        	 ResultSet rs=stmt1.executeQuery();
        	 
        	 
        	 while(rs.next())
        	 {
//        		 
        		 cars =new CarProduct(rs.getString(1),rs.getString(2),rs.getString(3) ,rs.getString(4), rs.getString(5));
        		 productsList.add(cars);
        	 }
   return productsList;
    	 
   
     }
    	   public  ResultSet Searchcar(CarProduct obj) 
    	     {
    	    	 String search="Select * from Car_details where car_name=?";
    	    	 Connection Con;
    	    	
    	    	 ResultSet rs=null;
    			try {
    				 Con = Connectionutil.getDBconnection();
    				 PreparedStatement stmt=Con.prepareStatement(search);
    				
    			    	stmt.setString(1, obj.getCarName());
    			    
    			    	  rs=stmt.executeQuery();
    			    	return rs;
    			       
    			} catch (ClassNotFoundException e) {
    				// TODO Auto-generated catch block
    				e.printStackTrace();
    			} catch (SQLException e) {
    				// TODO Auto-generated catch block
    				e.printStackTrace();
    			}
    			return rs;
    	    	
    	     }
    	   
    	   public List<CarProduct> Search( String Carname) throws ClassNotFoundException, SQLException 
    		{
    				
    					List<CarProduct> searchcar=new ArrayList<CarProduct>();
    					CarProduct car=null;
    					
    					String showQuery="select car_name,fueltype,cartype,car_model from car_details where car_name=?";
    					 Connection Con=Connectionutil.getDBconnection();
    					 PreparedStatement ps =Con.prepareStatement(showQuery);
    					 ps.setString(1, Carname);
    					 ResultSet rs=ps.executeQuery();
    					

    					while(rs.next()) 
    					{
    						
    						
    				    car=new  CarProduct(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4));
    				    searchcar.add(car);
    				  
    					}
    					return searchcar;        
    		}
    	   

}

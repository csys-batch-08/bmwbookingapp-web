package com.carbookings.daoimpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import java.util.ArrayList;
import java.util.List;

import com.carbookings.logger.Logger;
import com.carbookings.model.CarProduct;
import com.connection.Connectionutil;


public class CarProductDaoImpl {

	public  static List<CarProduct> showview() 
	{
		List<CarProduct> productsList=new ArrayList<>();
		
		String showQuery="select car_id,car_name,fueltype,cartype,car_model from Car_details";
		Connection con=null;
		PreparedStatement statement=null;
		ResultSet rs=null;
		try {
			con = Connectionutil.getDBconnection();
			 statement=con.prepareStatement(showQuery);
			 rs=statement.executeQuery();
			while(rs.next())
			{
				
				CarProduct product=new CarProduct(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
				productsList.add(product);
				
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

     public  void update(CarProduct obj1) 
     {
   	  String update="update car_details set fueltype=?,cartype=?,car_model=? where Car_id=? ";
   	  Connection con=null;
   	PreparedStatement statement=null;
   
	try {
		con = Connectionutil.getDBconnection();
	 statement=con.prepareStatement(update);
	   	statement.setString(1, obj1.getFuelType());
	   	statement.setString(2, obj1.getCarType());
	   	statement.setString(3, obj1.getCarModel());
	   
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
     public  void insert(CarProduct obj1) 
     {
    	 String insert="insert into car_details (car_id,car_name,fueltype,cartype,car_model,images)values(?,?,?,?,?,?)";
    	 Connection con=null;
    	 PreparedStatement statement=null;
    	
		try {
			con = Connectionutil.getDBconnection();
			 statement=con.prepareStatement(insert);
	    	 statement.setString(1, obj1.getCarId());
	    	 statement.setString(2, obj1.getCarName());
	    	 statement.setString(3, obj1.getFuelType());
	    	 statement.setString(4, obj1.getCarModel());
	    	 statement.setString(5, obj1.getCarType());
	    	 statement.setString(6, obj1.getImages());
	    	
	    	statement.executeUpdate();
	    	
		} catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			Connectionutil.close(null, statement, con);
		}
     }
     public  void delete(CarProduct obj1) 
     {
    	 String delete="delete from car_details where car_id=?";
    	 Connection con=null;
    	 PreparedStatement statement=null;
    	 
		try {
			con = Connectionutil.getDBconnection();
		 statement=con.prepareStatement(delete);
	    	 statement.setString(1, obj1.getCarId());
	    	 statement.executeUpdate();
	    	 
		} catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			Connectionutil.close(null, statement, con);
		}
		
    	
     }

    	 public  List<CarProduct> selectproduct(CarProduct obj) 
    	 {

    			List<CarProduct> productsList=new ArrayList<>();
    		
    		 CarProduct cars=null;
    		 String search="Select car_id,car_name,fueltype,cartype,car_model from car_details where car_id=?";
        	 Connection con=null;
        	 PreparedStatement statement=null;
        	 ResultSet rs=null;
			try {
				con = Connectionutil.getDBconnection();
				  statement=con.prepareStatement(search);
		        	
		        	statement.setString(1, obj.getCarId());
		        	  rs=statement.executeQuery();
		        	 
		        	 
		        	 while(rs.next())
		        	 {
		        		 
		        		 cars =new CarProduct(rs.getString(1),rs.getString(2),rs.getString(3) ,rs.getString(4), rs.getString(5));
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

	   
    	   public List<CarProduct> search( String carname) 
    		{
    				
    					List<CarProduct> searchcar=new ArrayList<>();
    					CarProduct car=null;
    					
    					String showQuery="select car_name,fueltype,cartype,car_model from car_details where car_name=?";
    					 Connection con=null;
    					 PreparedStatement statement =null;
    					 ResultSet rs=null;
						try {
							con = Connectionutil.getDBconnection();
							 statement =con.prepareStatement(showQuery);
	    					 statement.setString(1, carname);
	    					 rs=statement.executeQuery();
	    					

	    					while(rs.next()) 
	    					{
	    						
	    						
	    				    car=new  CarProduct(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4));
	    				    searchcar.add(car);
	    				  
	    					}
						}
						catch (Exception e) {

							Logger.printStackTrace(e);
							Logger.runTimeException(e.getMessage());

						} finally {

							Connectionutil.close(rs, statement, con);
						}
    					return searchcar;        
    		}
    	   

}

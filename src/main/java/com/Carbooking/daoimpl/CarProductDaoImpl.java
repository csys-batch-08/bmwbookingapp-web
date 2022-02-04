package com.Carbooking.daoimpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Carbooking.model.CarProduct;

import com.connection.Connectionutil;


public class CarProductDaoImpl {

	public  static List<CarProduct> showview() 
	{
		List<CarProduct> productsList=new ArrayList<CarProduct>();
		
		String showQuery="select car_id,car_name,fueltype,cartype,car_model from Car_details";
		Connection con=null;
		Statement statement=null;
		try {
			con = Connectionutil.getDBconnection();
			 statement=con.createStatement();
			ResultSet rs=statement.executeQuery(showQuery);
			while(rs.next())
			{
				
				CarProduct product=new CarProduct(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
				productsList.add(product);
				
			}
			
			
		} catch (ClassNotFoundException e1) {

			e1.printStackTrace();
		} catch (SQLException e1) {

			e1.printStackTrace();
		}
		finally {
			if (statement != null) {
				try {
					statement.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {

					e.printStackTrace();
				}
			}

		}
		return productsList;
	}

     public  void update(CarProduct obj1) 
     {
   	  String update="update car_details set fueltype=?,cartype=?,car_model=? where Car_id=? ";
   	  Connection Con=null;
   	PreparedStatement statement=null;
	try {
		Con = Connectionutil.getDBconnection();
	 statement=Con.prepareStatement(update);
	   	statement.setString(1, obj1.getFuelType());
	   	statement.setString(2, obj1.getCarType());
	   	statement.setString(3, obj1.getCarModel());
	   
	   	  statement.setString(4, obj1.getCarId());
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
     public  void insert(CarProduct obj1) 
     {
    	 String insert="insert into car_details (car_id,car_name,fueltype,cartype,car_model,images)values(?,?,?,?,?,?)";
    	 Connection Con=null;
    	 PreparedStatement statement=null;
		try {
			Con = Connectionutil.getDBconnection();
			 statement=Con.prepareStatement(insert);
	    	 statement.setString(1, obj1.getCarId());
	    	 statement.setString(2, obj1.getCarName());
	    	 statement.setString(3, obj1.getFuelType());
	    	 statement.setString(4, obj1.getCarModel());
	    	 statement.setString(5, obj1.getCarType());
	    	 statement.setString(6, obj1.getImages());
	    	
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
     public  void delete(CarProduct obj1) 
     {
    	 String delete="delete from car_details where car_id=?";
    	 Connection Con=null;
    	 PreparedStatement statement=null;
		try {
			Con = Connectionutil.getDBconnection();
		 statement=Con.prepareStatement(delete);
	    	 statement.setString(1, obj1.getCarId());
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

    	 public  List<CarProduct> selectproduct(CarProduct obj) 
    	 {

    			List<CarProduct> productsList=new ArrayList<CarProduct>();
    		
    		 CarProduct cars=null;
    		 String search="Select car_id,car_name,fueltype,cartype,car_model from car_details where car_id=?";
        	 Connection Con=null;
        	 PreparedStatement statement=null;
			try {
				Con = Connectionutil.getDBconnection();
				  statement=Con.prepareStatement(search);
		        	
		        	statement.setString(1, obj.getCarId());
		        	 ResultSet rs=statement.executeQuery();
		        	 
		        	 
		        	 while(rs.next())
		        	 {
		        		 
		        		 cars =new CarProduct(rs.getString(1),rs.getString(2),rs.getString(3) ,rs.getString(4), rs.getString(5));
		        		 productsList.add(cars);
		        	 }
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
        	
   return productsList;
    	 
   
     }

	   
    	   public List<CarProduct> search( String Carname) 
    		{
    				
    					List<CarProduct> searchcar=new ArrayList<CarProduct>();
    					CarProduct car=null;
    					
    					String showQuery="select car_name,fueltype,cartype,car_model from car_details where car_name=?";
    					 Connection Con=null;
    					 PreparedStatement statement =null;
						try {
							Con = Connectionutil.getDBconnection();
							 statement =Con.prepareStatement(showQuery);
	    					 statement.setString(1, Carname);
	    					 ResultSet rs=statement.executeQuery();
	    					

	    					while(rs.next()) 
	    					{
	    						
	    						
	    				    car=new  CarProduct(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4));
	    				    searchcar.add(car);
	    				  
	    					}
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
    					 
    					return searchcar;        
    		}
    	   

}

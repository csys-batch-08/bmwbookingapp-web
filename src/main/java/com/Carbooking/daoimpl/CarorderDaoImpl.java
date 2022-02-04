package com.Carbooking.daoimpl;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Carbooking.model.CarOrder;

import com.connection.Connectionutil;

public class CarorderDaoImpl {

	public static void insert(CarOrder obj)
	{
		

		String insert="insert into car_orders(Order_id,Car_id,Car_name,Expecteddate,address,userid) values(?,?,?,?,?,?)";
		  Connection Con=null;
		  PreparedStatement statement=null;
		 
		  
		try {

			Con = Connectionutil.getDBconnection();
			 statement=Con.prepareStatement(insert);
			statement.setInt(1, obj.getOrder_id());
			statement.setString(2, obj.getCar_id());		
			statement.setString(3, obj.getCarname());
		statement.setDate(4,new java.sql.Date(obj.getExpecteddate().getTime()));
			
			statement.setString(5, obj.getAddress());
			statement.setInt(6, obj.getUserid());
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
	public List<CarOrder> allbook()  {
		List<CarOrder> viewbooking=new ArrayList<CarOrder>();
		String allbook="Select Order_id,Car_id,Car_name,Expecteddate,address,status from Car_orders";
		Connection Con=null;
		PreparedStatement statement=null;
		try {
			Con = Connectionutil.getDBconnection();
			 statement=Con.prepareStatement(allbook);
			ResultSet rs=statement.executeQuery();
			
			while(rs.next())
			{
			     CarOrder details=new CarOrder(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDate(4),rs.getString(5),rs.getString(6));
			     viewbooking.add(details);
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
		
		return viewbooking;
	}
	public  void update(CarOrder obj)  {
		String log1 = "update Car_orders set status=? where order_id=?";
		Connection Con=null;
		PreparedStatement statement=null;
		try {
			Con = Connectionutil.getDBconnection();
		 statement = Con.prepareStatement(log1);
			statement.setString(1, obj.getStatus());
			statement.setInt(2, obj.getOrder_id());
			int i = statement.executeUpdate();
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
	public static  List<CarOrder> showview() 
	{
		List<CarOrder> productsList=new ArrayList<CarOrder>();
		
		String showQuery="select Order_id,Car_id,Car_name,address,status from Car_orders";
		Connection con=null;
		Statement statement=null;
		try {
			con = Connectionutil.getDBconnection();
			 statement=con.createStatement();
			ResultSet rs=statement.executeQuery(showQuery);
			while(rs.next())
			{
				
				CarOrder product=new CarOrder(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
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
	public List<CarOrder> userhistory(CarOrder obj)  {
		List<CarOrder> viewbooking=new ArrayList<CarOrder>();
		String allbook="Select Order_id,Car_id,Car_name,Expecteddate,address,status from Car_orders where userid=?";
		Connection Con=null;
		PreparedStatement statement=null;
		try {
			Con = Connectionutil.getDBconnection();
		 statement=Con.prepareStatement(allbook);
			statement.setInt(1, obj.getUserid());
			ResultSet rs=statement.executeQuery();
			
			while(rs.next())
			{
			     CarOrder details=new CarOrder(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDate(4),rs.getString(5),rs.getString(6));
			     viewbooking.add(details);
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
		
		return viewbooking;
	}
	

}

package com.Carbooking.daoimpl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.Carbooking.model.CarOrder;
import com.Carbooking.model.UserDetail;
import com.connection.Connectionutil;

public class CarorderDaoImpl {

	public static void insert(CarOrder obj)
	{
		

		String insert="insert into car_orders(Order_id,Car_id,Car_name,Expecteddate,address,userid) values(?,?,?,?,?,?)";
		  Connection Con;
		 
		  
		try {

			Con = Connectionutil.getDBconnection();
			PreparedStatement stmt=Con.prepareStatement(insert);
			stmt.setInt(1, obj.getOrder_id());
			stmt.setString(2, obj.getCar_id());		
			stmt.setString(3, obj.getCarname());
		

		stmt.setDate(4,new java.sql.Date(obj.getExpecteddate().getTime()));
			
			stmt.setString(5, obj.getAddress());
			stmt.setInt(6, obj.getUserid());
			int i=stmt.executeUpdate();
			
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} catch (SQLException e) {

			e.printStackTrace();
		}
		
	}
	public List<CarOrder> allbook()  {
		List<CarOrder> viewbooking=new ArrayList<CarOrder>();
		String allbook="Select Order_id,Car_id,Car_name,Expecteddate,address,status from Car_orders";
		Connection Con;
		try {
			Con = Connectionutil.getDBconnection();
			PreparedStatement stmt=Con.prepareStatement(allbook);
			ResultSet rs=stmt.executeQuery();
			
			while(rs.next())
			{
			     CarOrder details=new CarOrder(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDate(4),rs.getString(5),rs.getString(6));
			     viewbooking.add(details);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return viewbooking;
	}
	public  void update(CarOrder obj) throws ClassNotFoundException, SQLException {
		String log1 = "update Car_orders set status=? where order_id=?";
		Connection Con = Connectionutil.getDBconnection();
		PreparedStatement stmt = Con.prepareStatement(log1);
		stmt.setString(1, obj.getStatus());
		stmt.setInt(2, obj.getOrder_id());
		int i = stmt.executeUpdate();
	

	}
	public static  List<CarOrder> showview() 
	{
		List<CarOrder> productsList=new ArrayList<CarOrder>();
		
		String showQuery="select Order_id,Car_id,Car_name,address,status from Car_orders";
		Connection con;
		try {
			con = Connectionutil.getDBconnection();
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(showQuery);
			while(rs.next())
			{
				
				CarOrder product=new CarOrder(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
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
	public List<CarOrder> userhistory(CarOrder obj)  {
		List<CarOrder> viewbooking=new ArrayList<CarOrder>();
		String allbook="Select Order_id,Car_id,Car_name,Expecteddate,address,status,userid from Car_orders where userid=?";
		Connection Con;
		try {
			Con = Connectionutil.getDBconnection();
			PreparedStatement stmt=Con.prepareStatement(allbook);
			stmt.setInt(1, obj.getUserid());
			ResultSet rs=stmt.executeQuery();
			
			while(rs.next())
			{
			     CarOrder details=new CarOrder(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDate(4),rs.getString(5),rs.getString(6),rs.getInt(7));
			     viewbooking.add(details);
			}
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} catch (SQLException e) {

			e.printStackTrace();
		}
		
		return viewbooking;
	}
	

}

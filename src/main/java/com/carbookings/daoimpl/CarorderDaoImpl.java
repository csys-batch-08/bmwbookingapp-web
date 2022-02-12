package com.carbookings.daoimpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.carbookings.logger.Logger;
import com.carbookings.model.CarOrder;
import com.connection.ConnectionUtil;
public class CarorderDaoImpl {

	public  void insert(CarOrder obj)
	{
		

		String insert="insert into car_orders(Order_id,Car_id,Car_name,Expecteddate,address,userid) values(?,?,?,?,?,?)";
		  Connection con=null;
		  PreparedStatement statement=null;
		  
		 
		  
		try {

			con = ConnectionUtil.getDBconnection();
			 statement=con.prepareStatement(insert);
			statement.setInt(1, obj.getOrderId());
			statement.setString(2, obj.getCarId());		
			statement.setString(3, obj.getCarname());
		statement.setDate(4,new java.sql.Date(obj.getExpecteddate().getTime()));
			
			statement.setString(5, obj.getAddress());
			statement.setInt(6, obj.getUserid());
			 statement.executeUpdate();
			
		}
		catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			ConnectionUtil.close(null, statement, con);
		}

		
	}
	public List<CarOrder> allbook()  {
		List<CarOrder> viewbooking=new ArrayList<>();
		String allbook="Select Order_id,Car_id,Car_name,Expecteddate,address,status from Car_orders";
		Connection con=null;
		PreparedStatement statement=null;
		try {
			con = ConnectionUtil.getDBconnection();
			 statement=con.prepareStatement(allbook);
			ResultSet rs=statement.executeQuery();
			
			while(rs.next())
			{
			     CarOrder details=new CarOrder(rs.getInt("Order_id"),rs.getString("Car_id"),rs.getString("Car_name"),rs.getDate("Expecteddate"),rs.getString("address"),rs.getString("status"));
			     viewbooking.add(details);
			}
		}
		catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			ConnectionUtil.close(null, statement, con);
		}
		
		
		return viewbooking;
	}
	public  void update(CarOrder obj)  {
		String log1 = "update Car_orders set status=? where order_id=?";
		Connection con=null;
		
		PreparedStatement statement=null;
		try {
			con = ConnectionUtil.getDBconnection();
		 statement = con.prepareStatement(log1);
			statement.setString(1, obj.getStatus());
			statement.setInt(2, obj.getOrderId());
			 statement.executeUpdate();
		} 
		catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			ConnectionUtil.close(null, statement, con);
		}
		
	

	}
	public static  List<CarOrder> showview() 
	{
		List<CarOrder> productsList=new ArrayList<>();
		
		String showQuery="select Order_id,Car_id,Car_name,address,status from Car_orders";
		Connection con=null;
		PreparedStatement statement=null;
		ResultSet rs=null;
		try {
			con = ConnectionUtil.getDBconnection();
			 statement=con.prepareStatement(showQuery);
			 rs=statement.executeQuery();
			while(rs.next())
			{
				
				CarOrder product=new CarOrder(rs.getInt("Order_id"),rs.getString("Car_id"),rs.getString("Car_name"),rs.getString("address"),rs.getString("status"));
				productsList.add(product);
				
			}
			
			
		} 
		catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			ConnectionUtil.close(rs, statement, con);
		}
		return productsList;
	}
	public List<CarOrder> userhistory(CarOrder obj)  {
		List<CarOrder> viewbooking=new ArrayList<>();
		String allbook="Select Order_id,Car_id,Car_name,Expecteddate,address,status from Car_orders where userid=?";
		Connection con=null;
		PreparedStatement statement=null;
		ResultSet resultset=null;
		try {
			con = ConnectionUtil.getDBconnection();
		 statement=con.prepareStatement(allbook);
			statement.setInt(1, obj.getUserid());
			 resultset=statement.executeQuery();
			
			while(resultset.next())
			{
			     CarOrder details=new CarOrder(resultset.getInt("Order_id"),resultset.getString("Car_id"),resultset.getString("Car_name"),resultset.getDate("Expecteddate"),resultset.getString("address"),resultset.getString("status"));
			     viewbooking.add(details);
			}
		} catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			ConnectionUtil.close(resultset, statement, con);
		}
		
		return viewbooking;
	}
	

}

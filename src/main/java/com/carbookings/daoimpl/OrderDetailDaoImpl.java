package com.carbookings.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

import com.carbookings.logger.Logger;
import com.carbookings.model.*;
import com.connection.*;



public class OrderDetailDaoImpl {

	public int insert(OrderDetail obj) 
    {
			
	String insert="insert into order_details(user_id,car_id,price)values(?,?,?)";
	Connection con=null;
	PreparedStatement stmt=null;
	int rows=0;
	try {
		con = ConnectionUtil.getDBconnection();
		boolean flag = cartexist(obj.getUserId(), obj.getCarId());
		if(!flag) {
			 stmt=con.prepareStatement(insert);
			stmt.setInt(1, obj.getUserId());
			stmt.setString(2, obj.getCarId());
			stmt.setInt(3, obj.getPrice());
			
			 rows=stmt.executeUpdate();
			return rows;
				}else {
					return -1;
					
				}
		    }
	catch (Exception e) {

		Logger.printStackTrace(e);
		Logger.runTimeException(e.getMessage());

	} finally {

		ConnectionUtil.close(null, stmt, con);
	}
	return 0;

		} 
	
	public  int findorder() 
    {
  
   	 String search1 = "select max(Order_id) from order_details";
   	 Connection con=null;
   	PreparedStatement statement=null;
    ResultSet rs=null;
   
   	 int order=0;

			
			 try {
				con = ConnectionUtil.getDBconnection();
				 statement=con.prepareStatement(search1);

			 
			    	  rs=statement.executeQuery();
			    	
			    	 if(rs.next())
			    	 {
			             order=rs.getInt(1);
			            
			    	 }
			}
			 catch (Exception e) {

					Logger.printStackTrace(e);
					Logger.runTimeException(e.getMessage());

				} finally {

					ConnectionUtil.close(rs, statement, con);
				}
			return order;
			 
    }

    public  void delete(OrderDetail obj1)
    {
    	String delete="delete from order_details where user_id=?";
    	 Connection con=null;
    	 PreparedStatement statement=null;
    	 
		try {
			con = ConnectionUtil.getDBconnection();
			  statement=con.prepareStatement(delete);
	    	 statement.setInt(1, obj1.getOrderId());
	    	statement.executeUpdate();
	    	
		} 
		 catch (Exception e) {

				Logger.printStackTrace(e);
				Logger.runTimeException(e.getMessage());

			} finally {

				ConnectionUtil.close(null, statement, con);
			}
    	
    }
    public   List<OrderDetail> view(OrderDetail obj) 
	{
		List<OrderDetail> productsList=new ArrayList<>();
		
		String showQuery="select Order_id,user_id,car_id,price from Order_details where user_id=?";
		Connection con=null;
		ResultSet rs=null;
		PreparedStatement statement=null;
		try {
			con = ConnectionUtil.getDBconnection();
			 statement=con.prepareStatement(showQuery);
			statement.setInt(1, obj.getUserId());
			 rs=statement.executeQuery();
			while(rs.next())
			{
				
				OrderDetail product=new OrderDetail(rs.getInt("Order_id"),rs.getInt("user_id"),rs.getString("car_id"),rs.getInt("price"));
				productsList.add(product);
				
			}
			
			
		}  catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			ConnectionUtil.close(rs, statement, con);
		}
		return productsList;
	}
//boolean cart:
    
    public boolean cartexist(int userid,String carid) {
    	Connection con=null;
    	PreparedStatement pstPreparedStatement =null;
    	String query = "select Order_id,user_id,car_id,price from order_details where user_id in ? and car_id in ?";
		try {
			con = ConnectionUtil.getDBconnection();
			 pstPreparedStatement = con.prepareStatement(query);
	    	pstPreparedStatement.setInt(1, userid);
	    	pstPreparedStatement.setString(2,carid);
	    	ResultSet rs = pstPreparedStatement.executeQuery();
	    	if(rs.next()) {
	    		return true;
	    	}
		} 
		 catch (Exception e) {

				Logger.printStackTrace(e);
				Logger.runTimeException(e.getMessage());

			} finally {

				ConnectionUtil.close(null, pstPreparedStatement, con);
			}
    	
		return false;
    }
    
}

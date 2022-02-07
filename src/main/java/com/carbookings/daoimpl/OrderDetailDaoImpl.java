package com.carbookings.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

import com.carbookings.logger.Logger;
import com.carbookings.model.*;
import com.connection.*;



public class OrderDetailDaoImpl {

	public int insert(OrderDetail obj) throws ClassNotFoundException, SQLException
    {
		boolean flag = cartexist(obj.getUserId(), obj.getCarId());
		if(!flag) {
			
	String insert="insert into order_details(user_id,car_id,price)values(?,?,?)";
	Connection con=Connectionutil.getDBconnection();
	PreparedStatement stmt=con.prepareStatement(insert);
	stmt.setInt(1, obj.getUserId());
	stmt.setString(2, obj.getCarId());
	stmt.setInt(3, obj.getPrice());
	
	int i=stmt.executeUpdate();
	return i;
		}else {
			return -1;
			
		}
    }
	public  int findorder() 
    {
  
   	 String search1 = "select max(Order_id) from order_details";
   	 Connection con=null;
   	PreparedStatement statement=null;
    ResultSet rs=null;
   
   	 int order=0;

			
			 try {
				con = Connectionutil.getDBconnection();
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

					Connectionutil.close(rs, statement, con);
				}
			return order;
			 
    }

    public  void delete(OrderDetail obj1)
    {
    	String delete="delete from order_details where user_id=?";
    	 Connection con=null;
    	 PreparedStatement statement=null;
    	 
		try {
			con = Connectionutil.getDBconnection();
			  statement=con.prepareStatement(delete);
	    	 statement.setInt(1, obj1.getOrderId());
	    	statement.executeUpdate();
	    	
		} 
		 catch (Exception e) {

				Logger.printStackTrace(e);
				Logger.runTimeException(e.getMessage());

			} finally {

				Connectionutil.close(null, statement, con);
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
			con = Connectionutil.getDBconnection();
			 statement=con.prepareStatement(showQuery);
			statement.setInt(1, obj.getUserId());
			 rs=statement.executeQuery();
			while(rs.next())
			{
				
				OrderDetail product=new OrderDetail(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getInt(4));
				productsList.add(product);
				
			}
			
			
		}  catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			Connectionutil.close(rs, statement, con);
		}
		return productsList;
	}
//boolean cart:
    
    public boolean cartexist(int userid,String carid) throws ClassNotFoundException, SQLException {
    	Connection con = Connectionutil.getDBconnection();
    	String query = "select Order_id,user_id,car_id,price from order_details where user_id in ? and car_id in ?";
    	
    	PreparedStatement pstPreparedStatement = con.prepareStatement(query);
    	pstPreparedStatement.setInt(1, userid);
    	pstPreparedStatement.setString(2,carid);
    	ResultSet rs = pstPreparedStatement.executeQuery();
    	if(rs.next()) {
    		return true;
    	}
    	return false;
    }
    
}

package com.Carbooking.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

import com.Carbooking.model.*;
import com.connection.*;



public class OrderDetailDaoImpl {

	public int insert(OrderDetail obj) throws ClassNotFoundException, SQLException
    {
		boolean flag = cartexist(obj.getUserId(), obj.getCarid());
		if(!flag) {
			
	String insert="insert into order_details(user_id,car_id,price)values(?,?,?)";
	Connection Con=Connectionutil.getDBconnection();
	PreparedStatement stmt=Con.prepareStatement(insert);
	stmt.setInt(1, obj.getUserId());
	stmt.setString(2, obj.getCarid());
	stmt.setInt(3, obj.getPrice());
	
	int i=stmt.executeUpdate();
	return i;
		}else {
			return -1;
			
		}
    }
	public  int Findorder() 
    {
  
   	 String search1 = "select max(Order_id) from order_details";
   	 Connection Con;
   
   	 int order=0;

			
			 try {
				Con = Connectionutil.getDBconnection();
				PreparedStatement stmt=Con.prepareStatement(search1);

			 
			    	 ResultSet rs=stmt.executeQuery();
			    	
			    	 if(rs.next())
			    	 {
			             order=rs.getInt(1);
			            
			    	 }
			} catch (ClassNotFoundException e) {
				
				e.printStackTrace();
			} catch (SQLException e) {
		
				e.printStackTrace();
			}
			return order;
			 
    }

    public  void delete(OrderDetail obj1)
    {
    	String delete="delete from order_details where user_id=?";
    	 Connection Con;
		try {
			Con = Connectionutil.getDBconnection();
			 PreparedStatement stmt=Con.prepareStatement(delete);
	    	 stmt.setInt(1, obj1.getOrder_id());
	    	 int i=stmt.executeUpdate();
	    	
		} catch (ClassNotFoundException e) {
	
			e.printStackTrace();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
    	
    	
    }
    public   List<OrderDetail> view(OrderDetail obj) 
	{
		List<OrderDetail> productsList=new ArrayList<OrderDetail>();
		
		String showQuery="select Order_id,user_id,car_id,price from Order_details where user_id=?";
		Connection con;
		try {
			con = Connectionutil.getDBconnection();
			PreparedStatement stmt=con.prepareStatement(showQuery);
			stmt.setInt(1, obj.getUserId());
			ResultSet rs=stmt.executeQuery();
			while(rs.next())
			{
				
				OrderDetail product=new OrderDetail(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getInt(4));
				productsList.add(product);
				
			}
			
			
		} catch (ClassNotFoundException e1) {

			e1.printStackTrace();
		} catch (SQLException e1) {

			e1.printStackTrace();
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

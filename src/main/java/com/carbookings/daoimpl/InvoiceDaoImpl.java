package com.carbookings.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.carbookings.logger.Logger;
import com.carbookings.model.Invoice;
import com.connection.Connectionutil;

public class InvoiceDaoImpl {
	public void insert (Invoice obj)
	{
		String insert="insert into invoice(car_id,user_id,price,car_name,Advance,RemainingBalance)values(?,?,?,?,?,?)";
		Connection con=null;
		PreparedStatement statement=null;
		
		
		try {
			con = Connectionutil.getDBconnection();
			statement=con.prepareStatement(insert);
			statement.setString(1, obj.getCarId());
			statement.setInt(2, obj.getUserId());
			statement.setInt(3, obj.getPrice());
			statement.setString(4, obj.getCarName());
			statement.setInt(5, obj.getAdvance());
			statement.setInt(6, obj.getRemainingAmount());
			
			 statement.executeUpdate();
		
		}catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			Connectionutil.close(null, statement, con);
		}
		
		
	
	    }
	public   List<Invoice> view(Invoice obj) 
	{
		List<Invoice> productsList=new ArrayList<>();
		
		String showQuery=
				 "select invoice_id,car_id,user_id,price,car_name from( select invoice_id,car_id,user_id,price,car_name from Invoice where user_id in ? order by invoice_id desc) where rownum < 2";
		Connection con=null;
		PreparedStatement statement=null;
		ResultSet rs=null;
		try {
			con = Connectionutil.getDBconnection();
			statement=con.prepareStatement(showQuery);
			statement.setInt(1, obj.getUserId());
			 rs=statement.executeQuery();
			while(rs.next())
			{
				
				Invoice product=new Invoice(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getString(5));
				productsList.add(product);
				
			}
			
			
		} catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			Connectionutil.close(null, statement, con);
		}
		return productsList;
	}
}


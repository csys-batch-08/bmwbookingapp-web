package com.Carbooking.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Carbooking.model.CarOrder;
import com.Carbooking.model.Invoice;
import com.Carbooking.model.OrderDetail;
import com.connection.Connectionutil;

public class InvoiceDaoImpl {
	public void insert (Invoice obj)
	{
		String insert="insert into invoice(car_id,user_id,price,car_name,Advance,RemainingBalance)values(?,?,?,?,?,?)";
		Connection Con;
		try {
			Con = Connectionutil.getDBconnection();
			PreparedStatement stmt=Con.prepareStatement(insert);
			stmt.setString(1, obj.getCar_id());
			stmt.setInt(2, obj.getUser_id());
			stmt.setInt(3, obj.getPrice());
			stmt.setString(4, obj.getCar_name());
			stmt.setInt(5, obj.getAdvance());
			stmt.setInt(6, obj.getRemainingAmount());
			
			int i=stmt.executeUpdate();
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	    }
	public   List<Invoice> view(Invoice obj) 
	{
		List<Invoice> productsList=new ArrayList<Invoice>();
		
		String showQuery=
				 "select invoice_id,car_id,user_id,price,car_name from( select invoice_id,car_id,user_id,price,car_name from Invoice where user_id in ? order by invoice_id desc) where rownum < 2";
		Connection con;
		try {
			con = Connectionutil.getDBconnection();
			PreparedStatement stmt=con.prepareStatement(showQuery);
			stmt.setInt(1, obj.getUser_id());
			ResultSet rs=stmt.executeQuery();
			while(rs.next())
			{
				
				Invoice product=new Invoice(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getString(5));
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
	
}


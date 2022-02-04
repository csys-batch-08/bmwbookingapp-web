package com.Carbooking.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.Carbooking.model.Invoice;
import com.connection.Connectionutil;

public class InvoiceDaoImpl {
	public void insert (Invoice obj)
	{
		String insert="insert into invoice(car_id,user_id,price,car_name,Advance,RemainingBalance)values(?,?,?,?,?,?)";
		Connection Con=null;
		PreparedStatement statement=null;
		
		try {
			Con = Connectionutil.getDBconnection();
			statement=Con.prepareStatement(insert);
			statement.setString(1, obj.getCar_id());
			statement.setInt(2, obj.getUser_id());
			statement.setInt(3, obj.getPrice());
			statement.setString(4, obj.getCar_name());
			statement.setInt(5, obj.getAdvance());
			statement.setInt(6, obj.getRemainingAmount());
			
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
	public   List<Invoice> view(Invoice obj) 
	{
		List<Invoice> productsList=new ArrayList<Invoice>();
		
		String showQuery=
				 "select invoice_id,car_id,user_id,price,car_name from( select invoice_id,car_id,user_id,price,car_name from Invoice where user_id in ? order by invoice_id desc) where rownum < 2";
		Connection con=null;
		PreparedStatement statement=null;
		try {
			con = Connectionutil.getDBconnection();
			statement=con.prepareStatement(showQuery);
			statement.setInt(1, obj.getUser_id());
			ResultSet rs=statement.executeQuery();
			while(rs.next())
			{
				
				Invoice product=new Invoice(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getString(5));
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
}


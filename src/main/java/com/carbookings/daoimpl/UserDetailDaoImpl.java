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

public class UserDetailDaoImpl {

	public  void insert(UserDetail obj)  {
		String insert = "insert into User_details(First_name,cpassword,Email,Phone) values(?,?,?,?)";
		Connection con=null;
		PreparedStatement statement=null;
		try {
			con = Connectionutil.getDBconnection();
			 statement = con.prepareStatement(insert);
			statement.setString(1, obj.getFirst_name());
			statement.setString(2, obj.getCpassword());
			statement.setString(3, obj.getEmail());
			statement.setLong(4, obj.getPhoneno());
			 statement.executeUpdate();
		} catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			Connectionutil.close(null, statement, con);
		}

		
	}

	
	public UserDetail loginval(String email,String password) {
		String query="select first_name,cpassword,email,phone,user_id,usertype,userwallet from user_details where email = ? and cpassword = ?";
		Connection con=null;
		ResultSet resultset=null;
		PreparedStatement statement=null;
		try {
			con = Connectionutil.getDBconnection();
			statement=con.prepareStatement(query);
			statement.setString(1, email);
			statement.setString(2, password);
			
			 resultset = statement.executeQuery();
			if(resultset.next()) {
				return new UserDetail(resultset.getString(1),resultset.getString(2),resultset.getString(3),resultset.getLong(4),resultset.getInt(5),resultset.getString(6),resultset.getInt(7));
			}
			else {
				return null;
			}
		} 
		catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			Connectionutil.close(null, statement, con);
		}
		

		return null;
		
		
		
		
	}



	public  void update(UserDetail obj) {
		String log1 = "update user_details set cpassword=? where email=?";
		Connection con=null;
		PreparedStatement statement=null;
		try {
			con = Connectionutil.getDBconnection();
			 statement = con.prepareStatement(log1);
			statement.setString(1, obj.getCpassword());
			statement.setString(2, obj.getEmail());
			 statement.executeUpdate();
		} 
		catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			Connectionutil.close(null, statement, con);
		}
		
	

	}

	public static void delete(UserDetail obj1) {
		String log2 = "delete from user_details where user_id=?";
		Connection con=null;
		PreparedStatement statement=null;
		try {
			con = Connectionutil.getDBconnection();
			 statement = con.prepareStatement(log2);
			statement.setInt(1, obj1.getUserId());
			 statement.executeUpdate();
		} 
		catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			Connectionutil.close(null, statement, con);
		}

			
		
		
	}
	public static List<UserDetail> alluser() {
		List<UserDetail> veiwall=new ArrayList<>();
		String alluser="Select first_name,cpassword,email,phone from user_details";
		Connection con=null;
		PreparedStatement statement=null;
		try {
			con = Connectionutil.getDBconnection();
			 statement=con.prepareStatement(alluser);
			ResultSet rs=statement.executeQuery();
			while(rs.next())
			{
			     UserDetail detail=new UserDetail(rs.getString(1),rs.getString(2),rs.getString(3),rs.getLong(4));
			     veiwall.add(detail);
			}
		} catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			Connectionutil.close(null, statement, con);
		}
		return veiwall;
	}
	public  int wallet(int userid)
	{
		String query="select userwallet from user_details where user_id in ?";
		int wallet=0;
		Connection con=null;
		PreparedStatement statement=null;
		ResultSet rs=null;
		try {
			 con = Connectionutil.getDBconnection();
			 statement=con.prepareStatement(query);
			statement.setInt(1, userid);
			 rs=statement.executeQuery();
			
			while(rs.next())
			{
				 wallet=rs.getInt(1);
				
			}
		}catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			Connectionutil.close(rs, statement, con);
		}
		
		return wallet;
		
	} 

	public int updateWallet(long wallet,int userid) {
		long flag =  (wallet(userid) - wallet);
		if(flag > 0) {
		if(wallet(userid) > 0) {
		String query="update user_details set userwallet =userwallet - ? where user_id = ?";
		
		try {
			Connection con=Connectionutil.getDBconnection();
			int i=0;
			
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setLong(1,wallet);
			pstmt.setInt(2, userid);
			i=pstmt.executeUpdate();
			return i;
			
		}catch (Exception e) {

			e.printStackTrace();
		}
		}
		
		}
		return -1;
		
	}
	
	   public  int username(UserDetail obj3) 
	     {
	    	 String search="Select user_id from user_details where email=?";
	    	 Connection con=null;
	    	 ResultSet rs=null;
	    	 PreparedStatement stmt=null;
	    	
	    	 int userid=0;
			try {
				 con = Connectionutil.getDBconnection();
				  stmt=con.prepareStatement(search);
			    	stmt.setString(1, obj3.getEmail());
			    
			     rs=stmt.executeQuery();
			    	
			    	 if(rs.next())
			    	 {
			             userid=rs.getInt(1);
			    	 }
			    	 
			} 
			catch (Exception e) {

				Logger.printStackTrace(e);
				Logger.runTimeException(e.getMessage());

			} finally {

				Connectionutil.close(rs, stmt, con);
			}
			return userid;
	    	
	     }
	   public  List<UserDetail> currentuser(UserDetail obj)  {
			List<UserDetail> veiwall=new ArrayList<>();
			String alluser="Select first_name,cpassword,email,phone,user_id,usertype,userwallet  from user_details where user_id=?";
			Connection con=null;
			PreparedStatement statement=null;
			ResultSet rs=null;
			try {
				con = Connectionutil.getDBconnection();
				 statement=con.prepareStatement(alluser);
				statement.setInt(1, obj.getUserId());
			 rs=statement.executeQuery();
				while(rs.next())
				{
				     UserDetail detail=new UserDetail(rs.getString(1),rs.getString(2),rs.getString(3),rs.getLong(4),rs.getInt(5),rs.getString(6),rs.getLong(7));
				     veiwall.add(detail);
				}
			} 
			catch (Exception e) {

				Logger.printStackTrace(e);
				Logger.runTimeException(e.getMessage());

			} finally {

				Connectionutil.close(rs, statement, con);
			}
			
			return veiwall;
			
		}
	   public static void updatewallet(UserDetail obj)
	   {
			String log1 = "update user_details set userwallet=userwallet + ? where user_id=?";
			Connection con=null;
			PreparedStatement statement=null;
			try {
				con = Connectionutil.getDBconnection();
				 statement = con.prepareStatement(log1);
				statement.setLong(1, obj.getWallet());
				statement.setInt(2, obj.getUserId());
				statement.executeUpdate();
			
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
				if (con != null) {
					try {
						con.close();
					} catch (SQLException e) {

						e.printStackTrace();
					}
				}
			}
	   }
	   
	   //mobile exist:
public  ResultSet getEmail(UserDetail obj) throws ClassNotFoundException, SQLException
{
	Connection Con = Connectionutil.getDBconnection();
	String log="select first_name,cpassword,email,phone,user_id,usertype,userwallet  from user_details where email=?";
	PreparedStatement pstmt=Con.prepareStatement(log);
	pstmt.setString(1, obj.getEmail());
	
	ResultSet rs=pstmt.executeQuery();
	return rs;
	
	
}
public  ResultSet getphoneno(UserDetail obj) throws ClassNotFoundException, SQLException
{
	Connection Con = Connectionutil.getDBconnection();
	String log="select first_name,cpassword,email,phone,user_id,usertype,userwallet  from user_details where phone=?";
	PreparedStatement pstmt=Con.prepareStatement(log);
	pstmt.setLong(1, obj.getPhoneno());
	ResultSet rs1=pstmt.executeQuery();
	return rs1;
	
	
}
	}

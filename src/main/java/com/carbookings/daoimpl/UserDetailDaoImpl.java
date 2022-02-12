package com.carbookings.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.ResultSet;
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
			con = ConnectionUtil.getDBconnection();
			 statement = con.prepareStatement(insert);
			statement.setString(1, obj.getFirstName());
			statement.setString(2, obj.getCpassword());
			statement.setString(3, obj.getEmail());
			statement.setLong(4, obj.getPhoneNo());
			 statement.executeUpdate();
		} catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			ConnectionUtil.close(null, statement, con);
		}

		
	}

	
	public UserDetail loginval(String email,String password) {
		String query="select first_name,cpassword,email,phone,user_id,usertype,userwallet from user_details where email = ? and cpassword = ?";
		Connection con=null;
		ResultSet resultset=null;
		PreparedStatement statement=null;
		try {
			con = ConnectionUtil.getDBconnection();
			statement=con.prepareStatement(query);
			statement.setString(1, email);
			statement.setString(2, password);
			
			 resultset = statement.executeQuery();
			if(resultset.next()) {
				return new UserDetail(resultset.getString("first_name"),resultset.getString("cpassword"),resultset.getString("email"),resultset.getLong("phone"),resultset.getInt("user_id"),resultset.getString("usertype"),resultset.getInt("userwallet"));
			}
			else {
				return null;
			}
		} 
		catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			ConnectionUtil.close(null, statement, con);
		}
		

		return null;
		
		
		
		
	}



	public  void update(UserDetail obj) {
		String log1 = "update user_details set cpassword=? where email=?";
		Connection con=null;
		PreparedStatement statement=null;
		try {
			con = ConnectionUtil.getDBconnection();
			 statement = con.prepareStatement(log1);
			statement.setString(1, obj.getCpassword());
			statement.setString(2, obj.getEmail());
			 statement.executeUpdate();
		} 
		catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			ConnectionUtil.close(null, statement, con);
		}
		
	

	}

	public static void delete(UserDetail obj1) {
		String log2 = "delete from user_details where user_id=?";
		Connection con=null;
		PreparedStatement statement=null;
		try {
			con = ConnectionUtil.getDBconnection();
			 statement = con.prepareStatement(log2);
			statement.setInt(1, obj1.getUserId());
			 statement.executeUpdate();
		} 
		catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			ConnectionUtil.close(null, statement, con);
		}

			
		
		
	}
	public static List<UserDetail> alluser() {
		List<UserDetail> veiwall=new ArrayList<>();
		String alluser="Select first_name,cpassword,email,phone from user_details";
		Connection con=null;
		PreparedStatement statement=null;
		try {
			con = ConnectionUtil.getDBconnection();
			 statement=con.prepareStatement(alluser);
			ResultSet rs=statement.executeQuery();
			while(rs.next())
			{
			     UserDetail detail=new UserDetail(rs.getString("first_name"),rs.getString("cpassword"),rs.getString("email"),rs.getLong("phone"));
			     veiwall.add(detail);
			}
		} catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			ConnectionUtil.close(null, statement, con);
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
			 con = ConnectionUtil.getDBconnection();
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

			ConnectionUtil.close(rs, statement, con);
		}
		
		return wallet;
		
	} 

	public int updateWallet(long wallet,int userid) {
		PreparedStatement pstmt=null;
		Connection con=null;
		long flag =  (wallet(userid) - wallet);
		if(flag > 0) {
		if(wallet(userid) > 0) {
		String query="update user_details set userwallet =userwallet - ? where user_id = ?";
		
		try {
			con=ConnectionUtil.getDBconnection();
			int i=0;
			
			 pstmt=con.prepareStatement(query);
			pstmt.setLong(1,wallet);
			pstmt.setInt(2, userid);
			i=pstmt.executeUpdate();
			return i;
			
		}
		catch (Exception e) {

			Logger.printStackTrace(e);
			Logger.runTimeException(e.getMessage());

		} finally {

			ConnectionUtil.close(null, pstmt, con);
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
				 con = ConnectionUtil.getDBconnection();
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

				ConnectionUtil.close(rs, stmt, con);
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
				con = ConnectionUtil.getDBconnection();
				 statement=con.prepareStatement(alluser);
				statement.setInt(1, obj.getUserId());
			 rs=statement.executeQuery();
				while(rs.next())
				{
				     UserDetail detail=new UserDetail(rs.getString("first_name"),rs.getString("cpassword"),rs.getString("email"),rs.getLong("phone"),rs.getInt("user_id"),rs.getString("usertype"),rs.getLong("userwallet"));
				     veiwall.add(detail);
				}
			} 
			catch (Exception e) {

				Logger.printStackTrace(e);
				Logger.runTimeException(e.getMessage());

			} finally {

				ConnectionUtil.close(rs, statement, con);
			}
			
			return veiwall;
			
		}
	   public  void walletrecharge(UserDetail obj)
	   {
			String log1 = "update user_details set userwallet=userwallet + ? where user_id=?";
			Connection con=null;
			PreparedStatement statement=null;
			try {
				con = ConnectionUtil.getDBconnection();
				 statement = con.prepareStatement(log1);
				statement.setLong(1, obj.getWallet());
				statement.setInt(2, obj.getUserId());
				statement.executeUpdate();
			
			}
			catch (Exception e) {

				Logger.printStackTrace(e);
				Logger.runTimeException(e.getMessage());

			} finally {

				ConnectionUtil.close(null, statement, con);
			}
	   }
	   

public UserDetail getEmailDetails(UserDetail rp) {
	UserDetail register = null;
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		con = ConnectionUtil.getDBconnection();
		String log="select first_name,cpassword,email,phone,user_id,usertype,userwallet  from user_details where email=?";
		pstmt = con.prepareStatement(log);
		pstmt.setString(1, rp.getEmail());
		rs = pstmt.executeQuery();
		if (rs.next()) {
			register=new UserDetail(rs.getString(1),rs.getString(2),rs.getString(3),rs.getLong(4),rs.getInt(5),rs.getString(6),rs.getLong(7));
		}
	} catch (Exception e) {

		Logger.printStackTrace(e);
		Logger.runTimeException(e.getMessage());

	} finally {

		ConnectionUtil.close(rs, pstmt, con);
	}
	return register;
}

public UserDetail getPhoneDetails(UserDetail rp) {
	UserDetail register = null;
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		con = ConnectionUtil.getDBconnection();
		String log="select first_name,cpassword,email,phone,user_id,usertype,userwallet  from user_details where phone=?";
		pstmt = con.prepareStatement(log);
		pstmt.setLong(1, rp.getPhoneNo());
		rs = pstmt.executeQuery();
		if (rs.next()) {
			register = new UserDetail(rs.getString("first_name"),rs.getString("cpassword"),rs.getString("email"),rs.getLong("phone"),rs.getInt("user_id"),rs.getString("usertype"),rs.getLong("userwallet"));
		}
	} catch (Exception e) {

		Logger.printStackTrace(e);
		Logger.runTimeException(e.getMessage());

	} finally {

		ConnectionUtil.close(rs, pstmt, con);
	}
	return register;
}
	}

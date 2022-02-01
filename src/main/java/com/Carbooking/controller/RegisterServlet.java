package com.Carbooking.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Carbooking.daoimpl.UserDetailDaoImpl;
import com.Carbooking.exception.EmailAlreadyExistException;
import com.Carbooking.exception.PhoenNumberExistException;
import com.Carbooking.model.UserDetail;
@WebServlet("/sample1")
public class RegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out=resp.getWriter();
		
		String firstName=req.getParameter("first_name");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		Long phone=Long.parseLong(req.getParameter("number"));
		
		UserDetail ud=new UserDetail(firstName,password,email,phone);
		UserDetailDaoImpl udd=new UserDetailDaoImpl();
		
		try {
			ResultSet rs=udd.getEmail(ud);
			ResultSet rs1=udd.getphoneno(ud);
			if(rs.next())
			{
			
				if(email.equals(rs.getString(3)))
				{
					throw new EmailAlreadyExistException();
				}
			}
			if(rs1.next())
			{
				if(phone.equals(rs1.getLong(4)))
				{
					throw new PhoenNumberExistException();
				}
			}
			
			
			udd.insert(ud);
			resp.sendRedirect("login.jsp");
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} catch (SQLException e) {

			e.printStackTrace();
		} catch (EmailAlreadyExistException e) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('email already exist');");
			out.println("location='index.jsp';");
			out.println("</script>");

			
		} catch (PhoenNumberExistException e) {

			out.println("<script type=\"text/javascript\">");
			out.println("alert('phone number already exist');");
			out.println("location='index.jsp';");
			out.println("</script>");
		
		}
	}
}

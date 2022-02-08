package com.carbookings.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.carbookings.daoimpl.UserDetailDaoImpl;
import com.carbookings.exception.EmailAlreadyExistException;
import com.carbookings.exception.PhoenNumberExistException;
import com.carbookings.model.UserDetail;
@WebServlet("/sample1")
public class RegisterServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)  {
		PrintWriter out = null;
		
			try {
				out = resp.getWriter();
				
				String firstName=req.getParameter("first_name");
				String email=req.getParameter("email");
				String password=req.getParameter("password");
				
				Long phone=Long.parseLong(req.getParameter("number"));
				
				UserDetail ud=new UserDetail(firstName,password,email,phone);
				UserDetailDaoImpl udd=new UserDetailDaoImpl();
				
				
					UserDetail rs=udd.getEmailDetails(ud);
					UserDetail rs1=udd.getPhoneDetails(ud);
					if(rs!=null && email.equals(rs.getEmail()))
					{
						
						
					throw new EmailAlreadyExistException();
					
					}
					if(rs1!=null && phone.equals(rs1.getPhoneNo()))
					{
						
							throw new PhoenNumberExistException();
						
					}
					
					
					udd.insert(ud);
				resp.sendRedirect("login.jsp");
			}catch (IOException e) {
				
				e.printStackTrace();
			}
		 catch (EmailAlreadyExistException   e) {
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
			 catch (NullPointerException | NumberFormatException e1) {
					
					e1.getMessage();
				}
			
			
	}
}
package com.Carbooking.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.Carbooking.daoimpl.UserDetaildaoImpl;
import com.Carbooking.exception.InvalidUserException;
import com.Carbooking.model.UserDetail;
@WebServlet("/loginval")
public class LoginServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String username=req.getParameter("uname");
		String password=req.getParameter("upass");
		
		//UserDetail user=new UserDetail(username, password);
		UserDetaildaoImpl userDao=new UserDetaildaoImpl();
		String rs;
		

			UserDetail currentUser = null;
			
				
			try {
				try {
					currentUser = userDao.loginval(username, password);
					if(currentUser==null) {
						try {
							throw new InvalidUserException();
						}catch(InvalidUserException e) {
							session.setAttribute("invalidUser", "invalid");
							String validate=e.getMessage();
							resp.sendRedirect(validate);
							
						}
					
				}
					
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			session.setAttribute("username", currentUser.getFirst_name());
			
				if(currentUser!=null) {
					if(currentUser.getUsertype().equals("user"))
					{
						session.setAttribute("currentUser", currentUser);
						
					resp.sendRedirect("ShowProducts.jsp");
				}else if(currentUser.getUsertype().equals("admin")) {

					session.setAttribute("admin",currentUser);
					resp.sendRedirect("Admin.jsp");
				}
				
		}
				
			}
			catch(Exception e) {
				
				e.printStackTrace();
			}
		 
		
		

		
	}
}

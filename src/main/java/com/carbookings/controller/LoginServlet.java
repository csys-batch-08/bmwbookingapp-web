package com.carbookings.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.carbookings.daoimpl.CarProductDaoImpl;
import com.carbookings.daoimpl.UserDetailDaoImpl;
import com.carbookings.exception.InvalidUserException;
import com.carbookings.model.CarProduct;
import com.carbookings.model.UserDetail;


@WebServlet("/loginval")
public class LoginServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		PrintWriter out=resp.getWriter();
		String username=req.getParameter("uname");
		String password=req.getParameter("upass");
		
		
		UserDetailDaoImpl userDao=new UserDetailDaoImpl();
		
		

			UserDetail currentUser = null;
			
				
			try {
				currentUser = userDao.loginval(username, password);
				if(currentUser==null) {
					try {
						throw new InvalidUserException();
					}catch(InvalidUserException e) {
						
						out.println("<script type=\"text/javascript\">");
						out.println("alert('Invalid email id or password');");
						out.println("location='login.jsp';");
						out.println("</script>");

						
					}
				
}
			
			session.setAttribute("username", currentUser.getFirst_name());
			session.setAttribute("wallet", currentUser.getWallet());
			
			
			
				if(currentUser!=null) {
					if(currentUser.getUsertype().equals("user"))
					{
						session.setAttribute("currentUser", currentUser);
						 CarProductDaoImpl dao=new CarProductDaoImpl();
						 
						 
						 List<CarProduct> listproduct=dao.showview();
						 req.setAttribute("listproduct", listproduct);
						 
						 RequestDispatcher rd=req.getRequestDispatcher("showProducts.jsp");
                         rd.forward(req, resp);
						
						
                          
						
						
					
					
				}else if(currentUser.getUsertype().equals("admin")) {

					session.setAttribute("admin",currentUser);
					resp.sendRedirect("admin.jsp");
				}
				
		}
				
			}
			catch(Exception e) {
				
				e.printStackTrace();
			}
		 
		
		

		
	}
}

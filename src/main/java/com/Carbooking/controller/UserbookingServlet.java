package com.Carbooking.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Carbooking.daoimpl.CarorderDaoImpl;
import com.Carbooking.model.CarOrder;
import com.Carbooking.model.UserDetail;

@WebServlet("/userbooking")
public class UserbookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
System.out.println("Welcome");
		 
	HttpSession session=request.getSession();
	UserDetail user=(UserDetail)session.getAttribute("currentUser"); 
		   int userid=user.getUserId();
		   CarOrder san=new CarOrder(userid);
		  
		   CarorderDaoImpl dao= new CarorderDaoImpl();
		   List<CarOrder> listproduct=dao.userhistory(san);   
		   request.setAttribute("listproduct", listproduct);
		   System.out.println(listproduct);
		   RequestDispatcher dt=request.getRequestDispatcher("UserBooking.jsp");
		   dt.forward(request, response);
		
	}

}

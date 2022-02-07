package com.carbookings.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.carbookings.daoimpl.CarorderDaoImpl;
import com.carbookings.model.CarOrder;
import com.carbookings.model.UserDetail;

@WebServlet("/userbooking")
public class UserbookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	 
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 
	HttpSession session=request.getSession();
	UserDetail user=(UserDetail)session.getAttribute("currentUser"); 
		   int userid=user.getUserId();
		   CarOrder san=new CarOrder(userid);
		  
		   CarorderDaoImpl dao= new CarorderDaoImpl();
		   List<CarOrder> listproduct=dao.userhistory(san);   
		   request.setAttribute("listproduct", listproduct);
		 
		   RequestDispatcher dt=request.getRequestDispatcher("userBooking.jsp");
		   dt.forward(request, response);
		
	}

}

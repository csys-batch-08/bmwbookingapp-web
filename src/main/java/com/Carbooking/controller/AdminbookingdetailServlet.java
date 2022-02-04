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

@WebServlet("/AdminBooking")
public class AdminbookingdetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("haii");
		HttpSession session=request.getSession();
		 CarorderDaoImpl dao=new CarorderDaoImpl();
		List <CarOrder> allbook;
		allbook=dao.allbook();
		request.setAttribute("allbook", allbook);
		
	
		RequestDispatcher dt=request.getRequestDispatcher("bookingDetail.jsp");
		dt.forward(request, response);

	
	}

}

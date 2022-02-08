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

import com.carbookings.daoimpl.PriceDetailDaoImpl;
import com.carbookings.model.Pricedetail;


@WebServlet("/AdminPrice")
public class AdminPriceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		PriceDetailDaoImpl dan=new PriceDetailDaoImpl();
		List <Pricedetail> car2  = dan.viewPrice();
		session.setAttribute("car2", car2);
	
		
		RequestDispatcher dt=request.getRequestDispatcher("adminProductPrice.jsp");
		dt.forward(request, response);

	}

}

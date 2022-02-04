package com.Carbooking.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Carbooking.daoimpl.PriceDetailDaoImpl;
import com.Carbooking.model.Pricedetail;

/**
 * Servlet implementation class AdminPriceServlet
 */
@WebServlet("/AdminPrice")
public class AdminPriceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		PriceDetailDaoImpl dan=new PriceDetailDaoImpl();
		Pricedetail cars = new Pricedetail();
		List <Pricedetail> car2  = dan.viewprice(cars);
		session.setAttribute("car2", car2);
	
		
		RequestDispatcher dt=request.getRequestDispatcher("adminProductPrice.jsp");
		dt.forward(request, response);

	}

}
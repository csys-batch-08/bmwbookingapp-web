package com.carbookings.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.carbookings.daoimpl.CarProductDaoImpl;
import com.carbookings.daoimpl.PriceDetailDaoImpl;
import com.carbookings.model.CarProduct;
import com.carbookings.model.Pricedetail;

/**
 * Servlet implementation class SelectServlet
 */
@WebServlet("/SelectServlet")
public class SelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		CarProductDaoImpl dao=new CarProductDaoImpl();
		String carid = request.getParameter("carId");
		CarProduct car = new CarProduct(carid);
		List <CarProduct> car1 = dao.selectproduct(car);
		
		request.setAttribute("car1", car1);
		

		PriceDetailDaoImpl dan=new PriceDetailDaoImpl();
		String carids = request.getParameter("carId");
		Pricedetail cars = new Pricedetail(carids);
		List <Pricedetail> car2  = dan.selectproduct(cars);
		request.setAttribute("car2", car2);
		
	RequestDispatcher dt=request.getRequestDispatcher("selectCar.jsp");
	dt.forward(request, response);


	}

}

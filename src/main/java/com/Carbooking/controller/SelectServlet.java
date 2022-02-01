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

import com.Carbooking.daoimpl.CarProductDaoImpl;
import com.Carbooking.daoimpl.PriceDetailDaoImpl;
import com.Carbooking.model.CarProduct;
import com.Carbooking.model.Pricedetail;

/**
 * Servlet implementation class SelectServlet
 */
@WebServlet("/SelectServlet")
public class SelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		CarProductDaoImpl dao=new CarProductDaoImpl();
		String carid = request.getParameter("carId");
		CarProduct car = new CarProduct(carid);
		try {
			List <CarProduct> car1 = dao.selectproduct(car);
			/* System.out.println(car1); */
			request.setAttribute("car1", car1);
			/* System.out.println(car1+"dfghjkl"); */
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		PriceDetailDaoImpl dan=new PriceDetailDaoImpl();
		String carids = request.getParameter("carId");
		Pricedetail cars = new Pricedetail(carids);
		try {
			List <Pricedetail> car2  = dan.selectproduct(cars);
			request.setAttribute("car2", car2);
			/* System.out.println(car2); */
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	RequestDispatcher dt=request.getRequestDispatcher("selectCar.jsp");
	dt.forward(request, response);


	}

}

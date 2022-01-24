package com.Carbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Carbooking.daoimpl.CarProductDaoImpl;
import com.Carbooking.model.CarProduct;

/**
 * Servlet implementation class UpdateCar
 */
@WebServlet("/updatecar")
public class UpdateCar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String carid=request.getParameter("carid");
		String fueltype=request.getParameter("fueltype");
		String cartype=request.getParameter("cartype");
		String carmodel=request.getParameter("carmodel");
		int price=Integer.parseInt(request.getParameter("price"));
		CarProduct update=new CarProduct(carid,fueltype,cartype,carmodel,price);
		CarProductDaoImpl adddao=new CarProductDaoImpl();
		adddao.update(update);
		response.sendRedirect("Admin.jsp");
	}

}

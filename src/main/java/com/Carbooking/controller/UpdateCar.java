package com.Carbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Carbooking.daoimpl.CarProductDaoImpl;
import com.Carbooking.model.CarProduct;


@WebServlet("/updatecar")
public class UpdateCar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String carid=request.getParameter("proname");
		String fueltype=request.getParameter("fueltype");
		String cartype=request.getParameter("cartype");
		String carmodel=request.getParameter("carmodel");
		
		CarProduct update=new CarProduct(carid,fueltype,cartype,carmodel);
		CarProductDaoImpl adddao=new CarProductDaoImpl();
		adddao.update(update);
		response.sendRedirect("admin.jsp");
	}

}

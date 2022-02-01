package com.Carbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Carbooking.daoimpl.CarProductDaoImpl;
import com.Carbooking.model.CarProduct;


@WebServlet("/addcar")
public class AddCarServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String carid=request.getParameter("carid");
		String carname=request.getParameter("carname");
		String fueltype=request.getParameter("fueltype");
		String cartype=request.getParameter("cartype");
		String carmodel=request.getParameter("carmodel");
		String carimage=request.getParameter("carimage");
		CarProduct add=new CarProduct(carid,carname,fueltype,cartype,carmodel,carimage);
		CarProductDaoImpl adddao=new CarProductDaoImpl();
		adddao.insert(add);
		response.sendRedirect("admin.jsp");
	}

}

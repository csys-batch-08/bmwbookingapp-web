package com.Carbooking.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Carbooking.daoimpl.PriceDetailDaoImpl;
import com.Carbooking.model.Pricedetail;


@WebServlet("/deleteprice")
public class PriceDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
   

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String carid=request.getParameter("delete");
		Pricedetail del=new Pricedetail(carid);
		PriceDetailDaoImpl delet=new PriceDetailDaoImpl();
		delet.delete(del);
		response.sendRedirect("admin.jsp");
	}

}

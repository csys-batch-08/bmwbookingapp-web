package com.Carbooking.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.Carbooking.daoimpl.PriceDetailDaoImpl;
import com.Carbooking.model.Pricedetail;

@WebServlet("/addprice")
public class AddPriceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String carid=request.getParameter("carid");
		String carname=request.getParameter("carname");
		int showroom=Integer.parseInt(request.getParameter("showroom_price"));
		int road=Integer.parseInt(request.getParameter("roadtax"));
		int insurance=Integer.parseInt(request.getParameter("insurance"));
		int onroad=showroom+road+insurance;
		Pricedetail prc=new Pricedetail(carid,carname,showroom,road,insurance,onroad);
		PriceDetailDaoImpl prcdao=new PriceDetailDaoImpl();
		prcdao.insert(prc);	
		response.sendRedirect("Admin.jsp");}

}

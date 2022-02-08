package com.carbookings.controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.carbookings.daoimpl.PriceDetailDaoImpl;
import com.carbookings.model.Pricedetail;

@WebServlet("/addprice")
public class AddPriceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
		String carid=request.getParameter("carid");
		String carname=request.getParameter("carname");
		int showroom=Integer.parseInt(request.getParameter("showroom_price"));
		
		int road=Integer.parseInt(request.getParameter("roadtax"));
		int insurance=Integer.parseInt(request.getParameter("insurance"));
		int onroad=showroom+road+insurance;
		Pricedetail prc=new Pricedetail(carid,carname,showroom,road,insurance,onroad);
		PriceDetailDaoImpl prcdao=new PriceDetailDaoImpl();
		prcdao.insert(prc);	
		
			response.sendRedirect("admin.jsp");
		} catch (IOException | NumberFormatException e) {
		
			e.getMessage();
		}
		}
       

}

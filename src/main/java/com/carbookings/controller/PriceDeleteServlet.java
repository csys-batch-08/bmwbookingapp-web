package com.carbookings.controller;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.carbookings.daoimpl.PriceDetailDaoImpl;
import com.carbookings.model.Pricedetail;


@WebServlet("/deleteprice")
public class PriceDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
   

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)  {

		String carid=request.getParameter("delete");
		Pricedetail del=new Pricedetail(carid);
		PriceDetailDaoImpl delet=new PriceDetailDaoImpl();
		delet.delete(del);
		try {
			response.sendRedirect("admin.jsp");
		} catch (IOException e) {
		
			e.printStackTrace();
		}
	}

}

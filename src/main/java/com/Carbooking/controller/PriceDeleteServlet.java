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

/**
 * Servlet implementation class PriceDeleteServlet
 */
@WebServlet("/deleteprice")
public class PriceDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
   

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String carid=request.getParameter("delete");
		Pricedetail del=new Pricedetail(carid);
		PriceDetailDaoImpl delet=new PriceDetailDaoImpl();
		try {
			delet.delete(del);
			response.sendRedirect("Admin.jsp");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

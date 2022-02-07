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
import com.carbookings.model.CarProduct;

/**
 * Servlet implementation class AdminProductServlet
 */
@WebServlet("/AdminProductServlet")
public class AdminProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CarProductDaoImpl dao=new CarProductDaoImpl();
		 
		 
		 List<CarProduct> listproduct=dao.showview();
		 request.setAttribute("listproduct", listproduct);
		
		 RequestDispatcher rd=request.getRequestDispatcher("adminProduct.jsp");
        rd.forward(request, response);
	
	}

}

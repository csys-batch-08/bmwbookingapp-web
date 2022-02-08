package com.carbookings.controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.carbookings.daoimpl.CarProductDaoImpl;
import com.carbookings.model.CarProduct;

@WebServlet("/deletecar")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {

		try {
			String carid=request.getParameter("carid");
			CarProduct delete=new CarProduct(carid);
			CarProductDaoImpl adddao=new CarProductDaoImpl();
			adddao.delete(delete);
			response.sendRedirect("admin.jsp");
		} catch (IOException e) {
		
			e.getMessage();
		}
	}

}

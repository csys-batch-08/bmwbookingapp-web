package com.Carbooking.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Carbooking.daoimpl.CarProductDaoImpl;
import com.Carbooking.model.CarProduct;

//@WebServlet("\showss")
public class ShowProductServlet extends HttpServlet {
   
	private static final long serialVersionUID = 1L;

	@Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
    	CarProductDaoImpl dao=new CarProductDaoImpl();
		 
		 
		 List<CarProduct> listproduct=dao.showview();
		 req.setAttribute("listproduct", listproduct);
		
		 RequestDispatcher rd=req.getRequestDispatcher("ShowProducts.jsp");
         rd.forward(req, resp);
    	
    }

}

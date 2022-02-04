package com.Carbooking.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Carbooking.daoimpl.InvoiceDaoImpl;
import com.Carbooking.model.Invoice;
import com.Carbooking.model.UserDetail;


@WebServlet("/InvoicepageServlet")
public class InvoicepageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		 InvoiceDaoImpl dao=new InvoiceDaoImpl();
		UserDetail user=(UserDetail)session.getAttribute("currentUser");
		int userid=user.getUserId();
		Invoice ord=new Invoice(userid);
		String  advance=request.getParameter("advance");
		List<Invoice> listproduct=dao.view(ord);
		session.setAttribute("listproduct", listproduct);
	
		
		response.sendRedirect("invoice.jsp");
		
	}

}

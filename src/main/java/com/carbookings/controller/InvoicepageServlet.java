package com.carbookings.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.carbookings.daoimpl.InvoiceDaoImpl;
import com.carbookings.model.Invoice;
import com.carbookings.model.UserDetail;


@WebServlet("/InvoicepageServlet")
public class InvoicepageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) {
	
		System.out.println("haii");
		try {
			HttpSession session=request.getSession();
			 InvoiceDaoImpl dao=new InvoiceDaoImpl();
			UserDetail user=(UserDetail)session.getAttribute("currentUser");
			int userid=user.getUserId();
			Invoice ord=new Invoice(userid);
			
			List<Invoice> listproduct=dao.view(ord);
			System.out.println(listproduct);
			
			session.setAttribute("listproduct", listproduct);
			System.out.println(listproduct);
			response.sendRedirect("invoice.jsp");
		} catch (IOException e) {
			
			e.getMessage();
		}
		
	}

}

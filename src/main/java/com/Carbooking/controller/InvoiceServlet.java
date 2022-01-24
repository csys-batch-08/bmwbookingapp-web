package com.Carbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.Carbooking.daoimpl.InvoiceDaoImpl;
import com.Carbooking.model.Invoice;
import com.Carbooking.model.UserDetail;

/**
 * Servlet implementation class InvoiceServlet
 */
@WebServlet("/invoice")
public class InvoiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		
		HttpSession session=request.getSession();
		 UserDetail user=(UserDetail)session.getAttribute("currentUser");
		int userid=user.getUserId();
		
	
		String carid=(session.getAttribute("car_id").toString());
		
		int price=Integer.parseInt(session.getAttribute("price").toString());
		
		String Carname=session.getAttribute("carname").toString();
		int prc1=Integer.parseInt(session.getAttribute("price1").toString());
	     int remain=price-prc1;
	     session.setAttribute("remain", remain);
		Invoice add=new Invoice(carid,userid,price,Carname,prc1,remain);
		InvoiceDaoImpl dao=new InvoiceDaoImpl();
		dao.insert(add);
		
		response.sendRedirect("Invoice.jsp");
	}
}

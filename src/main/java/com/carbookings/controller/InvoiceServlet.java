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

@WebServlet("/invoice")
public class InvoiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	{
			
			try {
				HttpSession session = request.getSession();
				UserDetail user = (UserDetail) session.getAttribute("currentUser");
				int userid = user.getUserId();

				String carid = (session.getAttribute("carId").toString());

				int price = Integer.parseInt(session.getAttribute("price").toString());

				String carname = session.getAttribute("carname").toString();

				int prc1 = Integer.parseInt(session.getAttribute("price1").toString());

				int remain = price - prc1;
				session.setAttribute("remain", remain);
				Invoice add = new Invoice(carid, userid, price, carname, prc1, remain);
				InvoiceDaoImpl dao = new InvoiceDaoImpl();
				dao.insert(add);
				InvoiceDaoImpl invoicedao=new InvoiceDaoImpl();
				UserDetail userId=(UserDetail)session.getAttribute("currentUser");
				int userids=user.getUserId();
				Invoice ord=new Invoice(userid);
				List<Invoice> listproduct=invoicedao.view(ord);
				session.setAttribute("listproduct", listproduct);
				response.sendRedirect("invoice.jsp");
			} catch (IOException e) {
			
				e.printStackTrace();
			}
			
		
	}
}

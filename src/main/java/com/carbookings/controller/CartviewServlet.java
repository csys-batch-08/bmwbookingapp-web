package com.carbookings.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.carbookings.daoimpl.OrderDetailDaoImpl;
import com.carbookings.model.OrderDetail;
import com.carbookings.model.UserDetail;
@WebServlet("/cartview")
public class CartviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		OrderDetailDaoImpl dao=new OrderDetailDaoImpl();
		UserDetail user=(UserDetail)session.getAttribute("currentUser");
		int userid=user.getUserId();
		OrderDetail ord=new OrderDetail();
		ord.setUserId(userid);
		List<OrderDetail> listproduct=dao.view(ord);
		session.setAttribute("listproduct", listproduct);
		
		RequestDispatcher dt=request.getRequestDispatcher("addCart.jsp");
		dt.forward(request, response);


	
	}

}

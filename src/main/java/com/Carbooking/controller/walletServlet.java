package com.Carbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.Carbooking.daoimpl.UserDetailDaoImpl;
import com.Carbooking.model.UserDetail;
@WebServlet("/wallet")
public class walletServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session=request.getSession();
		 UserDetail user=(UserDetail)session.getAttribute("currentUser");
	     int userid=user.getUserId();
		Long wallet=Long.parseLong(request.getParameter("amount"));
		
		UserDetail use=new UserDetail(wallet,userid);
		UserDetailDaoImpl dao=new UserDetailDaoImpl();
		dao.updatewallet(use);
		response.sendRedirect("showss");
	}

}

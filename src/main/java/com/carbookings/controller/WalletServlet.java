package com.carbookings.controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.carbookings.daoimpl.UserDetailDaoImpl;
import com.carbookings.model.UserDetail;
@WebServlet("/wallet")
public class WalletServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)  {

		try {
			HttpSession session=request.getSession();
			 UserDetail user=(UserDetail)session.getAttribute("currentUser");
		     int userid=user.getUserId();
			Long wallet=Long.parseLong(request.getParameter("amount"));
			
			UserDetail use=new UserDetail(wallet,userid);
			UserDetailDaoImpl dao=new UserDetailDaoImpl();
			dao.walletrecharge(use);
			response.sendRedirect("showss");
		} catch (IOException | NumberFormatException e) {
			e.getMessage();
		}
	}

}

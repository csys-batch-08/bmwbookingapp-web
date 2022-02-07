package com.carbookings.controller;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.carbookings.daoimpl.UserDetailDaoImpl;
import com.carbookings.model.UserDetail;


@WebServlet("/forget")
public class ForgetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
			String names=request.getParameter("forget");
			String pass=request.getParameter("password");
			UserDetail use=new UserDetail(names,pass);
			UserDetailDaoImpl usedao=new UserDetailDaoImpl();
			usedao.update(use);
			response.sendRedirect("login.jsp");
		} catch (IOException e) {
		
			e.printStackTrace();
		}
		
	}

}

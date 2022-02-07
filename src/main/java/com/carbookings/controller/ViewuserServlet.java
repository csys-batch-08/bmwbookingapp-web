package com.carbookings.controller;

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.carbookings.daoimpl.UserDetailDaoImpl;
import com.carbookings.model.UserDetail;

@WebServlet("/Viewuser")
public class ViewuserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		  
			List<UserDetail> view=new ArrayList<>();
			view=UserDetailDaoImpl.alluser();
			request.setAttribute("view", view);
			
			RequestDispatcher dt=request.getRequestDispatcher("viewUser.jsp");
			dt.forward(request, response);
	
	}

}

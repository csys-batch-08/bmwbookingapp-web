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

import com.Carbooking.daoimpl.UserDetailDaoImpl;
import com.Carbooking.model.UserDetail;

@WebServlet("/userhistory")
public class UserhistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  HttpSession session=request.getSession();
		   UserDetail user=(UserDetail)session.getAttribute("currentUser"); 
		   int userid=user.getUserId();
		   UserDetail san=new UserDetail(userid);
		   UserDetailDaoImpl dao= new UserDetailDaoImpl();
		   List<UserDetail> listproduct=dao.currentuser(san);
		request.setAttribute("listproduct1", listproduct);
		
		RequestDispatcher dt=request.getRequestDispatcher("userHistory.jsp");
		dt.forward(request, response);
		   
		   
			
	}

}

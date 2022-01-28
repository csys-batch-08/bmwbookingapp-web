package com.Carbooking.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Carbooking.daoimpl.UserDetaildaoImpl;
import com.Carbooking.model.UserDetail;

@WebServlet("/userhistory")
public class UserhistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("haiii");
		  HttpSession session=request.getSession();
		   UserDetail user=(UserDetail)session.getAttribute("currentUser"); 
		   int userid=user.getUserId();
		   UserDetail san=new UserDetail(userid);
		   UserDetaildaoImpl dao= new UserDetaildaoImpl();
		   try {
			List<UserDetail> listproduct=dao.currentuser(san);
			request.setAttribute("listproduct1", listproduct);
			System.out.println("listproduct1");
			RequestDispatcher dt=request.getRequestDispatcher("Userhistory.jsp");
			dt.forward(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   
		   
			
	}

}

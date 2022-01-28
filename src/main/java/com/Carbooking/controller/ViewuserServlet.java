package com.Carbooking.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Carbooking.daoimpl.UserDetaildaoImpl;
import com.Carbooking.model.UserDetail;

@WebServlet("/Viewuser")
public class ViewuserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("haii");
		  UserDetaildaoImpl dao= new UserDetaildaoImpl();
			List<UserDetail> view=new ArrayList<UserDetail>();
			try {
				view=UserDetaildaoImpl.alluser();
				request.setAttribute("view", view);
				System.out.println(view);
				RequestDispatcher dt=request.getRequestDispatcher("ViewUser.jsp");
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

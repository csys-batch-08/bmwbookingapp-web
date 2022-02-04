package com.Carbooking.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UpdateCarNewServlet
 */
@WebServlet("/UpdateCarNewServlet")
public class UpdateCarNewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("adminProduct");
		HttpSession session=request.getSession();
		session.setAttribute("Carid", name);
		response.sendRedirect("adminProduct.jsp");

		
	}

}

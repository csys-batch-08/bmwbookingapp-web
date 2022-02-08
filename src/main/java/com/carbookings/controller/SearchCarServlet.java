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

import com.carbookings.daoimpl.CarProductDaoImpl;
import com.carbookings.model.CarProduct;

@WebServlet("/search")

public class SearchCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			{
	    
				try {

					
					CarProductDaoImpl search = new CarProductDaoImpl();
					 String carname = request.getParameter("car");
					  List<CarProduct> searchlist = search.search(carname);
					       
					   HttpSession session = request.getSession();
					   session.setAttribute("Carname",searchlist );
					
						RequestDispatcher requestDispatcher=request.getRequestDispatcher("searchCar.jsp");
					requestDispatcher.forward(request, response);    
 
			  
				response.getWriter().print("Search Suceessfully");
			}catch (IOException | ServletException e) {
				
				e.getMessage();
			}
			 

			}
}

				
			

		
			

		



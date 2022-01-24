package com.Carbooking.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Carbooking.daoimpl.CarProductDaoImpl;
import com.Carbooking.exception.SearchNotFoundException;
import com.Carbooking.model.CarProduct;

@WebServlet("/search")

public class SearchCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		try {

			CarProductDaoImpl search = new CarProductDaoImpl();
			String Carname = request.getParameter("car");
			

			List<CarProduct> searchlist = search.Search(Carname);
			HttpSession session = request.getSession();
			session.setAttribute("carname", searchlist);
		
			CarProduct can=new CarProduct();
			can.setCar_name(Carname);
			CarProductDaoImpl dao=new CarProductDaoImpl();
			ResultSet rs=dao.Searchcar(can);
			
			if(rs.next()) 
			{
					response.sendRedirect("SearchCar.jsp");
			}
			else
			{
			    try
			    {
			    	throw new SearchNotFoundException();
			    }  	
					catch(SearchNotFoundException e) {
						
						String validate=e.getMessage();
						response.sendRedirect("Search1.jsp?message="+e.getMessage());
						
					}
			  
				 
			}	
		
			

	

		} catch (Exception e) {
			System.out.println(e);

		}

		

	}

}

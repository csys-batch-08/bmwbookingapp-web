package com.carbookings.controller;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.carbookings.daoimpl.PriceDetailDaoImpl;
import com.carbookings.model.Pricedetail;


@WebServlet("/updateprice")
public class UpdatePriceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)  {

		
		try {
			String carid=request.getParameter("carid");
			int show=Integer.parseInt(request.getParameter("showroom_price"));
			int road=Integer.parseInt(request.getParameter("roadtax"));
			int insurance=Integer.parseInt(request.getParameter("insurance"));
			Pricedetail prc=new Pricedetail(carid,show,road,insurance);
			PriceDetailDaoImpl prcdao=new PriceDetailDaoImpl();
			prcdao.update(prc);
			response.sendRedirect("admin.jsp");
		} catch (IOException | NumberFormatException e) {
		
			e.printStackTrace();
		}
		
	}

}

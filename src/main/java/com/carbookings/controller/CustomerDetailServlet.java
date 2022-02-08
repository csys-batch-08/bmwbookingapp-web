package com.carbookings.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.carbookings.daoimpl.CarorderDaoImpl;
import com.carbookings.daoimpl.OrderDetailDaoImpl;
import com.carbookings.daoimpl.UserDetailDaoImpl;
import com.carbookings.model.CarOrder;
import com.carbookings.model.OrderDetail;
import com.carbookings.model.UserDetail;



@WebServlet("/custdetails")
public class CustomerDetailServlet extends HttpServlet {

	
 
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) {
	
        
		HttpSession session=request.getSession();
	
	
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		 UserDetail user=(UserDetail)session.getAttribute("currentUser"); 
		int userid= user.getUserId();

		int price=Integer.parseInt(request.getParameter("advance"));
		 

		session.setAttribute("price1", price);
		
		String custname=request.getParameter("custname");
		String addres=request.getParameter("address");
		String  city=request.getParameter("city");
		String  pincode=request.getParameter("zip");
		Date dt=null;
		try {
			dt = sdf.parse(request.getParameter("Expected"));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		String address=custname+","+addres+","+city+","+pincode;
		
		
		
		
		
		
		String carIds=(String)session.getAttribute("carId");
		String carnames=(String)session.getAttribute("carname");

		OrderDetailDaoImpl order=new OrderDetailDaoImpl();
		int orderid=order.findorder();
		CarOrder conf=new CarOrder(orderid,carIds,carnames,dt,address,userid);
		CarorderDaoImpl daon=new CarorderDaoImpl();
		
		daon.insert(conf);
		
		OrderDetail dan=new OrderDetail(userid);
		OrderDetailDaoImpl dao=new OrderDetailDaoImpl();
		dao.delete(dan);
		//update wallet
		
		UserDetailDaoImpl san=new UserDetailDaoImpl();
     
	     int res = san.updateWallet(price, userid);
	    
		if(res > 0) {
	         RequestDispatcher dd=request.getRequestDispatcher("invoice");
	         try {
				dd.forward(request, response);
			} catch (ServletException |IOException e) {

				e.printStackTrace();
			} 
	         
		}else {
			try {
				response.sendRedirect("lowBalance.jsp");
			} catch (IOException e) {
			
				e.getMessage();
			}
		}
		
		
		
		
	}

}

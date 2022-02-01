package com.Carbooking.controller;

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

import com.Carbooking.daoimpl.CarorderDaoImpl;
import com.Carbooking.daoimpl.OrderDetailDaoImpl;
import com.Carbooking.daoimpl.UserDetailDaoImpl;
import com.Carbooking.model.CarOrder;
import com.Carbooking.model.OrderDetail;
import com.Carbooking.model.UserDetail;



@WebServlet("/custdetails")
public class CustomerDetailServlet extends HttpServlet {

	
 
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
        
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
		
		
		
		
		
		
		String Carid=(String)session.getAttribute("carId");
		String carnames=(String)session.getAttribute("carname");
//		session.setAttribute("amount", amount);
		OrderDetailDaoImpl order=new OrderDetailDaoImpl();
		int orderid=order.Findorder();
		CarOrder conf=new CarOrder(orderid,Carid,carnames,dt,address,userid);
		CarorderDaoImpl daon=new CarorderDaoImpl();
		
		daon.insert(conf);
		
		OrderDetail dan=new OrderDetail(userid);
		OrderDetailDaoImpl dao=new OrderDetailDaoImpl();
		dao.delete(dan);
		//update wallet
		UserDetail use=new UserDetail(price,userid);
	
		UserDetailDaoImpl san=new UserDetailDaoImpl();
     
	     int res = san.updateWallet(price, userid);
	    
		if(res > 0) {
	         RequestDispatcher dd=request.getRequestDispatcher("invoice");
	         dd.forward(request, response);
	         
		}else {
			response.getWriter().println("Low Balance!!");
		}
		
		
		
		
	}

}

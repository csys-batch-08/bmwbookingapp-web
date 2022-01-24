package com.Carbooking.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Carbooking.daoimpl.OrderDetailDaoImpl;
import com.Carbooking.model.OrderDetail;
import com.Carbooking.model.UserDetail;
@WebServlet("/cart")
public class CartServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=req.getSession();

//		int userid=Integer.parseInt(session.getAttribute("currentUser").toString());
		 UserDetail user=(UserDetail)session.getAttribute("currentUser"); 
		
		String carid=session.getAttribute("car_id").toString();
		
		int price=Integer.parseInt(session.getAttribute("price").toString());
		
		OrderDetail obj=new OrderDetail(user.getUserId(),carid,price);
		OrderDetailDaoImpl orderdao=new OrderDetailDaoImpl();
	
		try {
			int res = orderdao.insert(obj);
			if(res > 0) {
				resp.sendRedirect("confirmcar.jsp");
			}else {
				resp.sendRedirect("ShowProducts.jsp");
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}

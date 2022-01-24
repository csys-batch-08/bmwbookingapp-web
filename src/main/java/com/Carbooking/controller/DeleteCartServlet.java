package com.Carbooking.controller;

//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.apache.catalina.connector.Request;
//
//import com.Carbooking.daoimpl.OrderDetailDaoImpl;
//import com.Carbooking.model.OrderDetail;
//@WebServlet("/delcart")
//public class DeleteCartServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//  
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
////		doGet(request, response);
//		HttpSession session=request.getSession();
//		int userid=Integer.parseInt(session.getAttribute("userid").toString());
//		System.out.println(userid);
//		OrderDetail dan=new OrderDetail(userid);
//		
//		OrderDetailDaoImpl dao=new OrderDetailDaoImpl();
//		dao.delete(dan);
//	}
//
//}

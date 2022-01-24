//package com.Carbooking.controller;
//
//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import com.Carbooking.daoimpl.OrderDetailDaoImpl;
//import com.Carbooking.model.OrderDetail;
//
///**
// * Servlet implementation class AddCartServlet
// */
//@WebServlet("/call")
//public class AddCartServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//   
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
////		doGet(request, response);
//		HttpSession session=request.getSession();
//		int userid=(int)session.getAttribute("userid");
//		OrderDetail dao=new OrderDetail(userid);
//		OrderDetailDaoImpl dan=new OrderDetailDaoImpl();
//		dan.view();
//	}
//
//}

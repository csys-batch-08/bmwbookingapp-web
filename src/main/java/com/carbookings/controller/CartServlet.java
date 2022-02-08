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
import com.carbookings.daoimpl.OrderDetailDaoImpl;
import com.carbookings.model.CarProduct;
import com.carbookings.model.OrderDetail;
import com.carbookings.model.UserDetail;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();


		UserDetail user = (UserDetail) session.getAttribute("currentUser");

		String carid = session.getAttribute("carId").toString();
		

		int price = Integer.parseInt(session.getAttribute("price").toString());
	
		OrderDetail obj = new OrderDetail(user.getUserId(), carid, price);
		OrderDetailDaoImpl orderdao = new OrderDetailDaoImpl();

		int res = orderdao.insert(obj);
		CarProductDaoImpl dao = new CarProductDaoImpl();
		
		

		CarProduct car = new CarProduct(carid);
		List<CarProduct> confirm = dao.selectproduct(car);
		session.setAttribute("confirmview", confirm);
		RequestDispatcher dt1 = req.getRequestDispatcher("confirmCar.jsp");
		dt1.forward(req, resp);

		OrderDetailDaoImpl daon=new OrderDetailDaoImpl();
		
		int userid=user.getUserId();
		OrderDetail ord=new OrderDetail();
		ord.setUserId(userid);
		List<OrderDetail> listproduct=daon.view(ord);
		req.setAttribute("listproduct", listproduct);
		
		RequestDispatcher dt=req.getRequestDispatcher("addCart.jsp");
		dt.forward(req, resp);

		
		  if(res > 0) { 
			  resp.sendRedirect("confirmcar.jsp"); 
			  }
		  else
			  {
		  resp.sendRedirect("ShowProducts.jsp"); } 

	}
}

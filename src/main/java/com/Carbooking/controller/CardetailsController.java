package com.Carbooking.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/Cardetails")
public class CardetailsController extends HttpServlet{
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	String carid = req.getParameter("carlink");

	HttpSession session = req.getSession();
	session.setAttribute("caridcardetails", carid);
	resp.sendRedirect("SelectCar.jsp");
}
}

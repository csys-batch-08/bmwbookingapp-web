/*
 * package com.Carbooking.controller;
 * 
 * import java.io.IOException; import java.sql.SQLException; import
 * java.util.List;
 * 
 * import javax.servlet.RequestDispatcher; import
 * javax.servlet.ServletException; import javax.servlet.annotation.WebServlet;
 * import javax.servlet.http.HttpServlet; import
 * javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse; import
 * javax.servlet.http.HttpSession;
 * 
 * import com.Carbooking.daoimpl.CarProductDaoImpl; import
 * com.Carbooking.model.CarProduct;
 * 
 * @WebServlet("/Confirmcar") public class ConfirmcarServlet extends HttpServlet
 * { private static final long serialVersionUID = 1L;
 * 
 * protected void service(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException {
 * 
 * HttpSession session = request.getSession(); CarProductDaoImpl dao=new
 * CarProductDaoImpl(); String carid =session.getAttribute("carId").toString();
 * 
 * CarProduct car = new CarProduct(carid); try {
 * 
 * List <CarProduct> confirm = dao.selectproduct(car);
 * System.out.println(confirm); request.setAttribute("confirm", confirm);
 * System.out.println(confirm); RequestDispatcher
 * dt=request.getRequestDispatcher("confirmcar.jsp"); dt.forward(request,
 * response); } catch (ClassNotFoundException e) { // TODO Auto-generated catch
 * block e.printStackTrace(); } catch (SQLException e) { // TODO Auto-generated
 * catch block e.printStackTrace(); } }
 * 
 * }
 */

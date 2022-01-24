<%-- <%@page import="org.apache.catalina.connector.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.Carbooking.daoimpl.CarorderDaoImpl" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.Carbooking.model.CarOrder" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show products</title>

 <form >
<% CarorderDaoImpl dao=new CarorderDaoImpl();
int user =Integer.parseInt(session.getAttribute("userid").toString());
System.out.println(user);
CarOrder ord=new CarOrder();

List<CarOrder> listproduct=dao.view(ord);


%>

</form>
<h1>Cart details</h1>

        
        <div class="recently added list">
        <table>
            <tbody>
                <tr>
                <%int count=0;
                for(OrderDetail order: listproduct){
                	%>
                    <td>
                        <table id="carproduct" border=1 >
                            <tbody>
                                <tr>
                                   
                                    <td class="car">
                                        <span> orderid : <%= order.getOrder_id() %> </span><br>
                                        
                                        <span>userid : <%=order.getUserId()%>  </span><br>
                                        <span>carmodel : <%=order.getCarid()%> </span><br>
                                        <span>price : <%=order.getPrice() %> </span><br>
                                        <% session.setAttribute("orderid", order.getOrder_id()); %>
                                        <button type="submit">Delete</button>
                                      
                                      
                                      
                                        
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                    
                       <% count ++;
                       if(count==3){ %> 
                    	   </tr>
                    	   <tr>
                    	 
                     <%count=0; }}%>  
                                     
                </tr>
            </tbody>
        </table>
         
        </div>
    </div>
   </div>

</body>
</html> --%>
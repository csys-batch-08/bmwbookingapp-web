<%@page import="org.apache.catalina.connector.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.Carbooking.daoimpl.OrderDetailDaoImpl" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.Carbooking.model.OrderDetail" %>
    <%@ page import="com.Carbooking.model.UserDetail" %>
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Cart</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
      margin: 0;
      font-family: Arial;
     background-color:#E7E9BB;

    }

    .topnav {
      overflow: hidden;
      background-color: #333;
    }

    .topnav a {
      float: left;
      display: block;
      color: #f2f2f2;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
      font-size: 17px;
    }

    .active {
      background-color: #04AA6D;
      color: white;
    }

    .topnav .icon {
      display: none;
    }

    .dropdown {
      float: left;
      overflow: hidden;
    }

    .dropdown .dropbtn {
      font-size: 17px;
      border: none;
      outline: none;
      color: white;
      padding: 14px 16px;
      background-color: inherit;
      font-family: inherit;
      margin: 0;
    }

    .dropdown-content {
      display: none;
      position: absolute;
      background-color: #f9f9f9;
      min-width: 160px;
      box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
      z-index: 1;
    }

    .dropdown-content a {
      float: none;
      color: black;
      padding: 12px 16px;
      text-decoration: none;
      display: block;
      text-align: left;
    }

    .topnav a:hover,
    .dropdown:hover .dropbtn {
      background-color: #555;
      color: white;
    }

    .dropdown-content a:hover {
      background-color: #ddd;
      color: black;
    }

    .dropdown:hover .dropdown-content {
      display: block;
    }


    .topnav a.icon {
      float: right;
      display: block;
    }
  .red
    {
    
    margin-top:50px;
    }
    .car
    {
      font-size:20px;
 font-weight: bold;
  color: navy;}
</style>
</head>
<body>
 <div class="topnav" id="myTopnav">
    <a href="ShowProducts.jsp" >ShowProduct</a>
   <a href="AddCart.jsp" class="active">Cart</a>
     <a href="Login.jsp" style=float:right>Logout</a>
        <a href="Search.jsp">Search</a>
    <a href="#about" data-toggle="modal" data-target="#myModal">Contact</a>
    <a href="Userhistory.jsp" >user</a>
      <a href="updatewallet.jsp">Recharge Wallet</a>
     <a href="UserBooking.jsp">Booking History</a>
    
       
      </div>
   
   
  </div>
 <form >
<% OrderDetailDaoImpl dao=new OrderDetailDaoImpl();
UserDetail user=(UserDetail)session.getAttribute("currentUser");
int userid=user.getUserId();
OrderDetail ord=new OrderDetail();
ord.setUserId(userid);
List<OrderDetail> listproduct=dao.view(ord);


%>

</form>
<h1>Cart details</h1>

        
        <div class="red">
        <table class="table table-border">
            <tbody>
                <tr>
                <%int count=0;
                for(OrderDetail order: listproduct){
                	%>
                    <td>
                        <table id="carproduct">
                            <tbody>
                                <tr>
                                   
                                    <td class="car">
                                       
                                       <h3><span class="glyphicon glyphicon-hand-right"> orderid : <%= order.getOrder_id() %> </span></h3>
                                        
                                      <h3> <span class="glyphicon glyphicon-user"> userid : <%=order.getUserId()%>  </span></h3>
                                      <h3><span><i class="fa fa-car" ></i>&nbsp;carmodel : <%=order.getCarid()%> </span></h3>
                                      <h3> <span><i class="fa fa-inr"></i>&nbsp; price &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <%=order.getPrice() %> </span></h3>
                                        <% session.setAttribute("orderid", order.getOrder_id()); %>
                                        
                                      
                                      
                                      
                                        
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                    
                       <% count ++;
                       if(count==3){ %> 
                    	   </tr>
                    	   <tr>
                    	 
                     <%count=0; }}
                     %>  
                                     
                </tr>
            </tbody>
        </table>
         
        </div>
    </div>
   </div>

</body>
</html>
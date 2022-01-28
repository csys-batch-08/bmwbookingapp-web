
<%@page import="com.Carbooking.model.UserDetail"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
   <%@ page isELIgnored = "false" %>
    <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show products</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>

img{
    width: 350px;
 
  padding: 10px;

}
img:hover {
  box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
}

 body {
      margin: 0;
      font-family: sans-serif;
     background-color:#F8F8FF;
 

    }
    .carproduct
    {
    padding:50px;
    
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
    span
    {
    margin-left:-15px;
    font-family: sans-serif;}
   
    .car
    {
   padding:30px;
   margin:30px;
    background-color:#FFE4C4;
   border:2px solid black;
  
    }
   
    
    span
{
font-size:20px;
 
  color: navy;}
 
</style>
</head>

<body>
<%-- <% UserDetail user=(UserDetail)session.getAttribute("currentUser"); 
session.setAttribute("wallet", user.getWallet());%> --%>
<div class="topnav" id="myTopnav">
    <a href="ShowProducts.jsp" >ShowProduct</a>
   <a href="cart">Cart</a>
     <a href="index.jsp" style=float:right>Logout</a>
       

    <a href="userhistory" style=float:right>Profile</a>
     <a href="updatewallet.jsp">Recharge Wallet</a>
     <a href="userbooking">Booking History</a>
       <a href="#" data-toggle="modal" data-target="#myModal">Contact</a>
 
     <form action="search" method="post">
<div class="search">
<br>
<input type="text" id="car" name="car" style="margin-left:220px" autocomplete="on">
<input type="submit" value="Search">
</div>
</form>
    
       
      </div>
    
   <div class="one">
   <table id="carproduct">
		<tbody>
			<td>
			<tr>
				  <c:set var="count" value="1" />
           <c:forEach items="${listproduct}" var="carProduct">

					
					<td>
					  <div class="car">
                                    <img src="images/${carProduct.carName}.jpg" alt="img"><br>                                  
                                       
                                         <span>fueltype &nbsp;&nbsp; ${carProduct.fuelType}</span><br>
                                        <span>cartype &nbsp;&nbsp;  ${carProduct.carType} </span><br>
                                         <span>carmodel : ${carProduct.carModel} </span><br>
                                           <span style="margin-left:70px;"> <a href="SelectServlet?carId=${carProduct.carId}"><button class="btn btn-primary">view</button></a></span>
                                      
                                         </div>
                                       </td>  
                                         
					
					<c:choose>
						<c:when test="${count==2}">
			</tr>
			<tr>
				<c:set var="count" value="1" />
			</c:when>
			<c:otherwise>
				<c:set var="count" value="${count+1}" />
			</c:otherwise>
			</c:choose>
			</c:forEach>
			</tr>
			</td>
		</tbody>
	</table>

 </div>
    <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">BMw contact</h4>
        </div>
        <div class="modal-body">
        <p> To contact us, please send an email to contact.india@bmw.in or to reach our Customer Interaction Centre, dial toll free number 1800 102 2269 from Monday to Saturday 09:00 hours to 18:30 hours.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
    

</body>
</html>
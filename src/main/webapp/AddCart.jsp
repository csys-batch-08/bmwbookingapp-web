<%@page import="org.apache.catalina.connector.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
    
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
   <a href="cart" class="active">Cart</a>
     <a href="Login.jsp" style=float:right>Logout</a>
        <a href="Search.jsp">Search</a>
    <a href="#about" data-toggle="modal" data-target="#myModal">Contact</a>
    <a href="Userhistory.jsp" >user</a>
      <a href="updatewallet.jsp">Recharge Wallet</a>
     <a href="UserBooking.jsp">Booking History</a>
    
       
      </div>
   
   
  </div>
 <form >
<%-- <% OrderDetailDaoImpl dao=new OrderDetailDaoImpl();
UserDetail user=(UserDetail)session.getAttribute("currentUser");
int userid=user.getUserId();
OrderDetail ord=new OrderDetail();
ord.setUserId(userid);
List<OrderDetail> listproduct=dao.view(ord);


%> --%>

</form>
<h1>Cart details</h1>

        
        <table>
		<tbody>
			<td>
			<tr>
				<c:set var="count" value="1" />
				<c:forEach items="${listproduct}" var="cartview">

					<td>Order${cartview.order_id}</td>
					<td>${cartview.userId}</td>
					<td>${cartview.carid}</td>
					<td>${cartview.price}</td>
					
					<c:choose>
						<c:when test="${count==5}">
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
</body>
</html>
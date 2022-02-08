<%@page import="org.apache.catalina.connector.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ page isELIgnored = "false" %>
    <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Cart</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	margin: 0;
	font-family: Arial;
	background-color: #E7E9BB;
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
	background-color: gray;
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

.topnav a:hover, .dropdown:hover .dropbtn {
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

.red {
	margin-top: 50px;
}

span {
	font-size: 20px;
	font-weight: bold;
	color: navy;
}

.one {
	margin-left: 1150px;
	margin-top: 50px;
}
</style>
</head>
<body>
	<div class="topnav" id="myTopnav">
		<a href="showss">ShowProduct</a> <a href="cartview" class="active">Cart</a>
		<a href="login.jsp" style="float: right">Logout</a> <a
			href="userhistory" style="float: right">Profile</a> <a
			href="updateWallet.jsp">Recharge Wallet</a> <a href="userbooking">Booking
			History</a>


	</div>


	<div class="one">

		<a href="showss"><button type="button" class="btn btn-primary">Back</button>
		</a>
	</div>
	<h1>Cart details</h1>


	<table>
	<caption>Cart items</caption>
		<thead>
			<tr>
				<th id="one">OrderId</th>
				<th id="two">User_id</th>
				<th id="three">Car_id</th>
				<th id="four">price</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><c:set var="count" value="1" />
				 <c:forEach
						items="${listproduct}" var="cartview">

						<span>Order_id:&nbsp;${cartview.orderId}</span>
						<br>
						<br>
						<span>User_id:&nbsp;${cartview.userId}</span>
						<br>
						<br>
						<span>Car_id:&nbsp;&nbsp;${cartview.carId}</span>
						<br>
						<br>
						<span>Price:&nbsp;&nbsp;&nbsp;${cartview.price}</span>
						<br>
						<br>
						<hr>

					</c:forEach></td>
			</tr>
		</tbody>
	</table>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>View User</title>

<link rel="style"
	href="https://cdn.datatables.net/1.11.4/css/jquery.dataTables.min.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
		<link rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    
    
    <link rel="style"
	href="//cdn.datatables.net/1.11.4/css/jquery.dataTables.min.css">
<script type="text/javascript"
	src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
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

.one {
	margin-top: 40px;
	margin-left: 1100px;
}

span {
	color: navy;
	font-size: 20px;
	font-weight: bold;
}

table {
	width: 100%;
}

.header {
	color: black;
	font-weight: bold;
}

</style>

</head>
<body>
	<div class="topnav" id="myTopnav">
		<a href="#home" class="active">Home</a> <a href="login.jsp"
			style="float: right">Logout</a> <a href="Viewuser">UserHistory</a> <a
			href="AdminBooking">Booking history</a>
			 <a href="AdminProductServlet">Product</a>
     <a href="AdminPrice">PriceDetail</a>
		<div class="dropdown">
			<button class="dropbtn">
				Car Details <em class="fa fa-caret-down"></em>
			</button>
			<div class="dropdown-content">
				<a href="addcar.jsp">Add car</a> <a href="priceDetail.jsp">PriceDetail
				</a>

			</div>
		</div>


	</div>

	<div class="one">
		<a href="admin.jsp"><button type="button" class="btn btn-primary">Back</button>
		</a>
	</div>
	<h2 class="Userdetail">User Detail</h2>


	<table id="myTable" border="1">
	<caption>view user</caption>
		<thead>
			<tr>
				<th id="one">Name</th>
				<th id="two">Email</th>
				<th id="three">phone</th>
			</tr>
			</thead>
			<tbody>
			
				<c:set var="count" value="1" />
				<c:forEach items="${view}" var="user">
				<tr>
					<td><span>${user.firstName}</span></td>
					<td><span>${user.email}</span></td>
					<td><span>${user.phoneNo}</span></td>
					</tr>
					</c:forEach>
					
			
		</tbody>
	</table>

<script>
	$(document).ready(function() {
		$('#myTable').DataTable();
	});
	</script>
</body>
</html>
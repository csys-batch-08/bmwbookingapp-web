<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
img {
	width: 300px;
	padding: 10px;
}

img:hover {
	box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
}

span {
	margin-left: -15px;
	font-family: sans-serif;
}

.car {
	padding: 30px;
	margin: 30px;
	background-color: #FFE4C4;
	border: 2px solid black;
}

span {
	font-size: 20px;
}

h1 span {
	font-size: 30px;
	margin-left: 30px;
}

body {
	margin: 0;
	font-family: Arial;
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
</style>
</head>
<body>
	<div class="topnav" id="myTopnav">
		<a href="#home" class="active">Home</a> <a href="login.jsp"
			style="float: right">Logout</a> <a href="Viewuser">UserHistory</a> <a
			href="AdminBooking">Booking history</a> <a href="AdminProductServlet">Product</a>
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
		<table id="carproduct">
			<caption></caption>
			<thead>
				<tr>
					<th id="one"></th>
					<th id="two"></th>
					<th id="three"></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><c:set var="count" value="1" /> <c:forEach
							items="${listproduct}" var="carProduct">

							<td>
								<div class="car">
									<img src="images/${carProduct.carName}.jpg" alt="img"><br>

									<strong> <span>${carProduct.carName}</span><br>
									</strong> <span><strong>Car_id</strong> &nbsp;&nbsp;</span> <span>
										:${carProduct.carId}</span><br> <span><strong>FuelType</strong>
										&nbsp;&nbsp;</span> <span> :${carProduct.fuelType}</span><br> <span><strong>CarType</strong>
										&nbsp;&nbsp;</span> <span>: ${carProduct.carType} </span><br> <span><strong>CarModel</strong></span>
									&nbsp;&nbsp;<span>: ${carProduct.carModel} </span><br>
									<button type="button" class="btn btn-primary"
										data-toggle="modal" data-target="#myModal${carProduct.carId}">Update
										car</button>

									<button type="button" class="btn btn-primary"
										data-toggle="modal" data-target="#myModals${carProduct.carId}">Delete
										car</button>
								</div>
							</td>

							<div class="modal fade" id="myModal${carProduct.carId}"
								role="dialog">
								<div class="modal-dialog modal-lg">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Modal Header</h4>
										</div>
										<div class="modal-body">
											<form action="updatecar" method="Post">

												<div class="two">
													<h2>Update car(${carProduct.carName})</h2>
													<label for="proname">Enter your carid:</label><br> <input
														type="text" name="proname" id="proname"
														value="${carProduct.carId}" readonly><br> <label
														for="fueltype">Enter your fuelType</label for="html"><br> <input
														type="text" name="fueltype" id="fueltype"
														autocomplete="off" required><br> <br> <label
														for="cartype">Enter your cartype</label><br> <input
														type="text" name="cartype" id="cartype" autocomplete="off"
														required><br> <br> <label for="carmodel">Enter
														your carmodel</label><br> <input type="text" name="carmodel"
														id="carmodel" autocomplete="off" required><br>
													<br>

													<button type="submit" id="submit">update car</button>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Close</button>
										</div>
									</div>
								</div>
							</div>

							<div class="modal fade" id="myModals${carProduct.carId}"
								role="dialog">
								<div class="modal-dialog modal-lg">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Modal Header</h4>
										</div>
										<div class="modal-body">
											<form action="deletecar" method="post">
												<div class="three">
													<h3>Delete car</h3>
													<label for="html">Enter your carid:</label><br> <input
														type="text" name="carid" id="carid"
														value="${carProduct.carId}" autocomplete="off" required><br>
													<br>
													<button type="submit">Delete car</button>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Close</button>
										</div>
									</div>
								</div>
							</div>

							<c:choose>
								<c:when test="${count==2}">
									<c:set var="count" value="1" />
									<tr>
								</c:when>
								<c:otherwise>
									<c:set var="count" value="${count+1}" />
								</c:otherwise>
							</c:choose>
						</c:forEach>
				</tr>
		</table>

</body>
</html>
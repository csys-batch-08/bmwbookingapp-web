<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.carbookings.daoimpl.CarProductDaoImpl"%>
<%@ page import="java.util.List"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Select Car</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>

<style>
body {
	margin: 0;
	font-family: Arial;
	background-color: #E7E9BB;
	background-size: cover;
	height: 300px;
}

img {
	width: 500px;
	border: 1px solid #ddd;
	border-radius: 4px;
	padding: 5px;
}

img:hover {
	box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
}

span {
	font-size: 24px;
	color: navy;
}

.cars {
	position: absolute;
	margin-left: 100px;
	margin-top: 50px;
	font-weight: bold;
}

.car {
	position: absolute;
	margin-left: 600px;
	margin-top: -100px;
	font-weight: bold;
}

.CarProducts {
	color: red;
}

.one {
	margin-left: 1150px;
}
</style>
</head>
<body>
	<nav
		class="navbar navbar-expand-lg py-3 navbar navbar-dark bg-info shadow-sm">
		<div class="container">
			<a href="#" class="navbar-brand"> <!-- Logo Image --> <img
				src="images/bmw-logo.svg" style="width: 80px" alt=""
				class="d-inline-block align-middle mr-2"> <!-- Logo Text --> <span
				class="text-uppercase font-weight-bold">BMW ShowRoom</span>
			</a>

			<button type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation" class="navbar-toggler">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div id="navbarSupportedContent" class="collapse navbar-collapse">
				<ul class="navbar-nav ml-auto">

					<li class=" active"><a href="showss" class="nav-link">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a href="cartview" class="nav-link">Cart</a></li>
					<li class="nav-item"><a href="#" class="nav-link"
						data-toggle="modal" data-target="#myModal">Contact</a></li>
					<li class="nav-item"><a href="updateWallet.jsp"
						class="nav-link">RechargeWallet</a></li>
					<li class="nav-item"><a href="userhistory" class="nav-link">Profile</a></li>
					<li class="nav-item"><a href="userbooking" class="nav-link">BookingHistory</a></li>

					<li class="nav-item"><a href="login.jsp" class="nav-link">Logout</a></li>



				</ul>


			</div>

		</div>
	</nav>

	<form action="cart" method="post">




		<h2 class="CarProducts">Car Details</h2>
		<div class="one">

			<a href="showss"><button type="button" class="btn btn-primary">Back</button>
			</a>
		</div>

		<div class="list">
			<table>
				<caption>selectCar</caption>
				<thead>
					<tr>
						<th id="one"></th>
						<th id="two"></th>
						<th id="three"></th>
					</tr>
				</thead>
				<tbody>
					<tr>

						<td>
							<table id="carproduct">
								<caption>Select Car</caption>
								<thead>
					<tr>
						<th id="one"></th>
						<th id="two"></th>
						<th id="three"></th>
					</tr>
				</thead>
								<tbody>
									<tr>

										<td><c:forEach items="${car1}" var="car1">
												<span> <img src="images/${car1.carName}.jpg"
													alt="img"></td>
										</span>
										<td class="cars"><span>carid
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : ${car1.carId} </span><br>
											<span>carname&nbsp; : ${car1.carName} </span><br> <span>carmodel
												: ${car1.carModel} </span><br> <span>cartype
												&nbsp;&nbsp;&nbsp;: ${car1.carType} </span><br> <span>fueltype&nbsp;&nbsp;&nbsp;:
												${car1.fuelType}</span><br> <c:set var="carId"
												value="${car1.carId}" scope="session" /> <a
											href="cart?carId=${car1.carId}"> <br>
											<button type="submit" style="margin-left: 300px;"
													class="btn btn-primary">Add to cart</button></a> </c:forEach>

											</form>
											</span></td>
									</tr>
								</tbody>
							</table>

						</td>



					</tr>
				</tbody>
			</table>

		</div>
		<div class="two">
			<table>
				<caption>selectCar</caption>
				<thead>
					<tr>
						<th id="one"></th>
						<th id="two"></th>
						<th id="three"></th>
					</tr>
				</thead>
				<tbody>
					<tr>

						<td>
							<table id="carsecond">
								<caption>selectCar</caption>
								<thead>
					<tr>
						<th id="one"></th>
						<th id="two"></th>
						<th id="three"></th>
					</tr>
				</thead>
								<tbody>
									<tr>

										<td class="car"><c:forEach items="${car2}" var="car2">

												<span>showroomprice :${car2.exshowroomPrice} </span>
												<br>
												<span>roadtax &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :${car2.roadTax} </span>
												<br>
												<span>insrance&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:${car2.insurance}</span>
												<br>
												<hr>
												<span style="color: red">Total OnroadPrice :
													${car2.onroadPrice} </span>
												<br>
												<hr>

												<c:set var="price" value="${car2.onroadPrice}"
													scope="session" />
											</c:forEach> <span> </span></td>
									</tr>
								</tbody>
							</table>

						</td>



					</tr>
				</tbody>
			</table>

		</div>
		</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Confirm Car</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>

<style>
img {
	width: 500px;
	border: 1px solid #ddd;
	border-radius: 4px;
	padding: 5px;
}

img:hover {
	box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
}

body {
	margin: 0;
	font-family: Arial;
	background-color: #E7E9BB;
	height: 300px;
}

.one {
	margin-left: 1100px;
	margin-top: 100px;
}

#carproduct {
	margin-left: 100px;
}

span {
	margin-left: 80px;
	margin-top: 50px;
	font-size: 20px;
	font-weight: bold;
	color: navy;
}

button {
	margin-left: 100px;
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




	<div class="one">
		<a href="showss"><button type="button" class="btn btn-primary">Back</button>
		</a>
	</div>
	<form method="post">




		<table id="carproduct">
			<thead>
				<tr>
					<th id="one">carid</th>
					<th id="two">carName</th>
					<th id="three">carModel</th>
					<th id="four">cartype</th>
					<th id="five">fueltype</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${confirmview}" var="car1">

					<tr>
						<td><img src="images/${car1.carName}.jpg" alt="maari"></td>
						<td class="car"><span> ${car1.carId} </span><br>
						<br> <span> ${car1.carName} </span><br>
						<br> <span> ${car1.carModel} </span><br>
						<br> <span> ${car1.carType} </span><br>
						<br> <span> ${car1.fuelType}</span><br>
						<br> <span>price: ${price}</span><br>
						<br> <c:set var="carname" value="${car1.carName}"
								scope="session" />
						<td>
							<button>
								<a href="customerDetail.jsp" class="btn btn-primary">confirm
									booking </a>
							</button>
						</td>
						<td>
							<button>
								<a href="ShowProducts.jsp" class="btn btn-primary">Cancel
									booking</a>
							</button>
						</td>
				</c:forEach>
			</tbody>
		</table>
	</form>



</body>
</html>
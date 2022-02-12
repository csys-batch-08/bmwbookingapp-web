<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>login page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	></script>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

.para {
	margin-left: 700px;
	margin-top: -400px;
}

.para2 {
	width: 50%;
}

.imr2 {
	margin-left: 530px;
	margin-top: -250px;
}

input[type=text] {
	width: 100%;
	border: 2px solid black;
}

input[type=password] {
	width: 100%;
	border: 2px solid black;
}

input:focus {
	outline: none;
	box-shadow: 0px 0px 5px #61C5FA;
	border-color: #5AB0DB;
}

input:hover {
	border: 1px solid #999;
	border-radius: 5px;
}

button {
	width: 25%;
	margin-left: 100px;
	background-color: hsl(240, 75%, 50%);
}

.modal {
	width: 400px;
	height: 600px;
	margin-left: 550px;
}

.modal-footer {
	background: white;
	background-color: #E7E9BB;
}

.modal-header {
	background-color: #E7E9BB;
}

.modal-body {
	background-color: #E7E9BB;
}

.login {
	background-color: GREY;
	border-radius: 10px;
	width: 40%;
	height: 30px;
	color: white;
	font-size: 18px;
	https: //github.com/Mariraja123/BMW-Carbooking.git left:20px;
}
</style>
</head>

<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<!-- Brand/logo -->
		<a class="navbar-brand" href="#"> <img src="images/bmw-logo.svg"
			alt="logo" style="width: 70px;">
		</a>

		<!-- Links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="#"
				data-toggle="modal" data-target="#myModal"
				style="float: right; margin-left: 1100px;">Login </a></li>
			<li class="nav-item"><a class="nav-link" href="index.jsp">Register
			</a></li>
		</ul>
	</nav>

	<div class="modal" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Login Form</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<form action="loginval" method="post">
						<label>Enter your mail:</label><br> <input type="text"
							placeholder="Email" name="uname"
							pattern="[a-z0-9]+[@][a-zA-Z]+[.][a-z]+" autocomplete="off"
							required /><br> <label>Enter your Password:</label><br>
						<input type="password" placeholder="Password" name="upass"
							pattern="(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,}"
							required><br>
						<br>
						<button class="login" type="submit">Log In</button>
						<br> <a href="forgetPassword.jsp" style="color: red;">Forgot
							Password ?</a> <a href="index.jsp" style="float: right; color: red">Create
							New Account</a>
					</form>
				</div>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				</div>

			</div>
		</div>
	</div>
	<!-- Carousel -->
	<div id="demo" class="carousel slide" data-bs-ride="carousel">

		<!-- Indicators/dots -->
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#demo" data-bs-slide-to="0"
				class="active"></button>
			<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
			<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
		</div>

		<!-- The slideshow/carousel -->
		<div class="carousel-inner">
			<div class="carousel-item active" data-interval="1000">
				<img src="images/slidebmw.jpg" alt="Los Angeles" class="d-block"
					style="width: 100%">
				<div class="carousel-caption">
					<h3>BMW X1 Series</h3>

				</div>
			</div>
			<div class="carousel-item" data-interval="1500">
				<img src="images/slidebmw1.jpg" alt="Chicago" class="d-block"
					style="width: 100%">
				<div class="carousel-caption">
					<h3>BMW x8 series</h3>

				</div>
			</div>
			<div class="carousel-item" data-interval="2000">
				<img src="images/slidebmw2.jpg" alt="New York" class="d-block"
					style="width: 100%">
				<div class="carousel-caption">
					<h3>BMW x12 series</h3>

				</div>
			</div>
		</div>

		<!-- Left and right controls/icons -->
		<button class="carousel-control-prev" type="button"
			data-bs-target="#demo" data-bs-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#demo" data-bs-slide="next">
			<span class="carousel-control-next-icon"></span>
		</button>
	</div>
	<h1>About us</h1>
	<div class="imr">
		<img src="images/bmwview1.jpg" style="width: 800px;" alt="no image">
	</div>
	<div class="para">
		<h3>The BMW Group company profile.</h3>
		<p>BMW cars have been officially sold in the United States since
			1956 and manufactured in the United States since 1994. The first BMW
			dealership in the United States opened in 1975. In 2016, BMW was the
			twelfth highest selling brand in the United States. The BMW
			manufacturing plant in Greer, South Carolina, has the highest
			production volume of the BMW plants worldwide, currently producing
			approximately 1,500 vehicles per day. The models produced at the
			Spartanburg plant are the X3, X4, X5, X6 and X7 SUV models. In
			addition to the South Carolina manufacturing facility, BMW's North
			American companies include sales, marketing, design, and financial
			services operations in the United States, Mexico, Canada and Latin
			America. The North American headquarters for BMW is located at 300
			Chestnut Ridge Road Woodcliff Lake, NJ. Its North American
			headquarters for its large financial services subsidiary is located
			in Dublin, Ohio and is responsible for the captive lending for BMW
			automotive, BMW Motorsport, and Rolls-Royce cars, when buyers lease
			the vehicles or decide to finance directly with the company</p>
	</div>
	<div class="para2">
		<h1>History of BMW</h1>
		<p>SUPPORTING THE NEXT GENERATION. BMW has a long established
			commitment to supporting education across the UK. Launched in the UK
			over two decades ago as part of the company's corporate
			responsibility commitment, BMW Group Education provides teachers and
			students with free, curriculum-linked and award-winning educational
			resources. The comprehensive resources for primary and secondary
			schools cover topics including: road safety and the benefits of
			travelling actively sustainable mobility, technology and design
			understanding sustainable living in urban environments careers
			information</p>
	</div>
	<div class="imr2">
		<img src="images/bmwview.jpg" style="width: 800px;" alt="no image">
	</div>

</body>
</html>
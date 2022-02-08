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
</style>
</head>
<body>
   <div class="topnav" id="myTopnav">
    <a href="#home" class="active">Home</a>
   
    <a href="login.jsp" style=float:right>Logout</a>
    <a href="Viewuser">UserHistory</a>
    <a href="AdminBooking">Booking history</a>
     <a href="AdminProductServlet">Product</a>
     <a href="AdminPrice">PriceDetail</a>
    <div class="dropdown">
      <button class="dropbtn">Car Details
        <em class="fa fa-caret-down"></em>
      </button>
      <div class="dropdown-content">
        <a href="addcar.jsp">Add car</a>
        <a href="priceDetail.jsp">PriceDetail </a>
       
      </div>
    </div>
    
   
  </div>
	<div class="one">
		<table id="carproduct">
		<caption>AdminProduct</caption>
		<thead>
					<tr>
						<th id="one"></th>
						<th id="two"></th>
						<th id="three"></th>
					</tr>
				</thead>
			<tbody>
		
				<tr>
					<c:set var="count" value="1" />
					<c:forEach items="${car2}" var="car2">


						<td>
							<div class="car">
								<span>showroomprice :${car2.car_id} </span><br> <span>showroomprice
									:${car2.exshowroomprice} </span><br> <span>roadtax
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :${car2.roadtax} </span><br>
								<span>insrance&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:${car2.insurance}</span><br>
								<hr>
								</div>
								<span style="color: red">Total OnroadPrice :
									${car2.onroadprice} </span><br>
										<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target="#myModal${car2.car_id}">Update car</button>

						<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target="#myModals${car2.car_id}">Delete car</button>
						</td>
					

						<div class="modal fade" id="myModal${car2.car_id}"
							role="dialog">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Modal Header</h4>
									</div>
									<div class="modal-body">
										<form action="updateprice" method="post">
											<div class="two">
												<h2>Update your price detail</h2>
												<label for="carid">Enter your carid:</label><br> <input type="text"
													name="carid" id="carid" value="${car2.car_id}" required><br>
												<br> <label for="roadtax">Enter your Exshowroom_price:</label><br>
												<input type="number" name="showroom_price" min="1"
													pattern="((\\d{1,4})(((\\.)(\\d{0,2})){0,1}))"  id="c" required><br>
												<label for="roadtax">Enter your Roadtax:</label><br> <input
													type="number" name="roadtax" id="roadtax" min="1"
													pattern="((\\d{1,4})(((\\.)(\\d{0,2})){0,1}))" required><br>
												<br> <label for="insurance">Enter your insurance:</label><br> <input
													type="number" name="insurance" id="insurance" min="1"
													pattern="((\\d{1,4})(((\\.)(\\d{0,2})){0,1}))" required><br>
												<br>
												<button type="submit" id="submit">update price</button>
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
						
						<div class="modal fade" id="myModals${car2.car_id}"
							role="dialog">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Modal Header</h4>
									</div>
									<div class="modal-body">
										<form action="deleteprice" method="post">
											<div class="three">
												<h2>Delete your price detail</h2>
												<label>Enter your Carid</label><br> <input type="text"
													name="delete" id="delete" value="${car2.car_id}" required><br>
												<br>
												<button type="submit" id="submit">submit</button>
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
                        <c:when test="${count==3}">
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
		

	</div>
</body>
</html>

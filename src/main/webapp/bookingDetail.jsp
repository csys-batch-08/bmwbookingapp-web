<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ page isELIgnored = "false" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Detail</title>
 
<link rel="style"
	href="//cdn.datatables.net/1.11.4/css/jquery.dataTables.min.css">

<script type="text/javascript"
	src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
    
    
    <link rel="style"
	href="//cdn.datatables.net/1.11.4/css/jquery.dataTables.min.css">
<script type="text/javascript"
	src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
	
	
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
    .one
    {
    margin-top:40px;
    margin-left:1100px;
    }
    span
    {
    color:navy;
    font-size:18px;
    }
    table {
	width: 100%;
}</style>
</head>
<body>




 <div class="topnav" id="myTopnav">
    <a href="#home" class="active">Home</a>
   
    <a href="login.jsp" style=float:right>Logout</a>
    <a href="Viewuser">UserHistory</a>
    <a href="AdminBooking">Booking history</a>
    
			 <a href="AdminProductServlet">Product</a>
    <div class="dropdown">
      <button class="dropbtn">Car Details
        <i class="fa fa-caret-down"></i>
      </button>
      <div class="dropdown-content">
        <a href="addcar.jsp">Add car</a>
        <a href="priceDetail.jsp">PriceDetail </a>
       
      </div>
    </div>
    
   
  </div>


 <div class="one">
 <a href="Admin.jsp"><button type="button" class="btn btn-primary">Back</button> </a>
 </div>



 <h2 class="CarProducts">Booking Details</h2>
        
       <table border="1" id="myTable">
       <thead>
			<tr>
				<th class="header">orderid</th>
				<th>carid</th>
				<th>carname</th>
				<th>status</th>
				<th>OrderedDate</th>
				<th>Address</th>
			</tr>
			</thead>
		<tbody>
				  <c:set var="count" value="1" />
          <c:forEach items="${allbook}" var="adminbooking">
            <fmt:parseDate pattern="yyyy-MM-dd" value="${adminbooking.expecteddate}"
				var="ExpectedDate" />
				<tr>
					<td>${adminbooking.order_id}</td>
					<td>${adminbooking.car_id}</td>
					<td>${adminbooking.carname}</td>
					<td>${adminbooking.status}</td>
					<td><fmt:formatDate pattern="dd-MM-yyyy" value="${ExpectedDate}"/>
					<td>${adminbooking.address}</td>
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

				

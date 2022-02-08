<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ page isELIgnored = "false" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
     
     
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User Booking</title>
<link rel="style"
	href="//cdn.datatables.net/1.11.4/css/jquery.dataTables.min.css">

<script type="text/javascript"
	src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"></script>
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
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
    .red
    {
   
    margin-top:50px;
    }
    span
    {
      font-size:20px;
 font-weight: bold;
  color: navy;}
 .one
 {
 margin-left:1150px;
margin-top:-20px;
 }
 label{
float: right;
}
table
{
width:100%;}
#myTable_length{
float: left;
}
#myTable_paginate {
background-color:black;

}
 
 </style>
</head>
<body>
 <div class="topnav" id="myTopnav">
    <a href="showss" >ShowProduct</a>
   <a href="cartview" >Cart</a>
     <a href="login.jsp" style=float:right>Logout</a>
       
    <a href="#about" data-toggle="modal" data-target="#myModal">Contact</a>
    <a href="userhistory" style=float:right>Profile</a>
      <a href="updateWallet.jsp">Recharge Wallet</a>
     <a href="userbooking" class="active">Booking History</a>
    
       
      </div>
      

          <h2 class="Userdetail">Booking Details</h2>
          <div class="one">
           <a href="showss"><button type="button" class="btn btn-primary">Back</button> </a>
        </div>
        <table border="1" id="myTable">
        <caption>userbooking</caption>
        <thead>
        <tr>
        <th id="one">Order_id</th>
        <th id="two">car_id</th>
        <th id="three">carName</th>
        <th id="four">ExpectedDate</th>
        <th id="five">status</th>
        <th id="six">Address</th>
        </tr>
        </thead>
		<tbody>
			<tr>
				<c:set var="count" value="1" />
				<c:forEach items="${listproduct}" var="booking">
				<fmt:parseDate pattern="yyyy-MM-dd" value="${booking.expecteddate}"
				var="Expecteddate" />

			
                      
					<td><span>${booking.orderId}</span></td>
					<td><span>&nbsp;&nbsp;${booking.carId}</span></td>
					<td><span>${booking.carname}</span></td>
					
					<td style="width:10%"><span><fmt:formatDate pattern="dd-MM-yyyy" value="${Expecteddate}"/></span></td>
					<td><span>${booking.status}</span></td>
					
					<td><span>${booking.address}</span></td>
					
						
			<c:choose>
                        <c:when test="${count==1}">
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
	<script>
	$(document).ready(function() {
		$('#myTable').DataTable();
	});
	</script>
       <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">BME contact</h4>
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
</body>
</html>
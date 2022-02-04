<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ page isELIgnored = "false" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
     
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Booking</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
 margin-top:20px;
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
        <table border="1">
		<tbody>
			<td>
			<tr>
				<c:set var="count" value="1" />
				<c:forEach items="${listproduct}" var="booking">
				<fmt:parseDate pattern="yyyy-MM-dd" value="${booking.expecteddate}"
				var="Expecteddate" />

				
                      
					<td><span>Order_id:&nbsp;&nbsp;${booking.order_id}</span></td>
					<td><span>Car_id:&nbsp;&nbsp;${booking.car_id}</span></td>
					<td><span>CarName:${booking.carname}</span></td>
					
					<td style="width:10%"><span><fmt:formatDate pattern="dd-MM-yyyy" value="${Expecteddate}"/></span></td>
					<td><span>Status:${booking.status}</span></td>
					
					<td><span>Address:${booking.address}</span></td>
					
					<c:choose>
						<c:when test="${count==1}">
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
       </div><div class="modal fade" id="myModal" role="dialog">
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
  
</div>
</body>
</html>
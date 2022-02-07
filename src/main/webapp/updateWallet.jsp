<%@page import="com.carbookings.model.UserDetail"%>

<%@page import="com.carbookings.daoimpl.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>wallet recharge</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!-- Toastr -->
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
<style>
 body {
      margin: 0;
      font-family: Arial;
      background-color:#E7E9BB;
      background-image:url("wallet.jpg");
      background-repeat:no-repeat;
    
      width:100%;
    

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
      background-color:gray;
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
    }.wall
    {
    margin-left:600px;
    margin-top:150px;
 
    }
    </style>
</head>
<body>
<div class="topnav" id="myTopnav">
    <a href="showss" >ShowProduct</a>
   <a href="cartview">Cart</a>
     <a href="login.jsp" style=float:right>Logout</a>
       
    <a href="#about" data-toggle="modal" data-target="#myModal">Contact</a>
    <a href="userhistory"style=float:right >profile</a>
      <a href="updateWallet.jsp" class="active">Recharge Wallet</a>
     <a href="userbooking">Booking History</a>
    
       
      </div>

<h2>Recharge Wallet</h2>
<form action="wallet" method="post">
	<div class="wall">
	<h2>Your Remaining balance:${currentUser.getWallet()}</h2>
	<input type="number" name="amount" id="number" min="1"><br><br>
	
	
	<button type="submit" id="success">wallet recharge</button></form><br><br>
	</div>
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">BMw contact</h4>
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
  <script type="text/javascript">
    $('#success').click(function(event) {
		toastr.success('Your wallet amount updated successfully');
   });
    </script>
</body>
</html>


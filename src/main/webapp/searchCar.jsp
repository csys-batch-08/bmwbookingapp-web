<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
  <%@ page isELIgnored = "false" %>
    <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Search Car</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style >
img
{
border:1px solid black;
width:30%;
}
img:hover {
  box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
}

 body {
      margin: 0;
      font-family: sans-serif;
     background-color:#F8F8FF;
 

    }
    .carproduct
    {
    padding:50px;
    
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


body
{
background-color:#E7E9BB;
}

span
{
  font-size:20px;
 font-weight: bold;
  color: navy;}
  .car
  {
  margin-left:400px;}
</style>

</head>
<body>

<div class="one">
     <div class="topnav" id="myTopnav">
    <a href="showss" >ShowProduct</a>
   <a href="cartview">Cart</a>
     <a href="login.jsp" style=float:right>Logout</a>
     
    <a href="#about" data-toggle="modal" data-target="#myModal">Contact</a>
    <a href="userhistory" style=float:right>Profile</a>
      <a href="updateWallet.jsp">Recharge Wallet</a>
     <a href="userbooking">Booking History</a>
    
       
      </div><br><br><br><br>
    


     
<table id="carproduct">
<caption> searchCar</caption>
		<tbody>
			
			<tr>
			<td>
				  <c:set var="count" value="1" />
           <c:forEach items="${Carname}" var="carProduct">

					
					
					  <div class="car">
                                    <img src="images/${carProduct.carName}.jpg" alt="img"><br><br><br>
                                  
                                           <span>CarName: &nbsp;&nbsp; ${carProduct.carName}</span><br>
                                         <span>fueltype: &nbsp;&nbsp; ${carProduct.fuelType}</span><br>
                                        <span>cartype :&nbsp;&nbsp;  ${carProduct.carType} </span><br>
                                         <span>carmodel : ${carProduct.carModel} </span><br>
                                           <span style="margin-left:70px;"><a href="showss"><button class="btn btn-primary">Book</button></a></span>
                                      
                                         </div>
                             </c:forEach>
                             </td>
                             </tr>
                            
		</tbody>
	</table>

      
   </div>   
</body>
</html>
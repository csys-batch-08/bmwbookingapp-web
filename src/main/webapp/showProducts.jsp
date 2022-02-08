
<%@page import="com.carbookings.model.UserDetail"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
   <%@ page isELIgnored = "false" %>
    <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Show products</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
  
<style>

img{
    width: 300px;
 
  padding: 10px;

}
img:hover {
  box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
}

body {
  background: linear-gradient(70deg, #e6e6e6, #f7f7f7);
  color: #514B64;
  min-height: 100vh;
}

code {
  background: #fff;
  padding: 0.2rem;
  border-radius: 0.2rem;
  margin: 0 0.3rem;
}
    .carproduct
    {
    padding:50px;
    
    }
    span
    {
    margin-left:-15px;
    font-family: sans-serif;}
   
    .car
    {
   padding:30px;
   margin:30px;
    background-color:#FFE4C4;
   border:2px solid black;
  
    }
   
    
    span
{
font-size:20px;
 }
  h1 span
  {
  font-size:30px;
  margin-left:30px;
  }
  
 #imra
 {
 margin-left:-90px;}
</style>
</head>

<body>
       
      

<nav class="navbar navbar-expand-lg py-3 navbar navbar-dark bg-info shadow-sm">
  <div class="container">
    <a href="#" class="navbar-brand">
      <!-- Logo Image -->
      <img src="images/bmw-logo.svg" style="width:80px" alt="" class="d-inline-block align-middle mr-2" id="imra">
      <!-- Logo Text -->
      <span class="text-uppercase font-weight-bold">BMW ShowRoom</span>
    </a>

    <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler"><span class="navbar-toggler-icon"></span></button>

    <div id="navbarSupportedContent" class="collapse navbar-collapse">
      <ul class="navbar-nav ml-auto">
     
        <li class=" active"><a href="showss" class="nav-link">Home <span class="sr-only">(current)</span></a></li>
        
        <li class="nav-item"><a href="updateWallet.jsp" class="nav-link">RechargeWallet</a></li>
        <li class="nav-item"><a href="cartview" class="nav-link">Cart</a></li>
          <li class="nav-item"><a href="userhistory" class="nav-link">Profile</a></li>
        <li class="nav-item"><a href="userbooking" class="nav-link">BookingHistory</a></li>
         <li class="nav-item"><a href="#" class="nav-link" data-toggle="modal" data-target="#myModal">Contact</a></li>
        <form class="d-flex" action="search" method="post">
        <input class="form-control me-2" type="search" id="car" name="car" placeholder="Search" aria-label="Search" autocomplete="on" required>
        <button class="btn btn-outline-success" type="submit">Search</button>&nbsp;&nbsp;&nbsp;
      </form>
        <li class="nav-item"><a href="login.jsp" class="nav-link">Logout</a></li>
      
        <%-- <li class="nav-item"><a href="#" class="nav-link"  ${sessionScope.username }></a></li> --%>
         
      </ul>
      

    </div>
    
  </div>
</nav>
 
     <h1><span style="color:red" > Welcome</span><span style="color:red">${sessionScope.username }</span></h1>
   <div class="one">
   <table id="carproduct">
   <caption>showproduct</caption>
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
           <c:forEach items="${listproduct}" var="carProduct">

					
					<td>
					  <div class="car">
                                    <img src="images/${carProduct.carName}.jpg" alt="img"><br>                                  
                                        <strong><span>${carProduct.carName}</span></strong><br>
                                   
                                         <span><strong>FuelType</strong> &nbsp;&nbsp;</span> <span> :${carProduct.fuelType}</span><br>
                                        <span ><strong>CarType</strong> &nbsp;&nbsp;</span> <span>: ${carProduct.carType} </span><br>
                                         <span><strong>CarModel</strong></span> &nbsp;&nbsp;<span>: ${carProduct.carModel} </span><br>
                                         
                                           <span style="margin-left:70px;"> <a href="SelectServlet?carId=${carProduct.carId}"><button class="btn btn-primary">view</button></a></span>
                                      
                                         </div>
                                       </td>  
                                         
					
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
  
    

</body>
</html>
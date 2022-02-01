<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
  <%@ page isELIgnored = "false" %>
    <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        
    
<!DOCTYPE html>
<html>
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
}
img:hover {
  box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
}


body
{
background-color:#E7E9BB;
}
.one
{
margin-left:500px;}
span
{
  font-size:20px;
 font-weight: bold;
  color: navy;}
</style>

</head>
<body>

<div class="one">
     
    
<h1><b>Search By Car:</b></h1>

     
<table id="carproduct">
		<tbody>
			<td>
			<tr>
				  <c:set var="count" value="1" />
           <c:forEach items="${Carname}" var="carProduct">

					
					<td>
					  <div class="car">
                                    <img src="images/${carProduct.carName}.jpg" alt="img"><br>
                                  
                                       
                                         <span>fueltype &nbsp;&nbsp; ${carProduct.fuelType}</span><br>
                                        <span>cartype &nbsp;&nbsp;  ${carProduct.carType} </span><br>
                                         <span>carmodel : ${carProduct.carModel} </span><br>
                                           <span style="margin-left:70px;"><a href="SelectServlet?carId=${carProduct.carId}"><button class="btn btn-primary">Book</button></a></span>
                                      
                                         </div>
                                       </td>  
                                         
					
					<c:choose>
						<c:when test="${count==2}">
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

      
   </div>   
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="com.Carbooking.model.CarProduct"%>
<%@page import="com.Carbooking.daoimpl.*"%>
        
    
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
      <% 
      List<CarProduct> searchlist =(List<CarProduct>) session.getAttribute("carname");
     %>
    
<h1><b>Search By Car:</b></h1>

     
<%
for (CarProduct list : searchlist) {
int i=0;
i++;

%>
<tr>

 <td><span></span><img src="images/<%=list.getCar_name()%>.jpg" width=300px height=300px  alt="img"> </span></td><br><br>
<span><td>Car Name:<%=list.getCar_name()%></td></span><br><br>
<span><td>fuel type<%=list.getFuelType() %></td></span><br><br>

<span><td>CarType:<%=list.getCarType()%></td></span><br><br>
<span><td>CarModel:<%=list.getCarModel()%></td></span><br><br>

<!-- <td><a href="confirmcar.jsp?Car_name=<%list.getCar_name();%>">book</a></td>--->

 <button class="btn btn-primary" style="color:red"><a href="ShowProducts.jsp">Book</a></button>


</tr>


<%
}

%>
     
      
   </div>   
</body>
</html>
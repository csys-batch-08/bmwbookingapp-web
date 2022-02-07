<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Invoice bill</title>

<style>
body
{
background-color:#E7E9BB;
}
.car
{
position:absolute;

margin-left:500px;
}
.one
{
font-size:30px;
color: navy;
}
img
{
float:right;
margin-top:30px;
}
.F{
	color: #212e59;
	font-size:3em;
	position: absolute;
	font-family: 'Oswald',sans-serif;
	margin-left:20px;
}
.address{
	font-size: 20px;
	font-family: 'oswald', sans-serif;
	margin-left:20px;
	
}
span
{
font-size:20px;
margin-top:40px;
margin-left:540px;
color:navy;
}
.images
{
margin-top:-200px;
margin-right:350px;"
}
.imag
{

margin-top:200px;
margin-left:550px;
}
button
{
margin-left:550px;
}
.row
{
margin-top:300px;}
</style>

</head>


<body>
  <form >

 <h1 CLASS="F">RECEIPT</h1>
  <img src="images/bmw-logo.svg" alt="logo" style="width:70px;" >
      <br><br><br><br><br>
        <p class="address"><strong>East Repair Inc.</strong><br>1912 Harvest Lane<br>CHENNAI</p><br><br>

</form>
    <table>
    <caption>invoice</caption>
		<tbody>
			
			<tr>
			<td>
				<c:set var="count" value="1" />
				<c:forEach items="${listproduct}" var="userproducts">
                    	<span>Invoice_Id:"${userproducts.invoiceId}"</span><br>
					<span>User_name  &nbsp;&nbsp;     :${sessionScope.username }</span><br>
					<span>Price &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: ${userproducts.price}</span><br>
					<span>Carname &nbsp;&nbsp;&nbsp; &nbsp;:${userproducts.carName}</span><br>
					<span>Advance &nbsp;&nbsp;&nbsp;&nbsp; ${sessionScope.price1 }</span><br>
					<span>RemainingAmount:${sessionScope.remain}</span><br>
					
			</c:forEach>
			</td>
			</tr>
			
			
		</tbody>
	</table>
      
        <button class="btn btn-primary"><a href="login.jsp">click me</a></button>
        <div class="imag">
           <h1 class="images"><img src="http://montco.happeningmag.com/wp-content/uploads/2014/11/thankyou.png" alt="thanks" style="width:300px;" /></h1>
           </div>
  		<div class="row" >
  	    	
  		      <span><strong>Phone:</strong>+91-124-111111</span>----
  	    	<span>  <strong>Email:</strong> india@bmw.com</span>----<span> <strong>Website:</strong> http://webivorous.com</span>
  	    
  		</div>


</body>
</html>

   


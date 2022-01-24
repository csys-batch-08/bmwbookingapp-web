<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.Carbooking.daoimpl.CarProductDaoImpl" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.Carbooking.model.CarProduct" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm Car</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>

   img{
width: 500px;
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 5px;

}
img:hover {
  box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
}


 body {
      margin: 0;
      font-family: Arial;
  background-color:#E7E9BB;     
      height:300px;
    

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
    margin-left:1100px;
    margin-top:100px;
    }
    #carproduct
    {
    margin-left:100px;
     
    }
    span
    {
     margin-left:80px;
       margin-top:50px;
   
     font-size:20px;
 font-weight: bold;
  color: navy;
    }
    button
    {
    margin-left:100px;
    }
  
</style>

</head>
<body>
<div class="topnav" id="myTopnav">
    <a href="#home" class="active">ShowProduct</a>
   <a href="AddCart.jsp">Cart</a>
     <a href="Login.jsp" style=float:right>Logout</a>
        <a href="Search.jsp">Search</a>
    <a href="#about">About</a>
     <a href="Userhistory.jsp" style=float:right>Profile</a>
         <a href="updatewallet.jsp">Recharge Wallet</a>
    
       
      </div>
   
    </div>
   
   
 <div class="one">
 <a href="ShowProducts.jsp"><button type="button" class="btn btn-primary">Back</button> </a>
 </div>
 <form  method="post">
<% CarProductDaoImpl dao=new CarProductDaoImpl();
String carid =session.getAttribute("car_id").toString();

CarProduct car = new CarProduct(carid);
CarProduct carProduct = dao.selectproduct(car);
%>
        
        <div class="recently added list">
       
                        <table id="carproduct">
                            <tbody>
                                <tr>
                                    <td><img src="images/<%=carProduct.getCar_name() %>.jpg" alt="maari"></td>    
                                    <td class="car">
                                    
                                        <span>carid : <%=carProduct.getCar_id()%> </span><br><br>
                                        <span>carname : <%=carProduct.getCar_name()%>  </span><br><br>
                                        <span>carmodel : <%=carProduct.getCarModel()%> </span><br><br>
                                        <span>cartype : Rs.<%=carProduct.getCarType() %> </span><br><br>
                                        <span>fueltype: <%=carProduct.getFuelType() %></span><br><br>
                                          <span>price:<%= session.getAttribute("price") %></span><br><br>
                                       <%session.setAttribute("carname", carProduct.getCar_name()); %>
                                      <button > <a href="CustomerDetail.jsp" class="btn btn-primary">confirm booking </a></button><br><br>
                                       <button> <a href="ShowProducts.jsp" class="btn btn-primary">Cancel booking</a></button><br><br>
                                          
                                         </form>
                                        
                  </tr>
         
        </div>

</body>
</html>
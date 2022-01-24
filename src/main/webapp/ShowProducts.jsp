<%@page import="com.Carbooking.model.UserDetail"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.Carbooking.daoimpl.CarProductDaoImpl" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.Carbooking.model.CarProduct" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show products</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>

img{
    width: 350px;
 
  padding: 10px;

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
    span
    {
    margin-left:-15px;
    font-family: sans-serif;}
   
    .car
    {
    padding:20px;}
   
    #carproduct
    {
    padding:30px;
    margin: 30px;
    background-color:#FFE4C4;
   border:2px solid black;
    
   
    }
    span
{
font-size:20px;
 
  color: navy;}
 
</style>
</head>

<body>
<% UserDetail user=(UserDetail)session.getAttribute("currentUser"); 
session.setAttribute("wallet", user.getWallet());%>
<div class="topnav" id="myTopnav">
    <a href="#home" >ShowProduct</a>
   <a href="AddCart.jsp">Cart</a>
     <a href="Login.jsp" style=float:right>Logout</a>
       

    <a href="Userhistory.jsp" style=float:right>Profile</a>
     <a href="updatewallet.jsp">Recharge Wallet</a>
     <a href="UserBooking.jsp">Booking History</a>
       <a href="#" data-toggle="modal" data-target="#myModal">Contact</a>
 
     <form action="search" method="post">
<div class="search">
<br>
<input type="text" id="car" name="car" style="margin-left:220px" autocomplete="on">
<input type="submit" value="Search">
</div>
</form>
    
       
      </div>
    
   
   
  </div>
 
 <form>
<%! CarProductDaoImpl dao=new CarProductDaoImpl();
List<CarProduct> listproduct=dao.showview();

%>

</form>        
        <div class="carproduct"  >
        <table>
            <tbody>
                <tr>
                <%int count=0;
                for(CarProduct carProduct: listproduct){
                	%>
                    <td>
                        <table id="carproduct">
                            <tbody>
                                <tr>
                                
                                    <td  ><img src="images/<%=carProduct.getCar_name()%>.jpg" alt="img"></td>
                                    </tr>
                                    <tr>
                                    <td class="car">
                                    
                                        <span>carname &nbsp;: <%=carProduct.getCar_name()%>  </span><br>
                                       
                                         <span>fueltype &nbsp;&nbsp;: <%=carProduct.getFuelType() %></span><br>
                                        <span>cartype &nbsp;&nbsp; : <%=carProduct.getCarType() %> </span><br>
                                         <span>carmodel : <%=carProduct.getCarModel()%> </span><br>
                                       
                                      
                                    
                                      
                                      <span style="margin-left:70px;"> <a href="SelectCar.jsp?car_id=<%=carProduct.getCar_id() %>"><button class="btn btn-primary">view</button></a></span>
                                      
                                        
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                       <% count ++;
                       if(count==3){ %> 
                    	   </tr>
                    	   <tr>              
                     <%count=0; }}%>  
                       
                </tr>
            </tbody>
        </table>
         
        </div>
    </div><div class="modal fade" id="myModal" role="dialog">
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
  
</div>
    

</body>
</html>
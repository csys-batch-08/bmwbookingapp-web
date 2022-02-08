<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Car</title>
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
    position:relative;
    margin-left:100px;
    }
     .two
    {
    position:relative;
    margin-left:950px;
    margin-top:-370px;
    }
      .three
    {
    position:relative;
    margin-left:550px;
    margin-top:-150px;
    }
    .back
    {
    margin-left:1250px;
   
    }
</style>
</head>
<body>
 <div class="topnav" id="myTopnav">
    <a href="#home" class="active">Home</a>
   
    <a href="login.jsp" style=float:right>Logout</a>
    <a href="Viewuser">UserHistory</a>
    <a href="AdminBooking">Booking history</a>
    <div class="dropdown">
      <button class="dropbtn">Car Details
        <em class="fa fa-caret-down"></em>
      </button>
      <div class="dropdown-content">
        <a href="addcar.jsp">Add car</a>
        <a href="priceDetail.jsp">PriceDetail </a>
       
      </div>
    </div>
    
   
  </div>
 <br><br>
 <div class="back">
 <a href="admin.jsp"><button>Back</button></a>
 </div>
  <br>
  
    <form action="addcar" method="post">
    <div class="one">
    <h2>Add a car</h2>
      <label for="carid">Enter your carid:</label><br>
      <input type="text" name="carid" id="carid" autocomplete="off" required><br><br>
      <label for="carname">Enter your Carname</label><br>
      <input type="text" name="carname" id="carname" autocomplete="off" required ><br><br>
      <label for="fueltype">Enter your fueltype</label><br>
      <input type="text" name="fueltype" id="fueltype" autocomplete="off"  required><br><br>
      <label for="cartype">Enter your cartype</label><br>
      <input type="text" name="cartype" id="cartype" autocomplete="off"  required><br><br>
      <label for="carmodel">Enter your carmodel</label><br>
      <input type="text" name="carmodel" id="carmodel" autocomplete="off"  required><br><br>
      <label for="carimage">Car Photo</label><br>
     <input type="file" name="carimage" id="carimage" required><br><br>
      <button type="submit">Add car</button>
      </div>
    </form>
</body>
</html>
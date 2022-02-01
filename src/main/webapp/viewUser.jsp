<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View User</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
     .one
    {
    margin-top:40px;
    margin-left:1100px;
    }
 </style>
</head>
<body>
    <div class="topnav" id="myTopnav">
    <a href="Admin.jsp" >Home</a>
  <a href="ViewUser.jsp">UserHistory</a>
    <a href="BookingDetail.jsp">Booking history</a>
    <a href="Login.jsp" style=float:right>Logout</a>
    
    <div class="dropdown">
      <button class="dropbtn">Car Detail
        <i class="fa fa-caret-down"></i>
      </button>
      <div class="dropdown-content">
        <a href="Addcar.jsp">Add car</a>
        <a href="PriceDetail.jsp">PriceDetail </a>
       
      </div>
    </div>

   
  </div>
 <%--  <% UserDetaildaoImpl dao= new UserDetaildaoImpl();
	List<UserDetail> view=new ArrayList<UserDetail>();
	view=UserDetaildaoImpl.alluser();%> --%>
	<div class="one">
 <a href="Admin.jsp"><button type="button" class="btn btn-primary">Back</button> </a>
 </div>
          <h2 class="Userdetail">User Detail</h2>
          
        
       <table border="1">
		<tbody>
			<td>
			<tr>
				<c:set var="count" value="1" />
				<c:forEach items="${view}" var="user">

					<td> Name:${user.first_name}</td>
					<td>Password:${user.cpassword}</td>
					<td>Email:${user.email}</td>
					<td>Phone:${user.phoneno}</td>
					
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
</body>
</html>
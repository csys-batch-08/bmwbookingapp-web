<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.Carbooking.daoimpl.InvoiceDaoImpl" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.Carbooking.model.Invoice" %>
    <%@ page import="com.Carbooking.model.UserDetail" %>
<!DOCTYPE html>
<html>
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
span
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
	font-size: 13px;
	font-family: 'oswald', sans-serif;
	margin-left:20px;
}
.row
{
font-size:20px;
margin-top:40px;
margin-left:140px;
}
.images
{
margin-top:-40px;
margin-right:350px;"
}
button
{

margin-top:240px;
margin-left:550px;
}
</style>

</head>


<body>
  <form >
<% InvoiceDaoImpl dao=new InvoiceDaoImpl();
UserDetail user=(UserDetail)session.getAttribute("currentUser");
int userid=user.getUserId();
Invoice ord=new Invoice(userid);
String  advance=request.getParameter("advance");
List<Invoice> listproduct=dao.view(ord);
%>
 <h1 CLASS="F">RECEIPT</h1>
  <img src="images/bmw-logo.svg" alt="logo" style="width:70px;" >
      <br><br><br><br><br>
        <p class="address"><b>East Repair Inc.</b><br>1912 Harvest Lane<br>CHENNAI</p><br><br>

</form>
        
         
        <table>
            <tbody>
                <tr>
                <%int count=0;
               for(Invoice order:listproduct){
                	%>
                    <td>
                        <table id="carproduct" >
                            <tbody>
                                <tr>
                                   
                                    <td class="car">
                                        <span>invoiceid &nbsp;&nbsp;&nbsp;   : <%= order.getInvoice_id() %></span><br>
                                       <span> user name  &nbsp;&nbsp;     : <%=session.getAttribute("username")%></span> <br>
                                       <span>price &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <%=order.getPrice()%> </span><br>
                                    <span> Carname &nbsp;&nbsp;&nbsp; &nbsp;: <%=order.getCar_name() %> </span><br>
                                    <span> Advance &nbsp;&nbsp;&nbsp;&nbsp; : <%=session.getAttribute("price1")%> </span><br>
                               <span> RemainingAmount: <%=session.getAttribute("remain")%> </span><br> 
                                       
                                        
                                      
                                     
                                      
                                        
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                    
                       <% count ++;
                       if(count==1){ %> 
                    	   </tr>
                    	   <tr>
                    	 
                     <%count=0; }}%>  
                                     
                </tr>
            </tbody>
        </table>
      
        <button class="btn btn-primary"><a href="ShowProducts.jsp">click me</a></button>
           <h1 class="images"><img src="http://montco.happeningmag.com/wp-content/uploads/2014/11/thankyou.png" alt="thanks" style="width:300px;" /></h1>
  		<div class="row" >
  	    	
  		      <marquee> <span><strong>Phone:</strong>+91-124-111111</span>----
  	    	
  		        <span>  <strong>Email:</strong> india@bmw.com</span>----
  	    	
  		       <span> <strong>Website:</strong> http://webivorous.com</span>
  	    </marquee>
  		</div>


</body>
</html>

   
</body>
</html> 
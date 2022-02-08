<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
    <title>Forget password</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"></script>
	<!-- Toastr -->
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <style>
      .forget
      {
      margin-left:600px;
     
     margin-top:200px;
     
      }
      body
      {
      background-color:gray;
      }
    </style>
    </head>
    <body>
    <form action="forget" method="Post">
    <div class="forget">
    <h1>Forget password</h1>
    <label for="forget">Enter your  Email:</label><br>
    <input type="text" name="forget" id="forget" required><br><br>
    <label for="html">Enter your new password:</label><br>
    <input type="password" name="password" id="password" required><br><br>
    <button type="submit" id="success">Reset password</button>
    </div>
    </form>
    
    <script type="text/javascript">
    $('#success').click(function(event) {
		toastr.success('Your password is reset successfully');
   });
    </script>
    </body>
    
    </html>
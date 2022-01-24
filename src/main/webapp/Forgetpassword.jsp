<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <html>
    <head>
    <title>Forget password</title>
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
    <label>Enter your  Email:</label><br>
    <input type="text" name="forget" id="forget" required><br><br>
    <label>Enter your new password:</label><br>
    <input type="text" name="password" id="password" required><br><br>
    <button type="submit">Reset password</button>
    </div>
    </body>
    </html>
    </form>
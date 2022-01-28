<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div class="container">

        <h2 style="text-align: center;">Sign In</h2>
        <br><br>
        <div class="col-lg-12 " id="one">
            <form  action="sample12"  method="post">
                <div class="row">
                    <div class=" col-md-6">
                        <div class="form-group">
                            <input type="text" name="first_name" id="first_name" class="form-control"
                                placeholder="First Name" required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="email" name="email" id="email" class="form-control"
                                placeholder="Email Address"required>
                        </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="number" name="number" id="number" class="form-control"
                                    placeholder="Enter your phone number"required>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class=" col-md-6">
                            <div class="form-group">
                                <input type="password" name="password" id="password" class="form-control"
                                    placeholder="Password" required>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div>
                        
                 <!--    <a href="index.html" value="Register" class="btn btn-dark btn-block"> Register</a> -->
                    <button type="submit">Register</button>
                    </div>
                    </div>
                    <br><br>

            </form>
        </div>


    </div>




</body>
</html>
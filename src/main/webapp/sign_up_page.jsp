<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up page</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <form action="RegisterAction.jsp" class="form">
            <h2>REGISTER HERE</h2>
            <input id="rname" type="text" name="name" class="box" placeholder="Enter Your Name">
            <input id="rmail" type="email" name="email" class="box" placeholder="Enter Your Email">
            <input id="phone" type="text" name="phone" class="box" placeholder="Enter Your Contact">
            <input id="password" type="password" name="password" class="box" placeholder="Enter Your Password">
            <input id="signuphandler" type="submit" class="btn" value="REGISTER">
        </form>
        <div class="side">
            <img src="assets/ecommerce_login_image.png" alt="ecommerce img">
        </div>
    </div>
</body>
</html>
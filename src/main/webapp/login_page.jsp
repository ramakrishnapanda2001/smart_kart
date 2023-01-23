<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login_page</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="container">
        <form action="LoginAction.jsp" class="form">
            <h2>LOG IN</h2>
            <input type="email" name="email" class="box" placeholder="Email">
            <input type="password" name="password" class="box" placeholder="Password">
            <input type="submit" class="btn" value="LOG IN">
            <a href="#">Forget Password?</a>
            <p>Don't have an account? <a href="sign_up_page.jsp">Click here</a></p>
        </form>
        <div class="side">
            <img src="assets/ecommerce_login_image.png" alt="ecommerce img">
        </div>
    </div>
</body>

</html>
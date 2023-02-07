<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="stylesheet" href="nav.css">
</head>
<body>
    <nav class="navbar">
        <div class="nav">
            <img src="assets/img/logo-no-background.png" class="brand-logo" alt="">
            <div class="nav-items">
                <div class="search">
                    <input type="text" class="search-box" id="search-cards" onkeyup="showCards()" name="search" placeholder="search products here">
                    <button class="search-btn">search</button>
                </div>
                <a href="#"><img src="assets/img/user.png" alt="user logo"></a>
                <a href="#"><img src="assets/img/my-wishlist.png" alt="wishlist img"></a>
                <a href="cart.jsp"><img src="assets/img/cart.png" alt="cart img"></a>
            </div>
        </div>
        </nav>
</body>
</html>
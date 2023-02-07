<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products Listing Page</title>
    <!-- Stylesheet -->
    <link rel="stylesheet" href="product_details_page.css">
    <!---Boxicons CDN Setup for icons-->
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
<%if(request.getParameter("msg") != null) {%>
<script>
	alert("Product Added to Cart !");
</script>
<% }else{
	
}

Integer p_id = Integer.parseInt(request.getParameter("p_id"));
class Product{
	String title = null;
	int price = 0;
	String description = null;
	String img_url = null;
	int p_id = 0;
	
}
Product p = new Product();
p.p_id = p_id;
try{
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/smart_kart","root","");
	if(con != null){
		System.out.println("Connection Sucessful !!");
	}
	
	PreparedStatement pst = con.prepareStatement("Select * from products Where product_id = ?");
    pst.setInt(1,p_id);
    ResultSet rs = pst.executeQuery();
    while(rs.next()){
        p.title = rs.getString("product_title");
        p.price = rs.getInt("product_price");
        p.description = rs.getString("product_description");
        p.img_url = rs.getString("product_img");
        
    }
}
catch(Exception e){
	e.printStackTrace();
}
%>


    <div class="container">
        <div class="single-product">
            <div class="row">
                <div class="col-6">
                    <div class="product-image">
                        <div class="product-image-main">
                            <img src="<%=p.img_url %>" alt="" id="product-main-image">
                        </div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="breadcrumb">
                        <span><a href="#">Product</a></span>
                        <span class="active">Watch</span>
                    </div>

                    <div class="product">
                        <div class="product-title">
                            <h2><%=p.title %></h2>
                        </div>
                        <div class="product-rating">
                            <span><i class="bx bxs-star"></i></span>
                            <span><i class="bx bxs-star"></i></span>
                            <span><i class="bx bxs-star"></i></span>
                            <span><i class="bx bxs-star"></i></span>
                            <span><i class="bx bxs-star"></i></span>
                            <span class="review">(47 Review)</span>
                        </div>
                        <div class="product-price">
                            <span class="offer-price"><i class='bx bx-rupee'></i><%=p.price %></span>
                            <span class="sale-price">50000</span>
                        </div>

                        <div class="product-details">
                            <h3>Description</h3>
                            <p><%=p.description %></p>
                        </div>

                        <div class="product-color">
                            <h4>Color</h4>
                            <div class="color-layout">
                                <input type="radio" name="color"  value="black" class="color-input">
                                <label for="black" class="black"></label>
                                <input type="radio" name="color"  value="red" class="color-input">
                                <label for="red" class="red"></label>

                                <input type="radio" name="color"  value="blue" class="color-input">
                                <label for="blue" class="blue"></label>
                            </div>
                        </div>
                        <span class="divider"></span>

                        <div class="product-btn-group">
                            <div class="button buy-now"><i class='bx bxs-zap' ></i> Buy Now</div>
                            <a href="addToCart.jsp?p_id=<%=p.p_id%>"><div class="button add-cart"><i class='bx bxs-cart' >Add to Cart</i> </div></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
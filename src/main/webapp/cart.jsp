<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="cart.css">
<title>Insert title here</title>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
</head>
<body>

	<h1>Shopping Cart</h1>

<div class="shopping-cart">

  <div class="column-labels">
    <label class="product-image">Image</label>
    <label class="product-details">Product</label>
    <label class="product-price">Price</label>
    <label class="product-quantity">Quantity</label>
    <label class="product-removal">Remove</label>
    <label class="product-line-price">Total</label>
  </div>
  
  
  
<% 
class Product{
	int p_id = 0;
	int price = 0;
	int quantity = 0;
	int totalOrderValue = 0;
	
}
Product p = new Product();

try{
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/smart_kart","root","");
	if(con != null){
		System.out.println("Connection Sucessful !!");
	}
	
	PreparedStatement pst1 = con.prepareStatement("Select * from cart where user_id = ?");
    pst1.setString(1,(String)session.getAttribute("email"));
    ResultSet rs1 = pst1.executeQuery();
    
    
    
    while(rs1.next()){
    	PreparedStatement pst2 = con.prepareStatement("Select * from products where product_id = ?");
        pst2.setInt(1,rs1.getInt("product_id"));
        ResultSet rs2 = pst2.executeQuery();
    	while(rs2.next()){
    		p.totalOrderValue += Integer.parseInt(rs1.getString("total_price"));
    %>
       	<div class="product">
		    <div class="product-image">
		      <img src="<%out.print(rs2.getString("product_img")); %>">
		    </div>
		    <div class="product-details">
		      <p class="product-description"><%=rs2.getString("product_title")%></p>
		    </div>
		    <div class="product-price"><i class='bx bx-rupee'></i><%=rs1.getInt("product_price")%></div>
		    <div class="product-quantity">
		      <input type="number" value="<%out.print(rs1.getString("quantity")); %>" min="1">
		    </div>
		    <div class="product-removal">
		      <button class="remove-product">
		        Remove
		      </button>
		    </div>
		    <div class="product-line-price"><i class='bx bx-rupee'></i><%=rs1.getInt("total_price")%></div>
		  </div>
  
    <%}}
   
 }catch(Exception e){
	 
 }
 %>

  <div class="totals">
    <div class="totals-item">
      <label>Shipping</label>
      <div class="totals-value" id="cart-shipping"><i class='bx bx-rupee'></i>15.00</div>
    </div>
    <div class="totals-item totals-item-total">
      <label>Grand Total</label>
      <div class="totals-value" id="cart-total"><i class='bx bx-rupee'></i><%=p.totalOrderValue+15.00 %></div>
    </div>
  </div> 
      
      <button class="checkout">Checkout</button>

</div>

</body>
<script src="cart.js"></script>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="cart.css">
<title>Insert title here</title>
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
    %>
       	<div class="product">
		    <div class="product-image">
		      <img src="<%out.print(rs2.getString("product_img")); %>">
		    </div>
		    <div class="product-details">
		      <div class="product-title"><%=rs2.getString("product_title")%></div>
		      <p class="product-description"><%=rs2.getString("product_title")%></p>
		    </div>
		    <div class="product-price"><%=rs1.getInt("product_price")%></div>
		    <div class="product-quantity">
		      <input type="number" value="<%out.print(rs1.getString("quantity")); %>" min="1">
		    </div>
		    <div class="product-removal">
		      <button class="remove-product">
		        Remove
		      </button>
		    </div>
		    <div class="product-line-price"><%=rs1.getInt("total_price")%></div>
		  </div>
  
    <%}}
   
 }catch(Exception e){
	 
 }
 %>

		

  

 <!--  <div class="product">
    <div class="product-image">
      <img src="https://s.cdpn.io/3/large-NutroNaturalChoiceAdultLambMealandRiceDryDogFood.png">
    </div>
    <div class="product-details">
      <div class="product-title">Nutro™ Adult Lamb and Rice Dog Food</div>
      <p class="product-description">Who doesn't like lamb and rice? We've all hit the halal cart at 3am while quasi-blackout after a night of binge drinking in Manhattan. Now it's your dog's turn!</p>
    </div>
    <div class="product-price">45.99</div>
    <div class="product-quantity">
      <input type="number" value="1" min="1">
    </div>
    <div class="product-removal">
      <button class="remove-product">
        Remove
      </button>
    </div>
    <div class="product-line-price">45.99</div>
  </div>

  <div class="totals">
    <div class="totals-item">
      <label>Subtotal</label>
      <div class="totals-value" id="cart-subtotal">71.97</div>
    </div>
    <div class="totals-item">
      <label>Tax (5%)</label>
      <div class="totals-value" id="cart-tax">3.60</div>
    </div>
    <div class="totals-item">
      <label>Shipping</label>
      <div class="totals-value" id="cart-shipping">15.00</div>
    </div>
    <div class="totals-item totals-item-total">
      <label>Grand Total</label>
      <div class="totals-value" id="cart-total">90.57</div>
    </div>
  </div> -->
      
      <button class="checkout">Checkout</button>

</div>

</body>
<script src="cart.js"></script>
</html>
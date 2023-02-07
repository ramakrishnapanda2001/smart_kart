<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%=(String)session.getAttribute("email")%>
<%

class Product{
	int p_id = 0;
	int price = 0;
	int quantity = 0;
	
}
Product p = new Product();

 p.p_id = Integer.parseInt(request.getParameter("p_id"));
	

try{
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/smart_kart","root","");
	if(con != null){
		System.out.println("Connection Sucessful !!");
	}
	
	PreparedStatement pst = con.prepareStatement("Select * from products Where product_id = ?");
    pst.setInt(1,p.p_id);
    ResultSet rs = pst.executeQuery();
    while(rs.next()){
       p.price = rs.getInt("product_price");
        
    }
    
    
    PreparedStatement check_cart = con.prepareStatement("select * from cart where product_id = ?");
	check_cart.setInt(1,p.p_id);
	ResultSet rs1 = check_cart.executeQuery();
	if(rs1.next()){
		p.quantity = rs1.getInt("quantity");
		p.quantity = p.quantity+1;
		PreparedStatement increase_quantity = con.prepareStatement("Update cart set quantity = ?,total_price = ? where product_id = ?");
		increase_quantity.setInt(1,p.quantity);
		increase_quantity.setInt(2,p.price * p.quantity);
		increase_quantity.setInt(3,p.p_id);
		if(increase_quantity.execute()){
			System.out.println("Quantity Increse Failed !");
		}else{
			System.out.println("Quantity Increase Sustessfull @!");
			response.sendRedirect("product_details_page.jsp?p_id="+p.p_id+"&msg=success");
		}
	}else{
		PreparedStatement add_to_cart = con.prepareStatement("insert into cart(user_id,product_id,product_price,quantity,total_price) values(?,?,?,?,?)");
		p.quantity = 1;
		add_to_cart.setString(1,(String)session.getAttribute("email"));
		add_to_cart.setInt(2,p.p_id);
		add_to_cart.setInt(3,p.price);
		add_to_cart.setInt(4,p.quantity);
		add_to_cart.setInt(5,p.price * p.quantity);
		if(add_to_cart.execute())
			System.out.println("Product Add FAiled !!!");
		else{
			System.out.println("Product Added !!!");
			response.sendRedirect("product_details_page.jsp?p_id="+p.p_id+"&msg=success");
		}
	}
	
	
	
}
catch(Exception e){
	e.printStackTrace();
}

	



%>

</body>
</html>
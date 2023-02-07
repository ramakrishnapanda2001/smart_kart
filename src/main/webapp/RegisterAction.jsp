
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%

String name = request.getParameter("name");
String email = request.getParameter("email");
String mobileNumber = request.getParameter("phone");
String password =  request.getParameter("password");

try{
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/smart_kart","root","");
	if(con != null){
		System.out.println("Connection Sucessful !!");
	}
	PreparedStatement ps = con.prepareStatement("insert into users(name,email,phone,password) values(?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, mobileNumber);
	ps.setString(4, password);
	
	ps.executeUpdate();
	response.sendRedirect("login_page.jsp?msg=valid");
}
catch(Exception e){
	
	System.out.println(e);
	response.sendRedirect("signup_page.jsp?msg=invalid");
}
%>
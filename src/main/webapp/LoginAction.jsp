<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%

String email = request.getParameter("email");
String password =  request.getParameter("password");

try{
	ResultSet rs;
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/smart_kart","root","");
	if(con != null){
		System.out.println("Connection Sucessful !!");
	}
	Statement stat = con.createStatement();
        String sql = "Select * from users Where email='" + email + "' and password='"+password+"'";
        rs = stat.executeQuery(sql);
        
        if(rs.next()){
        	
        	session.setAttribute("uid", rs.getInt("user_id"));
        	session.setAttribute("name", rs.getString("name"));
        	session.setAttribute("email", rs.getString("email"));
        	
        	response.sendRedirect("home.jsp?msg=valid");
        }
        else{
        	response.sendRedirect("login_page.jsp?msg=invalid");
        }
}
catch(Exception e){
	
	System.out.println(e);
	response.sendRedirect("login_page.jsp?msg=invalid");
}
%>
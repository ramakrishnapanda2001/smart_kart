package com.smartcart.db;

import java.sql.*;

public class MySQLConnectionProvider {
	public Connection getConnection() {  
			try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/smart_kart","root","");  
			if(con != null) {
				System.out.println("Connection Successful");
				return con;
			}else {
				System.out.println("Error connectiing to database");
			}
			 
			}catch(Exception e){ 
				System.out.println(e);
			}
			return null; 
	}

}
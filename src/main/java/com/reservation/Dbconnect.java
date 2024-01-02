package com.reservation;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbconnect {
	private static String url="jdbc:mysql://localhost:3306/fuel_and_service";
	private static String username="root";
	private static String password="1112";
	
	private static Connection con;
	
	public static Connection getConnection() {
		 try {
			 Class.forName("com.mysql.jdbc.Driver");
			 con=DriverManager.getConnection(url, username,password);
			 
		 }
		 catch(Exception e){
			 System.out.println("database connection is not success");
		 }
		 return con;
	}

}

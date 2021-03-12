package com.knr;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionClass {
	public Connection con=null;
	public Connection getConnection() throws ClassNotFoundException, SQLException {
	 
		Class.forName("com.mysql.jdbc.Driver");
		
		    con=DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/hBReXCo0Ve","hBReXCo0Ve","B9eHkDCCYT");
		return con;
	}
		 
} 
	  
 

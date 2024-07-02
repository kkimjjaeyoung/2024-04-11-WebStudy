package com.sist.database;

import java.util.*;
import java.sql.*;

public class DataBaseConnection {
	private Connection conn;
	private final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	
	public DataBaseConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch (Exception ex) {
			// TODO: handle exception
			
		}
	}
	
	public Connection getcoConnection() {
		try {
				
			}catch (Exception ex) {
				// TODO: handle exception	
		}
		return conn;
	}
	
	public void diConnection(Connection conn, PreparedStatement ps) {
		try {
			if(ps!=null) 	ps.close();
			if(conn!=null) 	conn.close();
		}catch (Exception ex) {
			// TODO: handle exception
			
		}
	}
}

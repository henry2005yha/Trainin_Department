package com.trainingprogram.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class JDBCUtils {

	private static String jdbcURL = "jdbc:mysql://localhost:3306/StudentInformation";
	private static String jdbcUsername = "root";
	private static String jdbcPassword = "Henry@2005";

	public static Connection getConnection() {
		Connection connection = null;
		try {
//			Class.forName("com.mysql.jdbc.Driver");
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
	
}

package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
	/*
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/db58", "root", "java1234");
	*/
	
	public Connection getConnection() throws Exception {
		Class.forName("org.mariadb.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/db58", "root", "java1234");
		return conn;
	}
}

package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
	public Connection getConnection() throws Exception {
	    Class.forName("org.mariadb.jdbc.Driver");
	    Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/db58", "root", "java1234");
	    return conn;
	}
}

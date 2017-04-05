package com.youva.util;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
public class ConnectionUtil {

	private static Class class2 = Driver.class;

	public static Connection getConnection() throws Exception {
                Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/as", "root", "a");

		return con;
	}
}

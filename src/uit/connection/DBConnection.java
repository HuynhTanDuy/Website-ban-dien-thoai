package uit.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;

public class DBConnection {
	public static Connection getConnection() {
		Connection con = null;
		try {
//			String url = "jdbc:sqlserver://uit:1433;databaseName=SOF301_Assignment";
//			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//			con = DriverManager.getConnection(url, "uit", "123");
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/shop_manage";
			
			con = DriverManager.getConnection(url, "root", "Secret12345@");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	public static void main(String[] arg) {
		System.out.println(getConnection());
	}
}

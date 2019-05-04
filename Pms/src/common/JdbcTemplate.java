package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import javax.sql.DataSource;

public class JdbcTemplate {

/*	public static Connection getConnection() {
		Connection conn = null;
		DataSource  ds=null;
		
		try{
			Context ctx=new InitialContext();
			Context env=(Context)ctx.lookup("java:comp/env");
			ds=(DataSource)env.lookup("jdbc/mysql");
			conn=ds.getConnection();
		}catch(NamingException e){3
		3
		
		
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return conn;
	}*/
	
public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/jspbookdb", "root", "jspbook");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("Driver not found..! Fail...");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Driver found!!! Connection Good!!!!");
		}
		return conn;
}

	public static boolean isConnection(Connection conn) {
		boolean valid = true;
		try {
			if (conn == null || conn.isClosed())
				valid = false;
		} catch (SQLException e) {
			valid = false;
			e.printStackTrace();
		}
		return valid;
	}

	public static void commit(Connection conn) {
		if (isConnection(conn)) {
			try {
				conn.commit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public static void rollback(Connection conn) {
		if (isConnection(conn)) {
			try {
				conn.rollback();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	// Connection°´Ã¼ ´Ý±â
	public static void close(Connection conn) {
		if (isConnection(conn)) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	// Statement or PreparedStatement°´Ã¼ ´Ý±â
	public static void close(Statement stmt) {
		try {
			if (stmt != null)
				stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// ResultSet °´Ã¼ ´Ý±â
	public static void close(ResultSet rs) {
		try {
			if (rs != null)
				rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

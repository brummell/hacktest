package pulse;

import java.sql.*;

public class Dber {
	public static Connection MySQLer() {
		Connection conn = null;
		final String tableSetup = "CREATE TABLE IF NOT EXISTS monitor (id MEDIUMINT NOT NULL AUTO_INCREMENT, " +
				"time VARCHAR(40),cpuavguseperc DECIMAL(20, 10), memuseperc DECIMAL(20, 10), " +
				"driveuseperc DECIMAL(20, 10), netrxtot DECIMAL(20, 10), nettxtot DECIMAL(20, 10), " +
				"PRIMARY KEY (id));";
		final String url = "jdbc:mysql://localhost:3306/";
		final String dbName = "hackerati";
		final String driver = "com.mysql.jdbc.Driver";
		final String userName = "sqluser";
		final String password = "password";
		
		try {
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(url+dbName,userName,password);
			try {
				Statement st = conn.createStatement();
				st.executeUpdate(tableSetup);
			} catch (SQLException s) {
				s.printStackTrace();
				//System.out.println("Table already exists. Editing existing table");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;	
		}
	
	
	public static void Depositor(String tyme, double[] s, Connection conn) {
		try {
		String sql = "INSERT INTO  monitor " +
				"(id, time, cpuavguseperc, memuseperc, driveuseperc, netrxtot, nettxtot) " +
				"VALUES" +
				"(?, ?, ?, ?, ?, ?, ?)";

				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, 0);
				pstmt.setString(2, tyme);
				pstmt.setDouble(3, s[0]);
				pstmt.setDouble(4, s[1]);
				pstmt.setDouble(5, s[2]);
				pstmt.setDouble(6, s[3]);
				pstmt.setDouble(7, s[4]);
				
				pstmt.executeUpdate();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
	}	
}

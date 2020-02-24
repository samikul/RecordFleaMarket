package levykirppis.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DataAccessObject {

	protected static Connection getConnection() {

		// database connection
		Connection connection = null;

		// alkum‰‰ritykset
		String dbUsername = "xxx";
		String dbPassword = "xxx";

		// ...3306/<tietokannannimi>
		String url = "jdbc:mysql://localhost:3306/xxx";

		try {
			// ladataan ajuri
			Class.forName("org.mariadb.jdbc.Driver").newInstance();

			// connection-niminen muuttuja viittaa yhteysolioon
			connection = DriverManager.getConnection(url, dbUsername, dbPassword);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return connection;		
	}

	// sulkee statementin ja connectionin
	protected static void close(Statement stmt, Connection connection) {
		close(null, stmt, connection);
	}

	// sulkee ResultSetin, Statementin ja Connectionin 
	protected static void close(ResultSet rs, Statement stmt, Connection conn) {

		try {

			// suljetaan rs (palautettu tulostaulu),
			// mik‰li olemassa
			if (rs != null) {
				rs.close();
			}

			// suljetaan stmt (SQL-statement),
			// mik‰li olemassa
			if (conn != null) {
				stmt.close();
			}

			// suljetaan conn (yhteys),
			// mik‰li olemassa
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}


	public static void main(String[] args) {

	}

}

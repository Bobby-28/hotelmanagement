import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Database {
	private static final String URL = "jdbc:mysql://localhost:3306/institute";
    private static final String USER = "root";
    private static final String PASSWORD = "aditya(2003)";

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}

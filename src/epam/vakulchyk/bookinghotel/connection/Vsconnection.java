package epam.vakulchyk.bookinghotel.connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class Vsconnection {
    public static Connection getConnection()
            throws ClassNotFoundException, SQLException {
        // Примечание: Изменить параметры соединения соответствующе.
        String hostName = "localhost";
        String dbName = "hotelbooking";
        String userName = "root";
        String password = "pass";
        return getConnection(hostName, dbName, userName, password);
    }

    public static Connection getConnection(String hostName, String dbName,String userName,
                                           String password) throws SQLException, ClassNotFoundException {

        Class.forName("com.mysql.jdbc.Driver");
        String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;

        Connection conn = DriverManager.getConnection(connectionURL, userName,
                password);
        return conn;
    }
}

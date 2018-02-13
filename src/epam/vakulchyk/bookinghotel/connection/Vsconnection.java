package epam.vakulchyk.bookinghotel.connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class Vsconnection {
    public  Connection takeConnection()
            throws ClassNotFoundException, SQLException {

        String hostName = "localhost";
        String dbName = "bookinghotel";
        String userName = "root";
        String password = "pass";
        return makeConnection(hostName, dbName, userName, password);
    }

    public  Connection makeConnection(String hostName, String dbName,String userName,
                                           String password) throws SQLException, ClassNotFoundException {

        Class.forName("com.mysql.jdbc.Driver");
        String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;

        Connection conn = DriverManager.getConnection(connectionURL, userName,
                password);
        return conn;
    }
    public  void closeConnection(Connection connection){
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

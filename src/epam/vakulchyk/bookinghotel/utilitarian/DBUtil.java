package epam.vakulchyk.bookinghotel.utilitarian;
import epam.vakulchyk.bookinghotel.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class DBUtil {
    public String authorization(Connection conn,String login, String password) throws SQLException {

        String sql = "Select login,password from user";
        Statement statmt =null;
        statmt = conn.createStatement();
        String result = "404";
        ResultSet resSet;
        resSet = statmt.executeQuery(sql);

        while(resSet.next())
        {
            String  log = resSet.getString("login");
            String  pass = resSet.getString("password");
            String role = resSet.getString("role");
            if(log.equals(login) && pass.equals(password)) {
                cheakRole(conn,login)
            }

        }
        return result;
    }

    public boolean cheakRole(Connection connection,String login){
        String sql = "Select login from admin";
        boolean result = false;

        Statement statmt =null;
        try {
            statmt = connection.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        ResultSet resSet;
        try {
            resSet = statmt.executeQuery(sql);
            while(resSet.next())
            {
                String  log = resSet.getString("login");
                if(log.equals(login)) {
                    result = true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}

package epam.vakulchyk.bookinghotel.utilitarian;
import epam.vakulchyk.bookinghotel.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class DBUtil {
    public static User findUser(Connection conn, //
                                String userName, String password) throws SQLException {

        String sql = "Select a.User_Name, a.Password, a.Gender from User_Account a " //
                + " where a.User_Name = ? and a.password= ?";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);
        pstm.setString(2, password);
        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            User user = new User();
            user.setLogin(userName);
            user.setPassword(password);

            return user;
        }
        return null;
    }

    public static User findUser(Connection conn, String login) throws SQLException {

        String sql = "Select a.User_Name, a.Password, a.Gender from User_Account a "//
                + " where a.User_Name = ? ";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, login);

        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            String password = rs.getString("Password");
            User user = new User();
            user.setLogin(login);
            user.setPassword(password);

            return user;
        }
        return null;
    }
}

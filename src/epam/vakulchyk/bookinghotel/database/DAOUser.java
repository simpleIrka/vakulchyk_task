package epam.vakulchyk.bookinghotel.database;

import epam.vakulchyk.bookinghotel.entity.User;

import java.sql.*;

public class DAOUser extends DAO<User> {
    public DAOUser(Connection connection) {
        super(connection);
    }

    public String authorization(String login, String password) throws SQLException {

        String sql = "Select login,password from user";
        Statement statmt = null;
        statmt = connection.createStatement();
        String result = "error";
        ResultSet resSet;
        resSet = statmt.executeQuery(sql);

        while (resSet.next()) {
            String log = resSet.getString("login");
            String pass = resSet.getString("password");
            if (log.equals(login) && pass.equals(password)) {
                boolean role = false;
                role = cheakRole(login);
                if (role) {
                    result = "admin";
                } else {
                    result = "client";
                }
            }

        }
        return result;
    }

    public boolean cheakRole(String login) {
        String sql = "Select login from admin";
        boolean result = false;

        Statement statmt = null;
        try {
            statmt = connection.createStatement();
            ResultSet resSet;
            resSet = statmt.executeQuery(sql);
            while (resSet.next()) {
                String log = resSet.getString("login");
                if (log.equals(login)) {
                    result = true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public boolean create(String login,String password) {
        boolean result= false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO user (login,password) VALUES(?,?)");
            preparedStatement.setString(1,login);
            preparedStatement.setString(2,password);
            preparedStatement.executeUpdate();

            result = true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}

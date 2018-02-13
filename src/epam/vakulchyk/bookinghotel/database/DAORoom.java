package epam.vakulchyk.bookinghotel.database;

import epam.vakulchyk.bookinghotel.entity.Room;

import java.sql.*;
import java.util.ArrayList;

public class DAORoom extends DAO<Room> {

    public DAORoom(Connection connection) {
        super(connection);
    }


    public ArrayList<Room> listfreeRoom() throws SQLException {
        ArrayList<Room> list = new ArrayList<>();
        String free = "free";

        String sql = "SELECT number,number_of_seats,type_of_apartment,cost,employment FROM room where employment LIKE '" + free + "'";
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);


        while (rs.next()) {
            Room room = new Room();
            room.setNumber(rs.getInt("number"));
            room.setTypeApartment(rs.getString("type_of_apartment"));
            room.setNumberSeats(rs.getInt("number_of_seats"));
            room.setEmployment(rs.getString("employment"));
            room.setCost(rs.getInt("cost"));
            list.add(room);

        }
        return list;
    }

    public int takeCost(int number) throws SQLException {
        int cost = 0;
        String sql = "select room.cost,room.number from room where number =" + number;
        PreparedStatement preparedStatement = null;
        preparedStatement = connection.prepareStatement(sql);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            cost = resultSet.getInt("cost");
        }
        preparedStatement.executeUpdate();
        return cost;
    }

    public void makeFree(int number) throws SQLException {
        String sql = "UPDATE room SET employment=? WHERE number=?";
        PreparedStatement preparedStatement = null;
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1,"free");
        preparedStatement.setInt(2,number);
        preparedStatement.executeUpdate();

    }
    public void makeBusy(int number) throws SQLException {
        String sql = "UPDATE room SET employment=? WHERE number=?";
        PreparedStatement preparedStatement = null;
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1,"busy");
        preparedStatement.setInt(2,number);
        preparedStatement.executeUpdate();

    }
}

package epam.vakulchyk.bookinghotel.logic;

import epam.vakulchyk.bookinghotel.connection.Vsconnection;
import epam.vakulchyk.bookinghotel.database.DAORoom;
import epam.vakulchyk.bookinghotel.entity.Room;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

public class RoomList {
    public ArrayList<Room> makeListFreeRoom() {
        ArrayList<Room> list = new ArrayList<>();
        Connection connection = null;

        Vsconnection vsconnection = new Vsconnection();
        try {
            connection = vsconnection.takeConnection();

            DAORoom daoRoom = new DAORoom(connection);
            list = daoRoom.listfreeRoom();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            vsconnection.closeConnection(connection);
        }
        return list;
    }
}

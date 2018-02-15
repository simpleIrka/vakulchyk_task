package epam.vakulchyk.bookinghotel.logic;

import epam.vakulchyk.bookinghotel.connection.Vsconnection;
import epam.vakulchyk.bookinghotel.database.DAORoom;
import epam.vakulchyk.bookinghotel.entity.Room;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

public class RoomLogic {
  //  private static final Logger LOGGER = LogManager.getLogger(RoomLogic.class);

    public ArrayList<Room> makeListFreeRoom() {
        ArrayList<Room> list = new ArrayList<>();
        Connection connection = null;
        Vsconnection vsconnection = new Vsconnection();
        try {
            connection = vsconnection.takeConnection();
            DAORoom daoRoom = new DAORoom(connection);
            list = daoRoom.listfreeRoom();
      //      LOGGER.info("Admin take list of room that free at this moment");
        } catch (ClassNotFoundException e) {
      //      LOGGER.error("Cann't take connection with DB ");
        } catch (SQLException e) {
       //     LOGGER.error("Something wrong with sql query");
        } finally {
            vsconnection.closeConnection(connection);
        }
        return list;
    }
}

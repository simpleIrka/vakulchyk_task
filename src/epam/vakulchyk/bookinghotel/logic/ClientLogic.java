package epam.vakulchyk.bookinghotel.logic;

import epam.vakulchyk.bookinghotel.connection.Vsconnection;
import epam.vakulchyk.bookinghotel.database.DAOClient;

import epam.vakulchyk.bookinghotel.entity.Client;


import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class ClientLogic {
   // private static final Logger LOGGER = LogManager.getLogger(ClientLogic.class);


    public static ArrayList<Client> makeClientList(int id) {
        Vsconnection vsconnection = new Vsconnection();
        Connection connection = null;
        ArrayList<Client> list = new ArrayList<>();
        try {
            connection = vsconnection.takeConnection();
            DAOClient daoClient = new DAOClient(connection);
            list = daoClient.dataClientByID(id);
       //     LOGGER.info("Admin take list of Client");
        } catch (ClassNotFoundException e) {
       //     LOGGER.error("Cann't take connection with DB ");
        } catch (SQLException e) {
        //    LOGGER.error("Something wrong with sql query");
        } finally {
            vsconnection.closeConnection(connection);
        }
        return list;
    }

}

package epam.vakulchyk.bookinghotel.logic;

import epam.vakulchyk.bookinghotel.connection.Vsconnection;
import epam.vakulchyk.bookinghotel.database.DAOClient;

import epam.vakulchyk.bookinghotel.entity.Client;


import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

public class ClientList {
    public static ArrayList<Client> makeClientList(int id) {
        Vsconnection vsconnection = new Vsconnection();
        Connection connection = null;
        ArrayList<Client> list = new ArrayList<>();
        try {
            connection =vsconnection.takeConnection();
            DAOClient daoClient = new DAOClient(connection);
            list = daoClient.dataClientByID(id);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            vsconnection.closeConnection(connection);
        }
        return list;
    }

}

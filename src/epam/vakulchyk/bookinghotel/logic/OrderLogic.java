package epam.vakulchyk.bookinghotel.logic;

import epam.vakulchyk.bookinghotel.connection.Vsconnection;
import epam.vakulchyk.bookinghotel.database.DAOOrder;
import epam.vakulchyk.bookinghotel.entity.Order;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class OrderLogic {
    private static final Logger LOGGER = LogManager.getLogger(OrderLogic.class);

    public ArrayList<Order> makeOrderList() {
        Vsconnection vsconnection = new Vsconnection();
        ArrayList<Order> list = new ArrayList<>();
        Connection connection = null;
        try {
            connection = vsconnection.takeConnection();
            DAOOrder daoOrder = new DAOOrder(connection);
            list = daoOrder.takeAllOrder();
            LOGGER.info("Make all orders in list");
        } catch (ClassNotFoundException e) {
            LOGGER.error("Cann't take connection with DB ");
        } catch (SQLException e) {
            LOGGER.error("Something wrong with sql query");
        } finally {
            vsconnection.closeConnection(connection);
        }
        return list;
    }

    public ArrayList<Order> personOreder(long id) {
        Vsconnection vsconnection = new Vsconnection();
        ArrayList<Order> list = new ArrayList<>();
        Connection connection = null;
        try {
            connection = vsconnection.takeConnection();
            DAOOrder daoOrder = new DAOOrder(connection);
            list = daoOrder.orederClient(id);
            LOGGER.info("Got order of your person");
        } catch (ClassNotFoundException e) {
            LOGGER.error("Cann't take connection with DB ");
        } catch (SQLException e) {
            LOGGER.error("Something wrong with sql query");
        } finally {
            vsconnection.closeConnection(connection);
        }
        return list;
    }

    public boolean creatOreder(int numberSeats, int idClient, String typeApartment, int timeStay, String dateArrival) {
        Vsconnection vsconnection = new Vsconnection();
        boolean result = false;
        Connection connection = null;

        try {
            connection = vsconnection.takeConnection();
            DAOOrder daoOrder = new DAOOrder(connection);
            result = daoOrder.create(numberSeats, idClient, typeApartment, timeStay, dateArrival);
            LOGGER.info("Client creat new order");
        } catch (ClassNotFoundException e) {
            LOGGER.error("Cann't take connection with DB ");
        } catch (SQLException e) {
            LOGGER.error("Something wrong with sql query");
        } finally {
            vsconnection.closeConnection(connection);
        }
        return result;
    }
}

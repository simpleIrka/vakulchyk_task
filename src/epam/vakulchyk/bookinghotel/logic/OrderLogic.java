package epam.vakulchyk.bookinghotel.logic;

import epam.vakulchyk.bookinghotel.connection.Vsconnection;
import epam.vakulchyk.bookinghotel.database.DAOOrder;
import epam.vakulchyk.bookinghotel.entity.Order;


import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class OrderList {
    public ArrayList<Order> makeOrderList() {
        Vsconnection vsconnection = new Vsconnection();
        ArrayList<Order> list = new ArrayList<>();
        Connection connection = null;
        try {
            connection = vsconnection.takeConnection();
            DAOOrder daoOrder = new DAOOrder(connection);
            list = daoOrder.takeAllOrder();

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            vsconnection.closeConnection(connection);
        }
        return list;
    }
    public  ArrayList<Order> personOreder(long id){
        Vsconnection vsconnection = new Vsconnection();
        ArrayList<Order> list = new ArrayList<>();
        Connection connection = null;

        try {
            connection = vsconnection.takeConnection();

            DAOOrder daoOrder = new DAOOrder(connection);
            list = daoOrder.orederClient(id);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            vsconnection.closeConnection(connection);
        }
        return list;
    }
    public  boolean creatOreder(int numberSeats,int idClient,String typeApartment,int timeStay,String dateArrival){
        Vsconnection vsconnection = new Vsconnection();
        boolean result = false;
        Connection connection = null;

        try {
            connection = vsconnection.takeConnection();

            DAOOrder daoOrder = new DAOOrder(connection);
            //SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
          //  Date date = dateFormat.parse(dateArrival);
            result = daoOrder.create(numberSeats,idClient,typeApartment,timeStay,dateArrival);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }  finally {
            vsconnection.closeConnection(connection);
        }
        return result;
    }
}

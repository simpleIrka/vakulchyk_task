package epam.vakulchyk.bookinghotel.logic;

import epam.vakulchyk.bookinghotel.connection.Vsconnection;
import epam.vakulchyk.bookinghotel.database.DAOResident;
import epam.vakulchyk.bookinghotel.entity.Resident;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

public class ResidentList {
    public ArrayList<Resident> makeResidentList() {
        Vsconnection vsconnection = new Vsconnection();
        ArrayList<Resident> list = new ArrayList<>();
        Connection connection = null;

        try {
            connection = vsconnection.takeConnection();
            DAOResident daoResident = new DAOResident(connection);
            list = daoResident.takeAllResident();

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            vsconnection.closeConnection(connection);
        }
        return list;
    }
    public boolean delResident(int id) {
        Vsconnection vsconnection = new Vsconnection();
        Connection connection = null;
        boolean result = false;
        try {
            connection = vsconnection.takeConnection();
            DAOResident daoResident = new DAOResident(connection);
            result = daoResident.deleteResident(id);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            vsconnection.closeConnection(connection);
        }
        return result;
    }
}

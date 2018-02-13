package epam.vakulchyk.bookinghotel.logic;

import epam.vakulchyk.bookinghotel.connection.Vsconnection;
import epam.vakulchyk.bookinghotel.database.DAOResident;
import epam.vakulchyk.bookinghotel.entity.Resident;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

public class ResidentLogic {
    private static final Logger LOGGER = LogManager.getLogger(ResidentLogic.class);

    public ArrayList<Resident> makeResidentList() {
        Vsconnection vsconnection = new Vsconnection();
        ArrayList<Resident> list = new ArrayList<>();
        Connection connection = null;
        try {
            connection = vsconnection.takeConnection();
            DAOResident daoResident = new DAOResident(connection);
            list = daoResident.takeAllResident();
            LOGGER.info("Make all residents in list");
        } catch (ClassNotFoundException e) {
            LOGGER.error("Cann't take connection with DB ");
        } catch (SQLException e) {
            LOGGER.error("Something wrong with sql query");
        } finally {
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
            LOGGER.info("Delete resident by id");
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

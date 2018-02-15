package epam.vakulchyk.bookinghotel.command.admin;

import epam.vakulchyk.bookinghotel.command.ActionCommand;
import epam.vakulchyk.bookinghotel.command.ConfigurationManager;
import epam.vakulchyk.bookinghotel.connection.ConnectionPool;
import epam.vakulchyk.bookinghotel.database.DAOOrder;
import epam.vakulchyk.bookinghotel.database.DAOResident;
import epam.vakulchyk.bookinghotel.database.DAORoom;

import javax.servlet.http.HttpServletRequest;
import java.sql.Connection;
import java.sql.SQLException;

public class RegistrationOrderCommand implements ActionCommand {
    @Override
    public String execute(HttpServletRequest request) {
        ConnectionPool connectionPool = new ConnectionPool(3);
        Connection connection = null;
        String page = null;
        try {
            connection = connectionPool.retrieve();
           DAORoom daoRoom = new DAORoom(connection);
            DAOOrder daoOrder = new DAOOrder(connection);
            DAOResident daoResident = new DAOResident(connection);
           String roomNumber = request.getParameter("roomNum");
            String order = request.getParameter("id");
          int number = Integer.parseInt(roomNumber);
            int idOrder = Integer.parseInt(order);
            int cost=0;
            int time=0;
            boolean registrationOrder;
            cost = daoRoom.takeCost(number);
            time = daoOrder.takeTimeStay(idOrder);
            int costLeaving = cost*time;
            registrationOrder = daoResident.create(costLeaving,idOrder,number);
           daoRoom.changeEmployment(number,"busy");
            page= ConfigurationManager.getProperty("path.page.menuAdmin");

        }catch (SQLException e) {
            e.printStackTrace();
        }finally {
            connectionPool.putback(connection);
        }
        return page;
    }
}

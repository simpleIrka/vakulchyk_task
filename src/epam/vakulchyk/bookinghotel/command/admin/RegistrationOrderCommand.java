package epam.vakulchyk.bookinghotel.command.admin;

import epam.vakulchyk.bookinghotel.command.ActionCommand;
import epam.vakulchyk.bookinghotel.command.ConfigurationManager;
import epam.vakulchyk.bookinghotel.command.MessageManager;
import epam.vakulchyk.bookinghotel.connection.Vsconnection;
import epam.vakulchyk.bookinghotel.database.DAOOrder;
import epam.vakulchyk.bookinghotel.database.DAOResident;
import epam.vakulchyk.bookinghotel.database.DAORoom;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;

public class RegistrationOrderCommand implements ActionCommand {
    @Override
    public String execute(HttpServletRequest request) {
        Vsconnection connection = new Vsconnection();
        Vsconnection connection2 = new Vsconnection();
        Vsconnection connection3 = new Vsconnection();
        String page = null;
        try {
           DAORoom daoRoom = new DAORoom(connection.takeConnection());
            DAOOrder daoOrder = new DAOOrder(connection2.takeConnection());
            DAOResident daoResident = new DAOResident(connection3.takeConnection());
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
           daoRoom.makeBusy(number);
            page= ConfigurationManager.getProperty("path.page.menuAdmin");

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return page;
    }
}

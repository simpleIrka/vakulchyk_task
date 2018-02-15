package epam.vakulchyk.bookinghotel.command.admin;

import epam.vakulchyk.bookinghotel.command.ActionCommand;
import epam.vakulchyk.bookinghotel.connection.Vsconnection;
import epam.vakulchyk.bookinghotel.database.DAORoom;
import epam.vakulchyk.bookinghotel.logic.ResidentLogic;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;

public class DeleteResidentCommand implements ActionCommand {
    private static final String PARAM_ID = "id";
    private static final String PARAM_FREE = "free";
    private static final String PARAM_NUMBER = "number";

    @Override
    public String execute(HttpServletRequest request) {
        Vsconnection connection = new Vsconnection();
        String page = null;
        boolean result;
        int id = 0;
        int number =0;
        try {
            DAORoom daoRoom = new DAORoom(connection.takeConnection());

        ResidentCommand residentCommand = new ResidentCommand();
        ResidentLogic residentLogic = new ResidentLogic();
        id = Integer.parseInt(request.getParameter(PARAM_ID));
        number = Integer.parseInt(request.getParameter(PARAM_NUMBER));
        result = residentLogic.delResident(id);
        page = residentCommand.execute(request);
        daoRoom.changeEmployment(number,PARAM_FREE);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return page;
    }
}

package epam.vakulchyk.bookinghotel.command.admin;

import epam.vakulchyk.bookinghotel.command.ActionCommand;
import epam.vakulchyk.bookinghotel.logic.ResidentLogic;

import javax.servlet.http.HttpServletRequest;

public class DeleteResidentCommand implements ActionCommand {
    @Override
    public String execute(HttpServletRequest request) {
        String page = null;
        boolean result;
        int id = 0;
        ResidentCommand residentCommand = new ResidentCommand();
        ResidentLogic residentLogic = new ResidentLogic();
        id = Integer.parseInt(request.getParameter("id"));
        result = residentLogic.delResident(id);
        page = residentCommand.execute(request);
        return page;
    }
}

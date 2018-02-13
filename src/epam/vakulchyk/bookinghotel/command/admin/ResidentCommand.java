package epam.vakulchyk.bookinghotel.command.admin;

import epam.vakulchyk.bookinghotel.command.ActionCommand;
import epam.vakulchyk.bookinghotel.command.ConfigurationManager;
import epam.vakulchyk.bookinghotel.entity.Resident;
import epam.vakulchyk.bookinghotel.logic.ResidentLogic;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

public class ResidentCommand implements ActionCommand {

    @Override
    public String execute(HttpServletRequest request) {
        String page = null;
        String id = null;
        ArrayList<Resident> list = new ArrayList<>();
        ResidentLogic residentLogic = new ResidentLogic();
        list= residentLogic.makeResidentList();

        request.setAttribute("resident",list);

        page = ConfigurationManager.getProperty("path.page.tenants");
        return page;
    }
}

package epam.vakulchyk.bookinghotel.command.admin;

import epam.vakulchyk.bookinghotel.command.ActionCommand;
import epam.vakulchyk.bookinghotel.command.ConfigurationManager;
import epam.vakulchyk.bookinghotel.entity.Client;
import epam.vakulchyk.bookinghotel.logic.ClientLogic;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

public class InfoClientCommand implements ActionCommand {
    private static final String ID_PARAMETER = "id";
    @Override
    public String execute(HttpServletRequest request) {
        String page = null;
        int id = Integer.parseInt(request.getParameter(ID_PARAMETER));
        ArrayList<Client> list = ClientLogic.makeClientList(id);
        request.setAttribute("clientList",list);
        request.setAttribute("id",id);

        page= ConfigurationManager.getProperty("path.page.client");
        return page;
    }
}

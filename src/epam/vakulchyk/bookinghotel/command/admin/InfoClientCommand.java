package epam.vakulchyk.bookinghotel.command;

import epam.vakulchyk.bookinghotel.entity.Client;
import epam.vakulchyk.bookinghotel.list.ClientList;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

public class InfoClientCommand implements ActionCommand {
    private static final String ID_PARAMETER = "id";
    @Override
    public String execute(HttpServletRequest request) {
        String page = null;
        int id = Integer.parseInt(request.getParameter(ID_PARAMETER));
        ArrayList<Client> list = ClientList.makeClientList(id);
        request.setAttribute("clientList",list);
        request.setAttribute("id",id);

        page=ConfigurationManager.getProperty("path.page.client");
        return page;
    }
}

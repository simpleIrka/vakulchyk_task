package epam.vakulchyk.bookinghotel.command.common;

import epam.vakulchyk.bookinghotel.command.ActionCommand;
import epam.vakulchyk.bookinghotel.command.ConfigurationManager;

import javax.servlet.http.HttpServletRequest;

public class OpenCommand implements ActionCommand{
    @Override
    public String execute(HttpServletRequest request) {
        String page = null;
        String newPage = request.getParameter("page");
        String n = "path.page."+newPage;
        page = ConfigurationManager.getProperty(n);
        return page;
    }
}

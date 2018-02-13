package epam.vakulchyk.bookinghotel.command.common;

import epam.vakulchyk.bookinghotel.command.ActionCommand;
import epam.vakulchyk.bookinghotel.command.ConfigurationManager;

import javax.servlet.http.HttpServletRequest;

public class LogoutCommand implements ActionCommand {
    private static final String PARAM_NAME_LOGIN = "login";
    @Override
    public String execute(HttpServletRequest request) {
        String page = ConfigurationManager.getProperty("path.page.main");
        request.setAttribute(PARAM_NAME_LOGIN,null);

        request.getSession().invalidate();
        return page;
    }
}

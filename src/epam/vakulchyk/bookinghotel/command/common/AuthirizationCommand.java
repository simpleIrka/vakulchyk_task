package epam.vakulchyk.bookinghotel.command;

import javax.servlet.http.HttpServletRequest;

public class AuthirizationCommand implements ActionCommand {
    @Override
    public String execute(HttpServletRequest request) {
        String page = null;
        page = ConfigurationManager.getProperty("path.page.login");
        return page;
    }
}

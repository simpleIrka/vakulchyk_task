package epam.vakulchyk.bookinghotel.command;

import epam.vakulchyk.bookinghotel.connection.Vsconnection;
import epam.vakulchyk.bookinghotel.database.DAOClient;
import epam.vakulchyk.bookinghotel.database.DAOUser;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;

public class RegistrationCommand implements ActionCommand {
    private static final String PARAM_NAME_SURNAME = "surname";
    private static final String PARAM_NAME_NAME = "name";
    private static final String PARAM_NAME_PHONE = "phone";
    private static final String PARAM_NAME_PASSPORT = "passportNumber";
    private static final String PARAM_NAME_LOGIN = "login";
    private static final String PARAM_NAME_PASSWORD = "password";

    @Override
    public String execute(HttpServletRequest request) {
        boolean resultUser;
        boolean resultClient;
        String page = null; // извлечение из запроса логина и пароля
        Vsconnection connection = new Vsconnection();
        DAOUser daoUser;
        DAOClient daoClient;
        try {
            daoUser = new DAOUser(connection.takeConnection());
            daoClient = new DAOClient(connection.takeConnection());
            String surname = request.getParameter(PARAM_NAME_SURNAME);
            String name = request.getParameter(PARAM_NAME_NAME);
            String phone = request.getParameter(PARAM_NAME_PHONE);
            String passport = request.getParameter(PARAM_NAME_PASSPORT);
            String login = request.getParameter(PARAM_NAME_LOGIN);
            String password = request.getParameter(PARAM_NAME_PASSWORD);

            resultClient = daoClient.create(surname, name, passport, phone, login);
            resultUser = daoUser.create(login, password);
            if (resultClient || resultUser) {
                //меняй
                page = ConfigurationManager.getProperty("path.page.main");
            } else {
                //request.setAttribute("errorLoginPassMessage", MessageManager.getProperty("message.error"));
                page = ConfigurationManager.getProperty("path.page.login");

            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return page;
    }
}

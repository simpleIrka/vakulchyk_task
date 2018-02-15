package epam.vakulchyk.bookinghotel.command.client;

import epam.vakulchyk.bookinghotel.command.ActionCommand;
import epam.vakulchyk.bookinghotel.command.ConfigurationManager;
import epam.vakulchyk.bookinghotel.command.MessageManager;
import epam.vakulchyk.bookinghotel.connection.ConnectionPool;
import epam.vakulchyk.bookinghotel.database.DAOClient;
import epam.vakulchyk.bookinghotel.database.DAOUser;
import epam.vakulchyk.bookinghotel.entity.Client;

import javax.servlet.http.HttpServletRequest;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

public class RegistrationCommand implements ActionCommand {
    private static final String PARAM_NAME_SURNAME = "surname";
    private static final String PARAM_NAME_NAME = "name";
    private static final String PARAM_NAME_PHONE = "phone";
    private static final String PARAM_NAME_PASSPORT = "passportNumber";
    private static final String PARAM_NAME_LOGIN = "login";
    private static final String PARAM_NAME_PASSWORD = "password";
    private static final String PARAM_NAME_SECOND_PASSWORD = "secondPassword";

    @Override
    public String execute(HttpServletRequest request) {
        boolean resultUser;
        boolean resultClient;
        String page = null; // извлечение из запроса логина и пароля

        ConnectionPool connectionPool = new ConnectionPool(2);
        DAOUser daoUser;
        DAOClient daoClient;
        Connection connection = null;
        try {
            connection = connectionPool.retrieve();
            daoUser = new DAOUser(connection);
            daoClient = new DAOClient(connection);
            String surname = request.getParameter(PARAM_NAME_SURNAME);
            String name = request.getParameter(PARAM_NAME_NAME);
            int phone = Integer.parseInt(request.getParameter(PARAM_NAME_PHONE));
            String passport = request.getParameter(PARAM_NAME_PASSPORT);
            String login = request.getParameter(PARAM_NAME_LOGIN);
            String password = request.getParameter(PARAM_NAME_PASSWORD);
            String secondPassword = request.getParameter(PARAM_NAME_SECOND_PASSWORD);

            resultUser = daoUser.create(login, password);
            resultClient = daoClient.create(surname, name, passport, phone, login);
            if (resultClient || resultUser) {
                page = ConfigurationManager.getProperty("path.page.login");
            } else {
                request.setAttribute("errorLoginPassMessage", MessageManager.getProperty("message.error"));
                page = ConfigurationManager.getProperty("path.page.login");

            }

        }  catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            connectionPool.putback(connection);
        }

        return page;
    }
    private void takeData(HttpServletRequest request, String login,ConnectionPool connectionPool) {
        DAOClient daoClient;
        ArrayList<Client> list = new ArrayList<>();
        try {
            daoClient = new DAOClient(connectionPool.retrieve());
            list = daoClient.dataClient(login);
            request.setAttribute("id",list.get(0).getIdClient());
            request.setAttribute("dataAboutClient", list);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

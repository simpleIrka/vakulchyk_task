package epam.vakulchyk.bookinghotel.command.common;

import epam.vakulchyk.bookinghotel.command.ActionCommand;
import epam.vakulchyk.bookinghotel.command.ConfigurationManager;
import epam.vakulchyk.bookinghotel.command.MessageManager;
import epam.vakulchyk.bookinghotel.connection.Vsconnection;
import epam.vakulchyk.bookinghotel.database.DAOClient;
import epam.vakulchyk.bookinghotel.database.DAOUser;
import epam.vakulchyk.bookinghotel.entity.Client;
import epam.vakulchyk.bookinghotel.entity.Order;
import epam.vakulchyk.bookinghotel.logic.OrderLogic;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.ArrayList;

public class LoginCommand implements ActionCommand {
    private static final String PARAM_NAME_LOGIN = "login";
    private static final String PARAM_NAME_PASSWORD = "password";

    @Override
    public String execute(HttpServletRequest request) {
        String page = null; // извлечение из запроса логина и пароля
        Vsconnection connection = new Vsconnection();
        DAOUser daoUser = null;
        try {
            daoUser = new DAOUser(connection.takeConnection());
            String login = request.getParameter(PARAM_NAME_LOGIN);
            String pass = request.getParameter(PARAM_NAME_PASSWORD);

            String result = daoUser.authorization(login, pass);
            switch (result) {
                case "admin": {
                    page = ConfigurationManager.getProperty("path.page.menuAdmin");
                    OrderLogic orderLogic = new OrderLogic();
                    ArrayList<Order> list = orderLogic.makeOrderList();
                    request.setAttribute("orderLogic",list);

                    break;
                }
                case "client": {
                    takeData(request, login);
                    page = ConfigurationManager.getProperty("path.page.menuClient");
                    break;
                }
                case "error": {
                    request.setAttribute("errorLoginPassMessage", MessageManager.getProperty("message.loginerror"));
                    page = ConfigurationManager.getProperty("path.page.login");
                    break;
                }
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return page;
    }

    private void takeData(HttpServletRequest request, String login) {
        Client client = null;
        ArrayList<Client> list = new ArrayList<>();
        DAOClient daoClient;
        Vsconnection connection = new Vsconnection();
        try {
            daoClient = new DAOClient(connection.takeConnection());
            list = daoClient.dataClient(login);
            request.setAttribute("dataAboutClient", list);
            request.setAttribute("idPerson",list.get(0).getIdClient());
            HttpSession session= request.getSession();
            session.setAttribute("idPerson",list.get(0).getIdClient());

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }
}

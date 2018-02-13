package epam.vakulchyk.bookinghotel.command;

import epam.vakulchyk.bookinghotel.connection.Vsconnection;
import epam.vakulchyk.bookinghotel.database.DAOClient;
import epam.vakulchyk.bookinghotel.database.DAOUser;
import epam.vakulchyk.bookinghotel.entity.Client;
import epam.vakulchyk.bookinghotel.entity.Order;
import epam.vakulchyk.bookinghotel.list.OrderList;

import javax.servlet.http.HttpServletRequest;
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
                    OrderList orderList = new OrderList();
                    ArrayList<Order> list = orderList.makeOrderList();
                    request.setAttribute("orderList",list);

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
            request.setAttribute("id",list.get(0).getIdClient());

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }
}

package epam.vakulchyk.bookinghotel.command.client;

import epam.vakulchyk.bookinghotel.command.ActionCommand;
import epam.vakulchyk.bookinghotel.command.ConfigurationManager;
import epam.vakulchyk.bookinghotel.entity.Order;
import epam.vakulchyk.bookinghotel.logic.OrderLogic;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

public class ClientOrderCommand implements ActionCommand {
    final static String PARAM_NAME_ID = "id";
    @Override
    public String execute(HttpServletRequest request) {
        String page = null;
        int id = Integer.parseInt(request.getParameter(PARAM_NAME_ID));
        OrderLogic orderLogic = new OrderLogic();
        ArrayList<Order> list = new ArrayList<>();
        list = orderLogic.personOreder(id);
        request.setAttribute("personOrderList",list);
        page = ConfigurationManager.getProperty("path.page.applicationPage") ;
        return page;
    }
}

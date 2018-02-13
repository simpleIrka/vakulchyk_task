package epam.vakulchyk.bookinghotel.command;

import epam.vakulchyk.bookinghotel.entity.Order;
import epam.vakulchyk.bookinghotel.list.OrderList;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

public class ClientOrderCommand implements ActionCommand {
    final static String PARAM_NAME_ID = "id";
    @Override
    public String execute(HttpServletRequest request) {
        String page = null;
        int id = Integer.parseInt(request.getParameter(PARAM_NAME_ID));
        OrderList orderList = new OrderList();
        ArrayList<Order> list = new ArrayList<>();
        list = orderList.personOreder(id);
        request.setAttribute("personOrderList",list);
        page =ConfigurationManager.getProperty("path.page.applicationPage") ;
        return page;
    }
}

package epam.vakulchyk.bookinghotel.command.client;

import epam.vakulchyk.bookinghotel.command.ActionCommand;
import epam.vakulchyk.bookinghotel.command.ConfigurationManager;
import epam.vakulchyk.bookinghotel.command.MessageManager;
import epam.vakulchyk.bookinghotel.entity.Order;
import epam.vakulchyk.bookinghotel.logic.OrderLogic;
import epam.vakulchyk.bookinghotel.validation.Validation;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class AddOrederCommand implements ActionCommand {
    private static final Logger LOGGER = LogManager.getLogger(AddOrederCommand.class);
    /**
     * This take from jsp file all data about client's order
     * than causes dao method, that insert it to db
     * @return page for further work
     */
    @Override
    public String execute(HttpServletRequest request) {
        String page = null;
        String resultValidation = null;
        Validation validation = new Validation();
        OrderLogic orderLogic = new OrderLogic();
        HttpSession session = request.getSession();
        Order order = new Order();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        order.setIdClient((int) session.getAttribute("idPerson"));
        order.setTypeApartment(request.getParameter("typeApartment"));
        order.setNumberSeats(Integer.parseInt(request.getParameter("numberSeats")));
        order.setTimeStay(Integer.parseInt(request.getParameter("time")));
        try {
            order.setDataArrival(formatter.parse(request.getParameter("data")));
        } catch (ParseException e) {
            LOGGER.error("Something wrong with data format");
        }
        resultValidation = validation.validationOrder(order);
        //          request.setAttribute("errorPassMessage",resultValidation );
        //        page = ConfigurationManager.getProperty("path.page.addOrder");
        //        orderLogic.creatOreder(order);
        //      request.setAttribute("errorPassMessage","Your order add" );
        //    page = ConfigurationManager.getProperty("path.page.addOrder");
        if (resultValidation!=null) {
            request.setAttribute("errorPassMessage", resultValidation);
        } else {
            orderLogic.creatOreder(order);
            request.setAttribute("errorPassMessage", "Your order add");
        }
        page = ConfigurationManager.getProperty("path.page.addOrder");

        return page;
    }
}

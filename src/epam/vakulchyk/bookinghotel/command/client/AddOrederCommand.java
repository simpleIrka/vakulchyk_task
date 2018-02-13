package epam.vakulchyk.bookinghotel.command.client;

import epam.vakulchyk.bookinghotel.command.ActionCommand;
import epam.vakulchyk.bookinghotel.command.ConfigurationManager;
import epam.vakulchyk.bookinghotel.logic.OrderLogic;

import java.text.SimpleDateFormat;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class AddOrederCommand implements ActionCommand {
    @Override
    public String execute(HttpServletRequest request) {
        String page = null;
        OrderLogic orderLogic = new OrderLogic();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String typeApartment = request.getParameter("typeApartment");
        int time = Integer.parseInt(request.getParameter("time"));
        int numberSeats = Integer.parseInt(request.getParameter("numberSeats"));
        String data = request.getParameter("data");
        HttpSession session= request.getSession();
        int idClient = (int) session.getAttribute("idPerson");

            orderLogic.creatOreder(numberSeats,idClient,typeApartment,time,data);
            page = ConfigurationManager.getProperty("path.page.applicationPage");
        return page;
    }
}

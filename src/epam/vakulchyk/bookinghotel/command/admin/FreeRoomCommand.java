package epam.vakulchyk.bookinghotel.command.admin;

import epam.vakulchyk.bookinghotel.command.ActionCommand;
import epam.vakulchyk.bookinghotel.command.ConfigurationManager;
import epam.vakulchyk.bookinghotel.entity.Room;
import epam.vakulchyk.bookinghotel.logic.RoomLogic;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

public class FreeRoomCommand implements ActionCommand {
    @Override
    public String execute(HttpServletRequest request) {
        String page = null;
        String id = null;
        ArrayList<Room> list = new ArrayList<>();
        RoomLogic roomLogic = new RoomLogic();
        list= roomLogic.makeListFreeRoom();
        id = request.getParameter("id");
        request.setAttribute("idOrder",id);
        request.setAttribute("freeRoom",list);

        page = ConfigurationManager.getProperty("path.page.freeRoom");
        return page;
    }
}

package epam.vakulchyk.bookinghotel.utilitarian;

import epam.vakulchyk.bookinghotel.entity.Room;
import epam.vakulchyk.bookinghotel.list.RoomList;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

public class FreeRoomCommand implements ActionCommand {
    @Override
    public String execute(HttpServletRequest request) {
        String page = null;
        ArrayList<Room> list = new ArrayList<>();
        RoomList roomList = new RoomList();
        list= roomList.makeListFreeRoom();
        request.setAttribute("listfreeRoom",list);
        page = ConfigurationManager.getProperty("path.page.freeRoom");
        return page;
    }
}

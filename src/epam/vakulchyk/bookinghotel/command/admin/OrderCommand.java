package epam.vakulchyk.bookinghotel.command;

import javax.servlet.http.HttpServletRequest;

public class OrderCommand implements ActionCommand {
    @Override
    public String execute(HttpServletRequest request) {
       String page = null; // извлечение из запроса логина и пароля
       /*  ArrayList<Order> list = OrderList.makeOrderList();
        request.setAttribute("orderList",list);
        try {
            request.getRequestDispatcher(ConfigurationManager.getProperty("path.page.menuAdmin")).forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        page = ConfigurationManager.getProperty("path.page.menuAdmin");*/

        return page;
    }
}

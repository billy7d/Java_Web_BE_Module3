package controller;

import model.Item;
import service.IceCreamDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Dispatch;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CartServlet",urlPatterns = "/cart")
public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action= request.getParameter("action");
        if (action ==null){
            displayCart(request,response);
        } else {
            if (action.equals("order")){
                order(request,response);
            } else if (action.equals("remove")){
                remove(request,response);
            }
        }
    }

    protected void displayCart(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("Addmin/cart.jsp");
        dispatcher.forward(request, response);
    }

    protected void order(HttpServletRequest request,HttpServletResponse response) throws IOException {
        IceCreamDAO iceCreamDAO = new IceCreamDAO();
        HttpSession session = request.getSession();
        if (session.getAttribute("cart")==null){
            List<Item> cart = new ArrayList<>();
            cart.add(new Item(iceCreamDAO.searchIceCream(Integer.parseInt(request.getParameter("id"))),1));
            session.setAttribute("cart",cart);
        } else {
            List<Item> cart = (List<Item>) session.getAttribute("cart");
            int index = isExisting(Integer.parseInt(request.getParameter("id")),cart);

            if (index == -1){
                cart.add(new Item(iceCreamDAO.searchIceCream(Integer.parseInt(request.getParameter("id"))),1));
            } else {
                Item item = cart.get(index);
                int quantity = item.getQuantity() +1;
                item.setQuantity(quantity);

            }
            session.setAttribute("cart",cart);
        }
        response.sendRedirect("/cart");
    }

    protected void remove(HttpServletRequest request,HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        int index = isExisting(Integer.parseInt(request.getParameter("id")),cart);
        cart.remove(index);
        session.setAttribute("cart",cart);
        response.sendRedirect("/cart");
    }

    private int isExisting(int id, List<Item> cart){
        for (int i =0;i< cart.size();i++){
            if (cart.get(i).getIceCream().getIceCreamId()==id){
                return i;
            }
        }
        return -1;
    }
}

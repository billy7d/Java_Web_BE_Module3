package controller;

import model.IceCream;
import service.IceCreamDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "UserServlet", urlPatterns = "/trangchu")
public class UserServlet extends HttpServlet {

    private IceCreamDAO iceCreamDAO = new IceCreamDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        try {
            switch (action){
                case "create":
                    insertIceCream(request, response);
                    break;
                case "edit":
                    updateIceCream(request,response);
                    break;
                default:
                    listIceCream(request, response);
                    break;
            }
        }catch (SQLException ex){
            ex.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        try {
            switch (action){
                case "create":
                    showNewForm(request, response);
                    break;
                case "edit":
                    showEditForm(request,response);
                    break;
                case "delete":

                    break;
                case "sort":

                    break;
                case "search":
                    break;
                default:
                    listIceCream(request, response);
                    break;
            }
        }catch (SQLException ex){
            ex.printStackTrace();
        }
    }

    private void listIceCream(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException,ServletException{
        List<IceCream> iceCreamList = iceCreamDAO.selectAllIceCream();
        request.setAttribute("listIceCream", iceCreamList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Addmin/trangchu.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("Addmin/create.jsp");
        dispatcher.forward(request, response);
    }


    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        IceCream existingIce = iceCreamDAO.searchIceCream(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Addmin/edit.jsp");
        request.setAttribute("ice", existingIce);
        dispatcher.forward(request, response);

    }

    private void insertIceCream(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int categoryId = Integer.parseInt(request.getParameter("category"));
        String name = request.getParameter("name");
        String imgSrc = request.getParameter("src");
        int discount = Integer.parseInt(request.getParameter("discount"));
        double price = Double.parseDouble(request.getParameter("price"));
        String IceCreamDescription = request.getParameter("country");
        int soldQuantity = Integer.parseInt(request.getParameter("soldQuantity"));
        IceCream newIceCream = new IceCream(categoryId, name, price,discount,IceCreamDescription,soldQuantity,imgSrc);
        iceCreamDAO.insertIceCream(newIceCream);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/create.jsp");
        dispatcher.forward(request, response);
    }

    private void updateIceCream(HttpServletRequest request,HttpServletResponse response) throws SQLException, ServletException, IOException {
        IceCream iceCream;
        int id = Integer.parseInt(request.getParameter("id"));
        int categoryId = Integer.parseInt(request.getParameter("category"));
        String name = request.getParameter("name");
        String imgSrc  = request.getParameter("src");
        int discount = Integer.parseInt(request.getParameter("discount"));
        double price = Double.parseDouble("price");
        String description = request.getParameter("description");
        int soldQuantity = Integer.parseInt(request.getParameter("soldQuantity"));

        iceCream = new IceCream(categoryId,name,price,discount,description,soldQuantity,imgSrc);
        iceCreamDAO.updateIceCream(iceCream);

        RequestDispatcher dispatcher  = request.getRequestDispatcher("Addmin/edit.jsp");
        dispatcher.forward(request, response);

    }







}

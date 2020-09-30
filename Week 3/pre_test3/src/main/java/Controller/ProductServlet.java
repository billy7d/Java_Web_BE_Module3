package Controller;

import Model.IFProduct;
import Model.IFProductDAO;
import Model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ProductServlet",urlPatterns = "/index")
public class ProductServlet extends HttpServlet {
    IFProduct ifProduct = new IFProduct();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action){
            case "create":
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action){
            case "create":
                break;
            default:
                showListProduct(request,response);
                break;
        }
    }

    private void showListProduct(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Product> products;
        products = ifProduct.getAllProducts();
        request.setAttribute("listProduct",products);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/index.jsp");
        dispatcher.forward(request, response);
    }




}

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = "/products")
public class Servlet extends HttpServlet {
   private ProductImplementClass products1 = new ProductImplementClass();
    int id =4;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
       if(action == null){
            action = "";
        }

        switch (action) {
            case "add":
                addProduct(request, response);
                break;
            case "edit":
                editProduct(request,response);
                break;
            case "delete":
                break;
            default:
                listProduct(request, response);
                break;

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action) {
            case "add":
                showAddForm(request,response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                break;
            case "view":
                break;
            default:
                listProduct(request, response);
                break;
        }
    }

    private void listProduct(HttpServletRequest request, HttpServletResponse response) {
        ArrayList<Product> products = products1.showAll();
        request.setAttribute("products", products);
        RequestDispatcher dispatcher = request.getRequestDispatcher("list.jsp");

        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showAddForm(HttpServletRequest request, HttpServletResponse response){
        RequestDispatcher dispatcher = request.getRequestDispatcher("add.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addProduct(HttpServletRequest request,HttpServletResponse response) {
        String name = request.getParameter("name");
        String brand = request.getParameter("brand");
        int price = Integer.parseInt(request.getParameter("price"));
        String description = request.getParameter("description");

        Product newProduct = new Product(id, name, brand, price, description);
        products1.addProduct(newProduct);

        id++;

        RequestDispatcher dispatcher = request.getRequestDispatcher("add.jsp");

        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void showEditForm(HttpServletRequest request,HttpServletResponse reponse){
            int id = Integer.parseInt(request.getParameter("id"));
            Product product = products1.getProductById(id);
            RequestDispatcher dispatcher;

            if (product ==null){
                dispatcher = request.getRequestDispatcher("error.jsp");
            } else {
                request.setAttribute("product",product);
                dispatcher = request.getRequestDispatcher("edit.jsp");
            }
            try{
                dispatcher.forward(request,reponse);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
    }
    private void editProduct(HttpServletRequest request,HttpServletResponse response){
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String brand = request.getParameter("brand");
        int price =  Integer.parseInt(request.getParameter("price"));
        String description = request.getParameter("description");

        Product product = products1.getProductById(id);

        RequestDispatcher dispatcher;

        if (product ==null){
            dispatcher = request.getRequestDispatcher("error.jsp");
        } else{
            product.setName(name);
            product.setBrand(brand);
            product.setPrice(price);
            product.setDescription(description);
            products1.updateProduct(id,product);
            request.setAttribute("product",product);
            dispatcher = request.getRequestDispatcher("edit.jsp");
        }
        try{
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}




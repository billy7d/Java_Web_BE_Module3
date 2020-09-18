import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/cus")
public class Servlethienthidskhach extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> arrayList = getCustomerList();
        request.setAttribute("arrayList1",arrayList);
        RequestDispatcher res = request.getRequestDispatcher("index.jsp");
        res.forward(request, response);
    }

    private List<Customer> getCustomerList(){
        ArrayList<Customer> arrayList = new ArrayList<>();

        Customer customer1 = new Customer("A", "1/1/1990", "Ha noi", "1234");
        Customer customer2 = new Customer("A", "1/1/1990", "Ha noi", "1234");
        Customer customer3 = new Customer("A", "1/1/1990", "Ha noi", "1234");
        Customer customer4 = new Customer("A", "1/1/1990", "Ha noi", "1234");

        arrayList.add(customer1);
        arrayList.add(customer2);
        arrayList.add(customer3);
        arrayList.add(customer4);
        return arrayList;
    }
}

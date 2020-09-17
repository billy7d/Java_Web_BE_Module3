import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("")
public class ServletProductDiscount extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter printWriter = response.getWriter();

        String productName = request.getParameter("product");
        double discountAmount = (Double.parseDouble(request.getParameter("discountPer")))/100;
        double price = Double.parseDouble(request.getParameter("price"));
        double discountPrice = price*discountAmount*0.01;

        printWriter.println("Product: " + productName);
        printWriter.println("Discount Amount: "+ discountAmount);
        printWriter.println(discountPrice);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher responseDis = request.getRequestDispatcher("WEB-INF/index.jsp");
        responseDis.forward(request, response);
    }
}

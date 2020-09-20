import java.util.ArrayList;

public interface ProductService {

    ArrayList<Product> showAll();

    void addProduct(Product product);

    void editProduct(int id, Product product);

    void removeProduct(Product product);

    Product viewProductById(int id);

    Product findProductByName(ArrayList<Product> products,String name);



}

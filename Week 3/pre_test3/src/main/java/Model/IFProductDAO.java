package Model;

import java.util.ArrayList;

public interface IFProductDAO {

    public ArrayList<Product> getAllProducts();

    public Product getProductById(int id);

    public boolean updateProduct(Product product);

    public boolean deleteProduct(int id);
}

package Model;

import java.sql.*;
import java.util.ArrayList;
import java.util.Properties;
import java.util.concurrent.Callable;

public class IFProduct implements IFProductDAO {
    private String jdbcUrl ="jdbc:mysql://localhost:3306/pre_test3?userSSL=false";
    private String jdbcUser ="root";
    private String jdbcPassword ="hung30111995";


    public Connection getConnection(){
        Connection connection = null;

        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcUrl,jdbcUser,jdbcPassword);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return connection;
    }



    @Override
    public ArrayList<Product> getAllProducts() {
        ArrayList<Product> products = new ArrayList<>();
        String query = "{CALL select_all_product()}";
        Product product;
        try(Connection connection = getConnection();
            CallableStatement callableStatement = connection.prepareCall(query);){
            System.out.println(callableStatement);
            ResultSet resultSet = callableStatement.executeQuery();

            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("product_name");
                int categoryNo= resultSet.getInt("category_no");
                double price = resultSet.getDouble("price");
                product = new Product(id,name,categoryNo,price);
                products.add(product);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            e.getMessage();
        }
        return products;
    }

    @Override
    public Product getProductById(int id) {
        Product product = null;
        String query = "{CALL get_product_by_id(?)}";
        try(Connection connection =getConnection();
            CallableStatement callableStatement = connection.prepareCall(query)){
            callableStatement.setInt(1,id);
            callableStatement.execute();
            ResultSet resultSet = callableStatement.getResultSet();

            while (resultSet.next()){
                String name = resultSet.getString("product_name");
                int categoryNo = resultSet.getInt("category_no");
                double price = resultSet.getDouble("price");
                product = new Product(id,name,categoryNo,price);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            e.getMessage();
        }
        return product;

    }

    @Override
    public boolean updateProduct(Product product) {
        boolean isUpdated = false;
        String query="{CALL update_product(?,?,?,?)}";
        try (Connection connection = getConnection();CallableStatement callableStatement = connection.prepareCall(query)){
            callableStatement.setInt(1,product.getId());
            callableStatement.setString(2,product.getProductName());
            callableStatement.setInt(3,product.getCategoryNo());
            callableStatement.setDouble(4,product.getPrice());
            isUpdated = callableStatement.executeUpdate() > 0;


        } catch (SQLException e) {
            e.printStackTrace();
            e.getMessage();
        }
        return isUpdated;
    }

    @Override
    public boolean deleteProduct(int id) {
        boolean isDeleted = false;
        String query = "{CALL delete_product(?)}";
        try (Connection connection = getConnection(); CallableStatement callableStatement = connection.prepareCall(query)) {
            callableStatement.setInt(1,id);
            isDeleted = callableStatement.executeUpdate() > 0;



        } catch (SQLException e) {
            e.printStackTrace();
            e.getMessage();
        }

        return isDeleted;

    }
}

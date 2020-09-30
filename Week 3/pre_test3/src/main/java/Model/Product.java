package Model;

public class Product {
    private String productName;
    private int id;
    private int categoryNo;
    private double price;

    public Product(){}

    public Product(int id,String productName, int categoryNo, double price){
        this.productName = productName;
        this.id = id;
        this.categoryNo = categoryNo;
        this.price =price;

    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategoryNo() {
        return categoryNo;
    }

    public void setCategoryNo(int categoryNo) {
        this.categoryNo = categoryNo;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}

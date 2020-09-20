import java.util.ArrayList;

public class ProductImplementClass implements ProductService {
    private static ArrayList<Product> arrayList;

    static {
        arrayList.add(1,new Product(1,"Iphone","Apple",250,"none"));
        arrayList.add(2,new Product(2,"Note 9","Samsung",300,"none"));
        arrayList.add(3,new Product(3,"Redmi","Xiaomi",100,"none"));
        arrayList.add(4,new Product(4,"N1102","Nokia",500,"none"));


    }


    @Override
    public ArrayList<Product> showAll() {
        return (ArrayList<Product>) arrayList.clone();
    }

    @Override
    public void addProduct(Product product) {
        arrayList.add(product);
    }

    @Override
    public void editProduct(int id, Product product) {
      arrayList.add(id, product);
    }

    @Override
    public void removeProduct(Product product) {
        arrayList.remove(product);
    }

    @Override
    public Product viewProductById(int id) {
       return arrayList.get(id);
    }

    @Override
    public Product findProductByName(ArrayList<Product> products,String name) {
        for (Product product:products){
            if (product.getName().equals(name)){
                return product;
            }
        }
        return null;
    }
}

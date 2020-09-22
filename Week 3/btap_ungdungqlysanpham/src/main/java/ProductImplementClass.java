import java.util.ArrayList;

public class ProductImplementClass implements ProductService {
    private static ArrayList<Product> arrayList = new ArrayList<>();


    static {
        arrayList.add(new Product(0,"Iphone","Apple",250,"none"));
        arrayList.add(new Product(1,"Note 9","Samsung",300,"none"));
        arrayList.add(new Product(2,"Redmi","Xiaomi",100,"none"));
        arrayList.add(new Product(3,"N1102","Nokia",500,"none"));
    }


    @Override
    public ArrayList<Product> showAll() {
        return arrayList;
    }

    @Override
    public void addProduct(Product product) {
        arrayList.add(product);
    }


    @Override
    public void removeProduct(Product product) {
        arrayList.remove(product);
    }

    @Override
    public Product getProductById(int id) {
       return arrayList.get(id);
    }

    @Override
    public void updateProduct(int id, Product product) {
        for (Product product1:arrayList){
            if (product1.getId() == id){
                product1 = product;
                return;
            }
        }

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

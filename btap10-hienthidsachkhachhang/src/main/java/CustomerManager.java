import java.util.ArrayList;

public class CustomerManager {

    public static void main(String[] args) {


        ArrayList<Customer> arrayList = new ArrayList<>();

        Customer customer1 = new Customer("A", "1/1/1990", "Ha noi", "1234");
        Customer customer2 = new Customer("A", "1/1/1990", "Ha noi", "1234");
        Customer customer3 = new Customer("A", "1/1/1990", "Ha noi", "1234");
        Customer customer4 = new Customer("A", "1/1/1990", "Ha noi", "1234");

        arrayList.add(customer1);
        arrayList.add(customer2);
        arrayList.add(customer3);
        arrayList.add(customer4);
    }
}

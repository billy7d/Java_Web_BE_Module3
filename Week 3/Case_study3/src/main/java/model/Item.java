package model;

public class Item {
    private int itemId;
    private int orderId;
    private int iceCreamId;
    private int quality;
    private int price;

    public Item(){
    }

    public Item(int orderId, int iceCreamId, int quality){
        this.orderId = orderId;
        this.iceCreamId = iceCreamId;
        this.quality = quality;
    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getIceCreamId() {
        return iceCreamId;
    }

    public void setIceCreamId(int iceCreamId) {
        this.iceCreamId = iceCreamId;
    }

    public int getQuality() {
        return quality;
    }

    public void setQuality(int quality) {
        this.quality = quality;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}

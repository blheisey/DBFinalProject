package App.Domain;



public class Buyer {
    private int BuyerId;
    private String name;

    //getters and setters

    //getters
    public int getBuyerID() {
        return BuyerId;
    }

    public String getName() {
        return name;
    }

    //setters

    public void setBuyerID(int buyerID) {
        this.BuyerId = buyerID;
    }

    public void setName(String name) {
        this.name = name;
    }

}

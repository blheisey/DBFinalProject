package App.Domain;



public class Buyer {
    private int buyerID;
    private String name;

    //getters and setters

    //getters
    public int getBuyerID() {
        return buyerID;
    }

    public String getName() {
        return name;
    }

    //setters

    public void setBuyerID(int buyerID) {
        this.buyerID = buyerID;
    }

    public void setName(String name) {
        this.name = name;
    }

}

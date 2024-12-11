package App.Domain;

public class House {
    private int houseID;
    private int basement;
    private int garage;
    private int bedrooms;
    private float bathrooms;
    private int stories;
    private int yearBuilt;
    private float squareFootage;

    //getters and setters

    //getters

    public int getHouseID() {
        return houseID;
    }

    public int getBasement() {
        return basement;
    }

    public int getGarage() {
        return garage;
    }

    public int getBedrooms() {
        return bedrooms;
    }

    public float getBathrooms() {
        return bathrooms;
    }

    public int getStories() {
        return stories;
    }

    public int getYearBuilt() {
        return yearBuilt;
    }

    public float getSquareFootage() {
        return squareFootage;
    }

    //setters

    public void setHouseID(int houseID) {
        this.houseID = houseID;
    }

    public void setBasement(int basement) {
        this.basement = basement;
    }

    public void setGarage(int garage) {
        this.garage = garage;
    }

    public void setBedrooms(int bedrooms) {
        this.bedrooms = bedrooms;
    }

    public void setBathrooms(float bathrooms) {
        this.bathrooms = bathrooms;
    }

    public void setStories(int stories) {
        this.stories = stories;
    }

    public void setYearBuilt(int yearBuilt) {
        this.yearBuilt = yearBuilt;
    }

    public void setSquareFootage(float squareFootage) {
        this.squareFootage = squareFootage;
    }
}

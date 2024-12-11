package App.Domain;

public class Preference {
    private int preferenceID;
    private int buyerID;
    private String type;
    private String yesOrNo;
    private float value;
    private float min;
    private float max;

    //getters and setters

    //getters

    public int getPreferenceID() {
        return preferenceID;
    }

    public int getBuyerID() {
        return buyerID;
    }

    public String getType() {
        return type;
    }

    public String getYesOrNo() {
        return yesOrNo;
    }

    public float getValue() {
        return value;
    }

    public float getMin() {
        return min;
    }

    public float getMax() {
        return max;
    }

    //setters

    public void setPreferenceID(int preferenceID) {
        this.preferenceID = preferenceID;
    }

    public void setBuyerID(int buyerID) {
        this.buyerID = buyerID;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setYesOrNo(String yesOrNo) {
        this.yesOrNo = yesOrNo;
    }

    public void setValue(float value) {
        this.value = value;
    }

    public void setMin(float min) {
        this.min = min;
    }

    public void setMax(float max) {
        this.max = max;
    }
}

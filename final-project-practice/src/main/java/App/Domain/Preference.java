package App.Domain;

public class Preference {
    private int PreferenceId;
    private int BuyerId;
    private String type;
    private String yesOrNo;
    private Float value;
    private Float min;
    private Float max;

    //getters and setters

    //getters

    public int getPreferenceID() {
        return PreferenceId;
    }

    public int getBuyerID() {
        return BuyerId;
    }

    public String getType() {
        return type;
    }

    public String getYesOrNo() {
        return yesOrNo;
    }

    public Float getValue() {
        return value;
    }

    public Float getMin() {
        return min;
    }

    public Float getMax() {
        return max;
    }

    //setters

    public void setPreferenceID(int preferenceID) {
        this.PreferenceId = preferenceID;
    }

    public void setBuyerID(int buyerID) {
        this.BuyerId = buyerID;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setYesOrNo(String yesOrNo) {
        this.yesOrNo = yesOrNo;
    }

    public void setValue(Float value) {
        this.value = value;
    }

    public void setMin(Float min) {
        this.min = min;
    }

    public void setMax(Float max) {
        this.max = max;
    }
}

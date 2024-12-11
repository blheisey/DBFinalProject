package App.Domain;

public class Agent { 
    private int agentID;
    private String name;
    private String email;
    private String phoneNumber;
    private String employmentAgency;

    //getters and setters

    //getters

    public int getAgentID() {
        return agentID;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String getEmploymentAgency() {
        return employmentAgency;
    }

    //setters

    public void setAgentID(int agentID) {
        this.agentID = agentID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setEmploymentAgency(String employmentAgency) {
        this.employmentAgency = employmentAgency;
    } 
}

package App.Infrastructure;

import App.Domain.Agent;
import App.Domain.IAgentRepository;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class AgentRepository implements IAgentRepository{

    private JdbcTemplate databaseConnection;
    @Override
    public Agent create(Agent agent) {
        String sql = "INSERT INTO Agent\n" +
                "VALUES ('"
                + agent.getAgentID() + "', '"
                + agent.getName()  + "', '"
                + agent.getEmail() + "', '"
                + agent.getPhoneNumber() + "', '"
                + agent.getEmploymentAgency() + "');";
        this.databaseConnection.execute(sql);
        return agent;
    }

    @Override
    public int update(int agentID, Agent agent) {
        return 0;
    }

    public int update(int agentID, String agentName, Agent agent) {
        String sql = "UPDATE Agent SET AgentID = '" + agent.getAgentID() + "',"
                + "AgentName = '" + agent.getName() + "'," + 
                "AgentEmail = '" + agent.getEmail() + "'," + 
                "AgentPhoneNumber = '" + agent.getPhoneNumber() + "'," + 
                "AgentEmploymentAgency = '" + agent.getEmploymentAgency() + "'," + 
                "WHERE AgentID = '" + agentID + "' AND AgentName = '" + agentName +  "';";
        int rows = this.databaseConnection.update(sql);
        return rows;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }

    public boolean delete(int agentID, String agentName, Agent agent) {
        String sql = "DELETE FROM Agent" +
                " WHERE AgentID = '" + agentID + "' AND AgentName = '" + agentName + "';";
        this.databaseConnection.execute(sql);
        return true;
    }

    @Override
    public List<Agent> get(int agentID) {
        String sql = "SELECT * FROM Agent WHERE AgentID = '" + agentID + "';";
        List<Agent> agents = this.databaseConnection.query(sql, BeanPropertyRowMapper.newInstance(Agent.class));
        return agents;
    }

    @Override
    public List<Agent> get() {
        String sql = "SELECT Agent_ID as AgentId, name, email, phone_number, employment_agency FROM AGENT;";
        List<Agent> agents = this.databaseConnection.query(sql, BeanPropertyRowMapper.newInstance(Agent.class));
        return agents;
    }

    @Override
    public void setDatabaseConnection(JdbcTemplate databaseConnection) {
        this.databaseConnection = databaseConnection;
    }
}
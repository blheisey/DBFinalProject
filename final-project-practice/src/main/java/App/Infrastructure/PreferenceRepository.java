package App.Infrastructure;

import App.Domain.Preference;
import App.Domain.IPreferenceRepository;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class PreferenceRepository implements IPreferenceRepository{

    private JdbcTemplate databaseConnection;

    @Override
    public Preference create(Preference preference) {
        String sql = "INSERT INTO PREFERENCE\n" +
                "VALUES ('"
                + preference.getPreferenceID() + "', '"
                + preference.getBuyerID()  + "', '"
                + preference.getType()  + "', '"
                + preference.getYesOrNo()  + "', '"
                + preference.getValue()  + "', '"
                + preference.getMin()  + "', '"
                + preference.getMax()  + "');";
        this.databaseConnection.execute(sql);
        return preference;
    }

    @Override
    public int update(int preferenceid, Preference preference) {
        return 0;
        
    }

    public int update(int preferenceID, int buyerID, String type, String yesOrNO, int value, int min, int max, Preference preference) {
        String sql = "UPDATE PREFERENCE SET PreferenceID = '" + preference.getPreferenceID() + "',"
                + "BuyerID = '" + preference.getBuyerID() + "'," + 
                "WHERE PreferenceID = '" + preferenceID +  "';";
        int rows = this.databaseConnection.update(sql);
        return rows;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }

    public boolean delete(int preferenceID, int buyerID, String type, String yesOrNO, int value, int min, int max, Preference preference) {
        String sql = "DELETE FROM PREFERENCE" +
                " WHERE PreferenceID = '" + preferenceID + "';";
        this.databaseConnection.execute(sql);
        return true;
    }

    
    @Override
    public List<Preference> get(int id) {
        String sql = "SELECT * FROM PREFERENCE WHERE BuyerId = '" + id + "';";
        List<Preference> preferences = this.databaseConnection.query(sql, BeanPropertyRowMapper.newInstance(Preference.class));
        return preferences;
    }

    @Override
    public List<Preference> get() {
        String sql = "SELECT Preference_ID as PreferenceId, Buyer_ID as BuyerId, type, Yes_or_no as yesOrNo, value, min, max FROM PREFERENCE;";
        List<Preference> preferences = this.databaseConnection.query(sql, BeanPropertyRowMapper.newInstance(Preference.class));
        return preferences;
    }

    @Override
    public void setDatabaseConnection(JdbcTemplate databaseConnection) {
        this.databaseConnection = databaseConnection;
    }
}

package App.Infrastructure;

import App.Domain.Buyer;
import App.Domain.IBuyerRepository;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class BuyerRepository implements IBuyerRepository{

    private JdbcTemplate databaseConnection;

    @Override
    public Buyer create(Buyer buyer) {
        String sql = "INSERT INTO BUYER\n" +
                "VALUES ('"
                + buyer.getBuyerID() + "', '"
                + buyer.getName()  + "');";
        this.databaseConnection.execute(sql);
        return buyer;
    }

    @Override
    public int update(int buyerID, Buyer buyer) {
        return 0;
    }

    
    public int update(int buyerID, String buyerName, Buyer buyer) {
        String sql = "UPDATE BUYER SET BuyerID = '" + buyer.getBuyerID() + "',"
                + "BuyerName = '" + buyer.getName() + "'," + 
                "WHERE BuyerID = '" + buyerID + "' AND BuyerName = '" + buyerName +  "';";
        int rows = this.databaseConnection.update(sql);
        return rows;
    }

    @Override
    public List<Buyer> get() {
        String sql = "SELECT * FROM bh176331.BUYER;";
        List<Buyer> buyers = this.databaseConnection.query(sql, BeanPropertyRowMapper.newInstance(Buyer.class));
        return buyers;  
    }

    @Override
    public void setDatabaseConnection(JdbcTemplate databaseConnection) {
        this.databaseConnection = databaseConnection;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }

    public boolean delete(int buyerID, String buyerName, Buyer buyer) {
        String sql = "DELETE FROM BUYER" +
                " WHERE BuyerID = '" + buyerID + "' AND BuyerName = '" + buyerName + "';";
        this.databaseConnection.execute(sql);
        return true;
    }

    @Override
    public List<Buyer> get(int buyerID) {
        String sql = "SELECT * FROM BUYER WHERE BuyerID = '" + buyerID + "';";
        List<Buyer> buyers = this.databaseConnection.query(sql, BeanPropertyRowMapper.newInstance(Buyer.class));
        return buyers;
    }

}
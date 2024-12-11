package App.Infrastructure;

import App.Domain.House;
import App.Domain.IHouseRepository;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class HouseRepository implements IHouseRepository{

    private JdbcTemplate databaseConnection;
    @Override
    public House create(House house) {
        String sql = "INSERT INTO House\n" +
                "VALUES ('"
                + house.getHouseID() + "', '"
                + house.getBasement()  + "', '"
                + house.getGarage()  + "', '"
                + house.getBedrooms()  + "', '"
                + house.getBathrooms()  + "', '"
                + house.getStories()  + "', '"
                + house.getYearBuilt()  + "', '"
                + house.getSquareFootage()  + "');";
        this.databaseConnection.execute(sql);
        return house;
    }

    @Override
    public int update(int houseid, House house) {
        return 0;
    }

    public int update(int houseid, int basement, int garage, int bedrooms, float bathrooms, int stories, int yearBuilt, float squareFootage, House house) {
        String sql = "UPDATE House SET HouseID = '" + house.getHouseID() + "',"
                + "Basement = '" + house.getBasement() + "',"
                + "Garage = '" + house.getGarage() + "',"
                + "Bedrooms = '" + house.getBedrooms() + "',"
                + "Bathrooms = '" + house.getBathrooms() + "',"
                + "Stories = '" + house.getStories() + "',"
                + "YearBuilt = '" + house.getYearBuilt() + "',"
                + "SquareFootage = '" + house.getSquareFootage() + "',"
                + "WHERE HouseID = '" + houseid + "' AND Basement = '" + basement + "' AND Garage = '" + garage + "' AND Bedrooms = '" + bedrooms + "' AND Bathrooms = '" + bathrooms + "' AND Stories = '" + stories + "' AND YearBuilt = '" + yearBuilt + "' AND SquareFootage = '" + squareFootage + "';";
        int rows = this.databaseConnection.update(sql);
        return rows;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }
    
    public boolean delete(int houseID, int basement, int garage, int bedrooms, float bathrooms, int stories, int yearBuilt, float squareFootage, House house) {
        String sql = "DELETE FROM House" +
                " WHERE HouseID = '" + houseID + "' AND Basement = '" + basement + "' AND Garage = '" + garage + "' AND Bedrooms = '" + bedrooms + "' AND Bathrooms = '" + bathrooms + "' AND Stories = '" + stories + "' AND YearBuilt = '" + yearBuilt + "' AND SquareFootage = '" + squareFootage + "';";
        this.databaseConnection.execute(sql);
        return true;
    }

    @Override
    public List<House> get(int id) {
        String sql = "SELECT * FROM House WHERE HouseID = '" + id + "';";
        List<House> houses = this.databaseConnection.query(sql, BeanPropertyRowMapper.newInstance(House.class));
        return houses;
    }

    @Override
    public List<House> get() {
        String sql = "SELECT * FROM House;";
        List<House> houses = this.databaseConnection.query(sql, BeanPropertyRowMapper.newInstance(House.class));
        return houses;
    }

    @Override
    public void setDatabaseConnection(JdbcTemplate databaseConnection) {
        this.databaseConnection = databaseConnection;
    }
}

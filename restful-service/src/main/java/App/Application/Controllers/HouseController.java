package App.Application.Controllers;

//import App.Domain.House;
//import App.Domain.Preference;
import App.Infrastructure.HouseRepository;
import App.Infrastructure.PreferenceRepository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

@RestController()
@RequestMapping("/House")

public class HouseController {

    @Autowired
    private JdbcTemplate databaseConnection;

    private HouseRepository houseRepository;

    public HouseController(){
        this.houseRepository = new HouseRepository();
    }

    @GetMapping("/")
    @ResponseStatus(HttpStatus.OK)
    public List<House> getHouses(@RequestParam("buyerId") Long buyerId) {
        // Retrieve the user's preferences based on their userId
        Preference preferences = preferenceRepository.findByUserId(buyerId);

        // Use preferences to filter the houses 
        return houseRepository.findByBedrooms(
            preferences.getBedrooms()
        )
    
}

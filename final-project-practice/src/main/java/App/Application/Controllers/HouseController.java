package App.Application.Controllers;

import App.Domain.House;
import App.Infrastructure.HouseRepository;


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
    public List<House> get(){ 
        this.houseRepository.setDatabaseConnection(this.databaseConnection);
        return this.houseRepository.get(); //return a list of buyers in the database
    }

    @GetMapping("/ByPreferenceID/{preferenceID}")
    @ResponseStatus(HttpStatus.OK)
    public List<House> getByPreferenceID(@PathVariable("preferenceID") int preferenceID){
        this.houseRepository.setDatabaseConnection(this.databaseConnection);
        return this.houseRepository.get(preferenceID); //return a list of houses in the database by preferenceID
    }
    
     @PostMapping("/")
    @ResponseStatus(HttpStatus.CREATED)
    public void post(@RequestBody() House house){
        this.houseRepository.setDatabaseConnection(this.databaseConnection);
        this.houseRepository.create(house); //create a new house in the database
    }

    @PutMapping("/{houseID}")
    @ResponseStatus(HttpStatus.OK)
    public void put(@PathVariable("houseID") int houseID, @RequestBody() House house){
        this.houseRepository.setDatabaseConnection(this.databaseConnection);
        this.houseRepository.update(houseID, house); //update a house in the database
    }

    @DeleteMapping("/{houseID}")
    @ResponseStatus(HttpStatus.OK)
    public void delete(@PathVariable("houseID") int houseID){
        this.houseRepository.setDatabaseConnection(this.databaseConnection);
        this.houseRepository.delete(houseID); //delete a house in the database
    }
}

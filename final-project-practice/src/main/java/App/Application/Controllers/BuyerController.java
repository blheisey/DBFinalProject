package App.Application.Controllers;

import App.Domain.Buyer;
import App.Infrastructure.BuyerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController()
@RequestMapping("/Buyer")
public class BuyerController {

    @Autowired
    private JdbcTemplate databaseConnection;

    private BuyerRepository buyerRepository;
    
    public BuyerController(){
        this.buyerRepository = new BuyerRepository();
    }

    @GetMapping("/")
    @ResponseStatus(HttpStatus.OK)
    public List<Buyer> get(){ 
        this.buyerRepository.setDatabaseConnection(this.databaseConnection);
        return this.buyerRepository.get(); //return a list of buyers in the database
    }

    @PostMapping("/")
    @ResponseStatus(HttpStatus.CREATED)
    public void post(@RequestBody() Buyer buyer){
        this.buyerRepository.setDatabaseConnection(this.databaseConnection);
        this.buyerRepository.create(buyer); //create a new buyer in the database
    }

    @PutMapping("/{buyerID}")
    @ResponseStatus(HttpStatus.OK)
    public void put(@PathVariable("buyerID") int buyerID, @RequestBody() Buyer buyer){
        this.buyerRepository.setDatabaseConnection(this.databaseConnection);
        this.buyerRepository.update(buyerID, buyer); //update a buyer in the database
    }

    @DeleteMapping("/{buyerID}") //on delete cascade is defined in the sql for ByerId in PREFERENCE
    @ResponseStatus(HttpStatus.OK)
    public void delete(@PathVariable("buyerID") int buyerID){
        this.buyerRepository.setDatabaseConnection(this.databaseConnection);
        this.buyerRepository.delete(buyerID); //delete a buyer in the database
    }

}





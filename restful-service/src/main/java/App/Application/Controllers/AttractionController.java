package App.Application.Controllers;

//import App.Domain.Buyer;
import App.Infrastructure.BuyerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

@RestController()
@RequestMapping("/Buyer")
public class AttractionController {

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

    @PutMapping("/{name}")
    @ResponseStatus(HttpStatus.OK)
    public void put(@PathVariable("name") String name, @RequestBody() Buyer buyer){
        this.buyerRepository.setDatabaseConnection(this.databaseConnection);
        this.buyerRepository.update(name, buyer); //update a buyer in the database
    }

    @DeleteMapping("/{buyerID}")
    @ResponseStatus(HttpStatus.OK)
    public void delete(@PathVariable("buyerID") String buyerID){
        this.buyerRepository.setDatabaseConnection(this.databaseConnection);
        this.buyerRepository.delete(buyerID); //delete a buyer in the database
    }
}





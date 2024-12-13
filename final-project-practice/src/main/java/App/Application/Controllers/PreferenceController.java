package App.Application.Controllers;

import App.Domain.Preference;
import App.Infrastructure.PreferenceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController()
@RequestMapping("/Preference")
public class PreferenceController {
    @Autowired
    private JdbcTemplate databaseConnection;

    private PreferenceRepository preferenceRepository;

    public PreferenceController(){
        this.preferenceRepository = new PreferenceRepository();
    }

    @GetMapping("/")
    @ResponseStatus(HttpStatus.OK)
    public List<Preference> get(){ 
        this.preferenceRepository.setDatabaseConnection(this.databaseConnection);
        return this.preferenceRepository.get(); 
    }

    @PostMapping("/")
    @ResponseStatus(HttpStatus.CREATED)
    public void post(@RequestBody() Preference preference){
        if (preference.getMin() > preference.getMax()) { //semantic constraint 
            throw new IllegalArgumentException("Min cannot be greater than max");
        }
        this.preferenceRepository.setDatabaseConnection(this.databaseConnection);
        this.preferenceRepository.create(preference); //create a new buyer in the database
    }

    @PutMapping("/{preferenceID}")
    @ResponseStatus(HttpStatus.OK)
    public void put(@PathVariable("preferenceID") int preferenceID, @RequestBody() Preference preference){
        this.preferenceRepository.setDatabaseConnection(this.databaseConnection);
        this.preferenceRepository.update(preferenceID, preference); //update a buyer in the database
    }

    @DeleteMapping("/{preferenceID}")
    @ResponseStatus(HttpStatus.OK)
    public void delete(@PathVariable("preferenceID") int preferenceID){
        this.preferenceRepository.setDatabaseConnection(this.databaseConnection);
        this.preferenceRepository.delete(preferenceID); //delete a buyer in the database
    }

}

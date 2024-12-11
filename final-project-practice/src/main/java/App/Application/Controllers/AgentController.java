package App.Application.Controllers;

import App.Domain.Agent;
import App.Infrastructure.AgentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController()
@RequestMapping("/Agent")
public class AgentController {
     @Autowired
    private JdbcTemplate databaseConnection;

    private AgentRepository agentRepository;

    public AgentController(){
        this.agentRepository = new AgentRepository();
    }

    @GetMapping("/")
    @ResponseStatus(HttpStatus.OK)
    public List<Agent> get(){ 
        this.agentRepository.setDatabaseConnection(this.databaseConnection);
        return this.agentRepository.get(); //return a list of buyers in the database
    }

    @PostMapping("/")
    @ResponseStatus(HttpStatus.CREATED)
    public void post(@RequestBody() Agent agent){
        this.agentRepository.setDatabaseConnection(this.databaseConnection);
        this.agentRepository.create(agent); //create a new buyer in the database
    }

    @PutMapping("/{agentID}")
    @ResponseStatus(HttpStatus.OK)
    public void put(@PathVariable("agentID") int agentID, @RequestBody() Agent agent){
        this.agentRepository.setDatabaseConnection(this.databaseConnection);
        this.agentRepository.update(agentID, agent); //update a buyer in the database
    }

    @DeleteMapping("/{agentID}")
    @ResponseStatus(HttpStatus.OK)
    public void delete(@PathVariable("agentID") int agentID){
        this.agentRepository.setDatabaseConnection(this.databaseConnection);
        this.agentRepository.delete(agentID); //delete a buyer in the database
    }
}
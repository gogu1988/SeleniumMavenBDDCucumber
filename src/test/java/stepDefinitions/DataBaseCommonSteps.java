package stepDefinitions;

import connectors.DatabaseConnector;
import io.cucumber.java.en.Given;

public class DataBaseCommonSteps {

    DatabaseConnector dbc;

    public DataBaseCommonSteps(DatabaseConnector dbc){
        this.dbc = dbc;
    }

    @Given("testing the background")
    public void testingTheBackground() {
        System.out.println("Hello");
    }
}

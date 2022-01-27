package stepDefinitions;

import connectors.DatabaseConnector;
import connectors.WebDriverConnector;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;

public class Hooks {

    WebDriverConnector wdc;
    DatabaseConnector dbc;

    public Scenario currentScenario;

    public Hooks(WebDriverConnector wdc, DatabaseConnector dbc) {
        this.wdc = wdc;
        this.dbc = dbc;
    }

    @Before
    public void setup(Scenario scenario) {
        this.currentScenario = scenario;
        currentScenario.log("This is the logger");
    }

    @After
    public void tearDown() {
        wdc.quit();
    }



}

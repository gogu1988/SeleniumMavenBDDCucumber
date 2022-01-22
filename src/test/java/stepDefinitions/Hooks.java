package stepDefinitions;

import connectors.WebDriverConnector;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;

public class Hooks {

    WebDriverConnector wdc;

    public Scenario currentScenario;

    public Hooks(WebDriverConnector wdc) {
        this.wdc = wdc;
    }

    @Before
    public void setup(Scenario scenario) {
        this.currentScenario = scenario;;
        System.out.println("Printing Before ");
        currentScenario.log("This is the logger");
    }

    @After
    public void tearDown() {
        wdc.quit();
    }



}

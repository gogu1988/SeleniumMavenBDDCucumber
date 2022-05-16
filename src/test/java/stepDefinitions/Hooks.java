package stepDefinitions;

import connectors.DatabaseConnector;
import connectors.WebDriverConnector;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.Then;

public class Hooks {

    WebDriverConnector wdc;
    DatabaseConnector dbc;

    public static Scenario currentScenario;

    public Hooks(WebDriverConnector wdc, DatabaseConnector dbc) {
        this.wdc = wdc;
        this.dbc = dbc;
    }

    @Before
    public void setup(Scenario scenario) {
        this.currentScenario = scenario;
        currentScenario.log("This is the logger");
    }

    @Then("user take screen shot")
    public void userTakeScreenShot(String screenShotName) {
        wdc.takeScreenshot();
        currentScenario.attach(wdc.takeScreenshot(), ".png", screenShotName);
    }

    @Then("user write the log as {string}")
    public void userWriteTheLogAs(String log) {
        currentScenario.log(log);
    }


    @After
    public void tearDown() {
        if (currentScenario.isFailed()) {
            wdc.takeScreenshot();
            currentScenario.attach(wdc.takeScreenshot(), ".png", "FailedScreenshot");
        }

    }


}

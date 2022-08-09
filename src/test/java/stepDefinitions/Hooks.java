package stepDefinitions;

import connectors.DatabaseConnector;
import connectors.MobileDriverConnector;
import connectors.WebDriverConnector;
import io.cucumber.java.After;
import io.cucumber.java.Before;

import io.cucumber.java.Scenario;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

public class Hooks {

    WebDriverConnector wdc;
    DatabaseConnector dbc;
    MobileDriverConnector mdc;
    public Scenario currentScenario;

    public Hooks(WebDriverConnector wdc, DatabaseConnector dbc, MobileDriverConnector mdc) {
        this.wdc = wdc;
        this.dbc = dbc;
        this.mdc = mdc;
    }

    @Before
    public void setup(Scenario scenario) {
        System.out.println("Before Hooks");
        this.currentScenario = scenario;
        currentScenario.log("This is the logger");
    }

    @Then("user take screen shot as {string}")
    public void userTakeScreenShot(String screenShotName) {
        currentScenario.attach(wdc.takeScreenshot(), "img/png", screenShotName);
    }

    @Then("user write the log as {string}")
    public void userWriteTheLogAs(String log) {
        currentScenario.log(log);
    }


    @After
    public void tearDown() {
        System.out.println("After Hooks");
        if (currentScenario.isFailed()) {
            if (wdc.driver() != null) {
                currentScenario.attach(wdc.takeScreenshot(), "img/png", "FailedScreenshot");
                wdc.quit();
            }
            if (mdc.mobileDriver() != null) {
                currentScenario.attach(mdc.takeScreenshot(), "img/png", "FailedScreenshot");
                mdc.quit();
            }
        }


    }


}

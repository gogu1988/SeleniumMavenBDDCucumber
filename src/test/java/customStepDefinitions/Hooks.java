package customStepDefinitions;

import connectors.DatabaseConnector;
import connectors.ChromeDevToolsConnector;
import connectors.WebDriverConnector;
import io.cucumber.java.After;
import io.cucumber.java.Before;

import io.cucumber.java.Scenario;
import io.cucumber.java.en.Then;

public class Hooks {

    WebDriverConnector wdc;
    DatabaseConnector dbc;
    ChromeDevToolsConnector mdc;
    public Scenario currentScenario;

    public Hooks(WebDriverConnector wdc, DatabaseConnector dbc, ChromeDevToolsConnector mdc) {
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

    @Then("user take screen shot as {string} in Mobile")
    public void userTakeScreenShotInMobile(String screenShotName) {
        currentScenario.attach(mdc.takeScreenshot(), "img/png", screenShotName);
    }

    @Then("user write the log as {string}")
    public void userWriteTheLogAs(String log) {
        currentScenario.log(log);
    }

    @Then("Scenario Test")
    public void scenarioTest() {
        System.out.println("getStatus " + currentScenario.getStatus());
        System.out.println("getId " + currentScenario.getId());
        System.out.println("getName " + currentScenario.getName());
        System.out.println("getSourceTagNames " + currentScenario.getSourceTagNames());
        System.out.println("getLine " + currentScenario.getLine());
        System.out.println("getUri " + currentScenario.getUri());
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

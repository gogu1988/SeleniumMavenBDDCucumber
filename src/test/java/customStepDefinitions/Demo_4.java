package customStepDefinitions;

import connectors.ChromeDevToolsConnector;
import connectors.WebDriverConnector;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utils.PropertiesFileUtil;

public class Demo_4 extends TransformData{

    WebDriverConnector wdc;

    ChromeDevToolsConnector cdtc;
    PropertiesFileUtil pfu;

    Hooks hooks;

    public Demo_4(WebDriverConnector wdc, PropertiesFileUtil pfu, Hooks hooks) {
        this.wdc = wdc;
        this.pfu = pfu;
        this.hooks = hooks;
    }
    @Given("user print this {string}")
    public void userPrintThis(String arg0) {
//        transform()
        System.out.println(arg0);
    }

    @When("I search for {string}")
    public void iSearchFor(String arg0) {
        System.out.println(arg0);
    }

    @Then("I get at least <number> results")
    public void iGetAtLeastNumberResults() {

    }

    @Then("it should have {string} in search results")
    public void itShouldHaveInSearchResults(String arg0) {
    }

    @Then("print {string}")
    public void print(String arg0) {
        System.out.println(arg0);
    }

    @Given("mock the given url")
    public void mockTheGivenUrl() {
        cdtc.devTools();
    }
}

package stepDefinitions;

import connectors.WebDriverConnector;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.messages.Messages;
import org.openqa.selenium.Keys;
import org.testng.Assert;

import java.util.List;
import java.util.Map;

public class LoginSteps {

    WebDriverConnector wdc;

    public LoginSteps(WebDriverConnector wdc) {
        this.wdc = wdc;
    }

    @Given("User entered user name as {string}")
    public void userEnteredUserNameAs(String arg0) {
        wdc.click("loginPage", "gmail");
    }

    @Then("User entered password as {string}")
    public void userEnteredPasswordAs(String arg0) {
        System.out.println("User entered password");
    }

    @And("User click on login button")
    public void userClickOnLoginButton() {
        System.out.println("Click on login");
    }

    @Then("user verify element text {string}")
    public void userVerifyWelcomeMessage(String text) {
        Assert.assertEquals(WebDriverCommonSteps.actualText, text);
    }

    @Given("user open {string} browser")
    public void userOpenBrowser(String browser) {
        wdc.openBrowser(browser);
        wdc.implicitlyWait();
        wdc.windowMaximize();
        wdc.pageLoadTimeout();
        wdc.setScriptTimeout();
    }

    @And("user navigate to the google page")
    public void userNavigateToTheGooglePage() {
        wdc.get("https://www.google.com");
    }

    @Given("testing background")
    public void testingBackground() {
        System.out.println("Hellow world");
    }

    @Given("Then Print this as HashMap")
    public void then_print_this_as_hash_map(io.cucumber.datatable.DataTable dataTable) {
        Hooks.currentScenario.log(dataTable.toString());
        for (Map<String, String> personDataMap : dataTable.asMaps()) {
            Hooks.currentScenario.log(personDataMap.toString());
            Hooks.currentScenario.log(personDataMap.get("Element"));
        }
    }

    @Given("Then Print this as List of HashMap")
    public void then_print_this_as_list_of_hash_map(io.cucumber.datatable.DataTable dataTable) {
        Hooks.currentScenario.log(dataTable.toString());
        List<Map<String, String>> listOfMap = dataTable.asMaps(String.class, String.class);
        for (Map<String, String> l : listOfMap) {
            Hooks.currentScenario.log(l.toString());
            Hooks.currentScenario.log(l.get("Element"));
        }
    }

    @Given("Then Print this as List of List")
    public void then_print_this_as_list_of_list(io.cucumber.datatable.DataTable dataTable) {
        Hooks.currentScenario.log(dataTable.toString());
        List<List<String>> userList = dataTable.asLists(String.class);
        for (List<String> l : userList) {
            Hooks.currentScenario.log(l.toString());
            Hooks.currentScenario.log(l.get(0));
        }
    }

}

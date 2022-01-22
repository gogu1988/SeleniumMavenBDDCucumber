package stepDefinitions;

import connectors.WebDriverConnector;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

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

    @Then("User verify welcome message")
    public void userVerifyWelcomeMessage() {
        System.out.println("Verify welcome message");
    }

    @Given("User open {string} browser")
    public void userOpenBrowser(String browser) {
        wdc.openBrowser(browser);
    }

    @And("User navigate to the google page")
    public void userNavigateToTheGooglePage() {
        wdc.get("https://www.google.com");
    }

    public void test(){
        for (int i = 0; i < 10; i++) {
            System.out.println("hi");
            break;
        }
    }

}

package stepDefinitions;

import connectors.WebDriverConnector;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.Keys;
import org.testng.Assert;

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

}

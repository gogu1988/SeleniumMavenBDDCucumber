package stepDefinitions;

import io.cucumber.java.DefaultDataTableCellTransformer;
import io.cucumber.java.Transpose;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class Demo_4 extends TransformData{
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
}

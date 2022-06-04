package stepDefinitions;

import connectors.WebDriverConnector;
import enumPack.WebElementAttributes;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.Point;
import org.openqa.selenium.Rectangle;
import org.openqa.selenium.WebElement;

import java.util.List;

public class WebDriverCommonSteps {

    WebDriverConnector wdc;
    static String actualTagName, actualAttribute, actualText, actualCssValue;
    static boolean isSelected, isEnabled, isDisplayed;
    static List<WebElement> actualElements;
    static WebElement actualElement;
    static Point actualLocation;
    static Dimension actualSize;
    static Rectangle actualRect;

    public WebDriverCommonSteps(WebDriverConnector wdc) {
        this.wdc = wdc;
    }

    @And("user click the {string} on the {string}")
    public void userClickTheOnThe(String elementName, String page) {
        wdc.click(page, elementName);
    }

    @And("user submit {string} on the {string}")
    public void userSubmitOnThe(String elementName, String page) {
        wdc.submit(elementName, page);
    }

    @And("user sendKeys {string} in {string} on the {string}")
    public void userSendKeysInOnThe(String text, String elementName, String page) {
        wdc.sendKeys(page, elementName, text);
    }

    @And("user sendKeys below para in {string} on the {string}")
    public void userSendKeysBelowParaInOnThe(String elementName, String page, String para) {
        wdc.sendKeys(page, elementName, para);
    }

    @And("user clear {string} on the {string}")
    public void userClearOnThe(String elementName, String page) {
        wdc.clear(page, elementName);
    }

    @Then("user verify {string} isSelected on the {string}")
    public void userVerifyIsSelectedOnThe(String elementName, String page) {
        isSelected = wdc.isSelected(page, elementName);
    }

    @Then("user verify {string} isEnabled on the {string}")
    public void userVerifyIsEnabledOnThe(String elementName, String page) {
        isEnabled = wdc.isEnabled(page, elementName);
    }

    @Then("user verify {string} isDisplayed on the {string}")
    public void userVerifyIsDisplayedOnThe(String elementName, String page) {
        isDisplayed = wdc.isDisplayed(page, elementName);
    }

    @When("user get Text of {string} on {string}")
    public void userGetTextOfOnThe(String elementName, String page) {
        actualText = wdc.getText(page, elementName);
    }

    @When("user get TagName of {string} on {string}")
    public void userGetTagNameOfOnThe(String elementName, String page) {
        actualTagName = wdc.getTagName(page, elementName);
    }

    @When("user get {string} Attribute of {string} on {string}")
    public void userGetAttributeOfOnThe(String attribute, String elementName, String page) {
        actualAttribute = wdc.getAttribute(page, elementName, attribute);
    }

    @When("user find Elements with {string} of {string}")
    public void userFindElementsWithOf(String identifier, String locatorType) {
        actualElements = wdc.findElements(locatorType, identifier);
    }

    @When("user find Element with {string} of {string}")
    public void userFindElementWithOf(String identifier, String locatorType) {
        actualElement = wdc.findElement(locatorType, identifier);
    }

    @When("user get Location of {string} on {string}")
    public void userGetLocationOfOnThe(String elementName, String page) {
        actualLocation = wdc.getLocation(page, elementName);
    }

    @When("user get Size of {string} on {string}")
    public void userGetSizeOfOnThe(String elementName, String page) {
        actualSize = wdc.getSize(page, elementName);
    }

    @When("user get Rect of {string} on {string}")
    public void userGetRectOfOnThe(String elementName, String page) {
        actualRect = wdc.getRect(page, elementName);
    }

    @When("user get CssValue of {string} of {string} on {string}")
    public void userGetCssValueOfOfOnThe(String cssAttribute, String elementName, String page) {
        actualCssValue = wdc.getCssValue(page, elementName, cssAttribute);
    }

    @And("user click using Actions on {string}")
    public void userClickUsingActionsOnThe(String page) throws InterruptedException {
        wdc.actionsClick();
    }

    @And("user click the {string} using Actions on the {string}")
    public void userClickTheUsingActionsOnThe(String elementName, String page) {
        wdc.actionsClick(page, elementName);
    }

    @And("user clickAndHold using Actions on the {string}")
    public void userClickAndHoldUsingActionsOnThe(String page) {
        wdc.actionsClickAndHold();
    }

    @And("user clickAndHold the {string} using Actions on the {string}")
    public void userClickAndHoldTheUsingActionsOnThe(String elementName, String page) {
        wdc.actionsContextClick(page, elementName);
    }

    @And("user right click using Actions on the {string}")
    public void userRightClickUsingActionsOnThe(String page) throws InterruptedException {
        wdc.actionsContextClick();
    }

    @And("user right click the {string} using Actions on the {string}")
    public void userRightClickTheUsingActionsOnThe(String elementName, String page) {
        wdc.actionsContextClick(page, elementName);
    }

    @And("user double click using Actions on the {string}")
    public void userDoubleClickUsingActionsOnThe(String page) {
        wdc.actionsDoubleClick();
    }

    @And("user double click the {string} using Actions on the {string}")
    public void userDoubleClickTheUsingActionsOnThe(String elementName, String page) {
        wdc.actionsDoubleClick(page, elementName);
    }

    @And("user drag the {string} and drop on {string} on the {string}")
    public void userDragTheAndDropOnOnThe(String sourceElementName, String targetElementName, String page) {
        wdc.actionsDragAndDrop(page, sourceElementName, targetElementName);
    }

    @And("user drag the {string} and drop at position x:{int} and y:{int} on the {string}")
    public void userDragTheAndDropAtPositionXAndYOnThe(String elementName, int x, int y, String page) {
        wdc.actionsDragAndDropBy(page, elementName, x, y);
    }

    @And("user move the mouse to the position  x:{int} and y:{int} on the {string}")
    public void userMoveTheMouseToThePositionXAndYOnThe(int x, int y, String page) {
        wdc.actionsMoveByOffset(x, y);
    }

    @And("user move the mouse to the {string} on the {string}")
    public void userMoveTheMouseMouseToTheWithThePositionXAndYOnThe(String elementName, String page) {
        wdc.actionsMoveToElement(page, elementName);
    }

    @And("user move the mouse to the {string} with the position x:{int} and y:{int} on the {string}")
    public void userMoveTheMouseMouseToTheWithThePositionXAndYOnThe(String elementName, int x, int y, String page) {
        wdc.actionsMoveToElement(page, elementName, x, y);
    }

    @And("user sendKeys {string} in {string} using actions on the {string}")
    public void userSendKeysInUsingActionsOnThe(String text, String elementName, String page) {
        wdc.actionsSendKeys(page, elementName, text);
    }

    @Then("user get {string} url")
    public void userGetUrl(String url) {
        wdc.get(url);
    }

    @And("user wait for {int} sec")
    public void userWaitForSec(int time) throws InterruptedException {
        Thread.sleep(time*1000);
    }

    @And("use close browser")
    public void useCloseBrowser() {
        wdc.quit();
    }

}

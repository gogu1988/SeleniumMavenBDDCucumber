package stepDefinitions;

import connectors.WebDriverConnector;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.*;
import org.testng.Assert;
import ru.yandex.qatools.ashot.AShot;
import ru.yandex.qatools.ashot.Screenshot;
import ru.yandex.qatools.ashot.comparison.ImageDiff;
import ru.yandex.qatools.ashot.comparison.ImageDiffer;
import utils.PropertiesFileUtil;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Properties;

public class WebDriverCommonSteps {

    WebDriverConnector wdc;
    PropertiesFileUtil pfu;

    Hooks hooks;
    static String actualTagName, actualAttribute, actualText, actualCssValue;
    static boolean isSelected, isEnabled, isDisplayed;
    static List<WebElement> actualElements;
    static WebElement actualElement;
    static Point actualLocation;
    static Dimension actualSize;
    static Rectangle actualRect;
    static int numberOfWindows;

    public WebDriverCommonSteps(WebDriverConnector wdc, PropertiesFileUtil pfu, Hooks hooks) {
        this.wdc = wdc;
        this.pfu = pfu;
        this.hooks = hooks;
    }

    @Given("user open {string} browser")
    public void userOpenBrowser(String browser) {
        wdc.openBrowser(browser);
        wdc.implicitlyWait();
        wdc.windowMaximize();
        wdc.pageLoadTimeout();
        wdc.setScriptTimeout();
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
        wdc.sendKeys(page,elementName,text);


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
        if (!wdc.isDisplayed(page, elementName))
            Assert.fail(elementName + " is not displayed on " + page);
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


    @And("user wait for {int} sec")
    public void userWaitForSec(int time) throws InterruptedException {
        Thread.sleep(time * 1000);
    }

    @And("user close browser")
    public void useCloseBrowser() {
        wdc.quit();
    }

    @And("user get {string} url")
    public void userGetUrl(String url) {
        if (url.contains("http"))
            wdc.get(url);
        else
            wdc.get(pfu.appConfig().getProperty(url));
    }

    @Then("user verify {string} message is displayed on the Alert")
    public void userVerifyMessageIsDisplayedOnThePop(String expectedText) {
        wdc.getTextOnAlert();
        if (!(wdc.getTextOnAlert().trim().equals(expectedText)))
            Assert.fail("Expected and Actual text are not equal. Expected: " + expectedText + " | Actual: " + wdc.getTextOnAlert());
        else
            hooks.currentScenario.log("Expected and Actual text are equal. Expected: " + expectedText + " | Actual: " + wdc.getTextOnAlert());
    }

    @Then("user verify that a new page opened in new tab with page title as {string}")
    public void userVerifyThatANewPageOpenendInNewTabWithPageTitleAs(String pageTitle) throws InterruptedException {
        if (wdc.getWindowHandles().size() >= 2) {
            wdc.switchToWindowWithTitle(pageTitle);
            if (!wdc.getTitle().equalsIgnoreCase(pageTitle))
                Assert.fail("Expected window title is not equal to actual window title. Expected: " + pageTitle + " | Actual: " + wdc.getTitle());
        } else
            Assert.fail("No new window opened");
    }

    @Then("user verify that a new page opened in new tab with page title contains {string}")
    public void userVerifyThatANewPageOpenendInNewTabWithPageTitleContains(String pageTitle) throws InterruptedException {
        if (wdc.getWindowHandles().size() == 2) {
            wdc.switchToWindowContainTitle(pageTitle);
            if (!wdc.getTitle().contains(pageTitle))
                Assert.fail("Expected window title does not contain actual window title. Expected: " + pageTitle + " | Actual: " + wdc.getTitle());
        } else
            Assert.fail("No new window opened");
    }

    @Then("user verify that a new page opened in same tab with page title as {string}")
    public void userVerifyThatANewPageOpenedInSameTabWithPageTitleAs(String pageTitle) {
        if (wdc.getWindowHandles().size() == numberOfWindows) {
            if (!wdc.getTitle().equalsIgnoreCase(pageTitle))
                Assert.fail("Expected window title is not equal to actual window title. Expected: " + pageTitle + " | Actual: " + wdc.getTitle());
        } else
            Assert.fail("New window opened");
    }

    @Then("user verify the match")
    public void userVerifyTheMatch() throws IOException {
        WebElement emailSubscribe = wdc.driver().findElement(By.xpath("//*[@class='cmp-email-subscribe']"));
        Screenshot emailSubscribeScreenshot = new AShot().takeScreenshot(wdc.driver(), emailSubscribe);
        ImageIO.write(emailSubscribeScreenshot.getImage(), "png", new File("C:\\Users\\govreddy\\IdeaProjects\\ntflexshares-qa\\src\\test\\resources\\sikuli\\actualImage.png"));
    }

    @Then("user take screen shot of {string} on the {string} and save it as {string} at {string}")
    public void userTakeScreenShotOnTheAndSaveItAsAt(String element, String page, String screenshotName, String location) {
        wdc.saveWebElementScreenshot(element, page, screenshotName, location);
    }

    @Then("user verify that {string} on the {string} and {string} image are same")
    public void userVerifyThatOnTheAndImageAreSame(String elementName, String pageName, String expectedImage) throws IOException {
        BufferedImage expected = ImageIO.read(new File(System.getProperty("user.dir") + "\\src\\test\\resources\\pics\\" + expectedImage + ".png"));
        BufferedImage actual = wdc.getImageOfWebElement(elementName, pageName);
        ImageDiffer imgDiff = new ImageDiffer();
        ImageDiff diff = imgDiff.makeDiff(expected, actual);
        if (diff.hasDiff() == true) {
            try {
                userTakeScreenShotOnTheAndSaveItAsAt(elementName, pageName, expectedImage.split("\\\\")[2] + "_actual", expectedImage.split("\\\\")[0]);
            } catch (Exception e) {
                userTakeScreenShotOnTheAndSaveItAsAt(elementName, pageName, expectedImage.split("\\\\")[1] + "_actual", expectedImage.split("\\\\")[0]);
            }
            Assert.fail("Both images are not same");
        }
    }

    @And("user go to backward page")
    public void userGoToBackwardPage() {
        wdc.navigateBack();
    }

    @And("user go to forward page")
    public void userGoToForwardPage() {
        wdc.navigateForward();
    }

    @And("user switch to window with the title as {string}")
    public void userSwitchToWindowWithTheTitleAs(String windowTitle) {
        wdc.switchToWindowWithTitle(windowTitle);
    }

    @Then("user verify that a new page opened in same tab with page title not as {string}")
    public void userVerifyThatANewPageOpenedInSameTabWithPageTitleNotAs(String pageTitle) {
        if (wdc.getWindowHandles().size() == 1) {
            if (wdc.getTitle().equalsIgnoreCase(pageTitle))
                Assert.fail("Expected window title is equal to actual window title. Expected: " + pageTitle + " | Actual: " + wdc.getTitle());
        } else
            Assert.fail("New window opened");
    }

    @Then("user verify the text of {string} on the {string} is equal to {string}")
    public void userVerifyTheTextOfOnTheIsEqualTo(String elementName, String pageName, String expectedText) {
        if (!wdc.getText(pageName, elementName).trim().equals(expectedText))
            Assert.fail("Expected and Actual text are not same. Actual_Text: " + expectedText + " | Expected_Text: " + wdc.getText(pageName, elementName).trim());

    }

    @And("user scroll into view using java script for {string} on the {string}")
    public void userScrollIntoViewUsingJavaScriptForOnThe(String elementName, String pageName) {
        wdc.javaScriptScrollIntoView(elementName, pageName);
    }

    @And("user close active tab in the browser")
    public void userCloseActiveTabInTheBrowser() {
        wdc.close();
    }

    @And("user store number of tabs in the browser")
    public void userStoreNumberOfTabsInTheBrowser() {
        numberOfWindows = wdc.numberOfWindows();
    }
}

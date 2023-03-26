package commonStepDefinitions;

import connectors.ChromeDevToolsConnector;
import customStepDefinitions.Hooks;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
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


public class ChromeDevToolsCommonSteps {

    ChromeDevToolsConnector cdtc;
    PropertiesFileUtil pfu;

    Hooks hooks;

    public ChromeDevToolsCommonSteps(ChromeDevToolsConnector mdc, PropertiesFileUtil pfu, Hooks hooks) {
        this.cdtc = mdc;
        this.pfu = pfu;
        this.hooks = hooks;
    }

    @Given("user open {string} device")
    public void userOpenBrowser(String device) {
        cdtc.openDevice(device);
        cdtc.implicitlyWait();
        cdtc.pageLoadTimeout();
        cdtc.setScriptTimeout();
    }

    @And("user get {string} url in Mobile")
    public void userGetUrl(String url) {
        if (url.contains("http"))
            cdtc.get(url);
        else
            cdtc.get(pfu.appConfig().getProperty(url));
    }

    @And("user click the {string} on the {string} in Mobile")
    public void userClickTheOnThe(String elementName, String page) {
        cdtc.click(page, elementName);
    }

    @Then("user verify {string} is invisible on the {string} in Mobile")
    public void userVerifyIsDisplayedOnThe(String elementName, String page) {
        if (!cdtc.invisibilityOf(elementName, page))
            Assert.fail(elementName + " is visible on the " + page + " page");
    }

    @And("user close device")
    public void useCloseBrowser() {
        cdtc.quit();
    }

    @Then("user take screen shot of the e")
    public void userVerifyTheMatch() throws IOException {
        WebElement emailSubscribe = cdtc.mobileDriver().findElement(By.xpath("//*[@class='cmp-email-subscribe']"));
        Screenshot emailSubscribeScreenshot = new AShot().takeScreenshot(cdtc.mobileDriver(), emailSubscribe);
        ImageIO.write(emailSubscribeScreenshot.getImage(), "png", new File("C:\\Users\\govreddy\\IdeaProjects\\ntflexshares-qa\\src\\test\\resources\\sikuli\\actualImage.png"));
    }

    @Then("user take screen shot of {string} on the {string} and save it as {string} at {string} in Mobile")
    public void userTakeScreenShotOnTheAndSaveItAsAtInMobile(String element, String page, String screenshotName, String location) {
        cdtc.saveWebElementScreenshot(element, page, screenshotName, location);
    }

    @Then("user verify that {string} on the {string} and {string} image are same in Mobile")
    public void userCompareTheOnTheWithImageInMobile(String elementName, String pageName, String expectedImage) throws IOException {
        BufferedImage expected = ImageIO.read(new File(System.getProperty("user.dir") + "\\src\\test\\resources\\pics\\" + expectedImage + ".png"));
        BufferedImage actual = cdtc.getImageOfWebElement(elementName, pageName);
        ImageDiffer imgDiff = new ImageDiffer();
        ImageDiff diff = imgDiff.makeDiff(expected, actual);
        if (diff.hasDiff() == true) {
            try {
                userTakeScreenShotOnTheAndSaveItAsAtInMobile(elementName, pageName, expectedImage.split("\\\\")[2] + "_actual", expectedImage.split("\\\\")[0]);
            } catch (Exception e) {
                userTakeScreenShotOnTheAndSaveItAsAtInMobile(elementName, pageName, expectedImage.split("\\\\")[1] + "_actual", expectedImage.split("\\\\")[0]);
            }
            Assert.fail("Both images are not same");
        }
    }

    @And("user scroll into view using java script for {string} on the {string} in Mobile")
    public void userScrollIntoViewUsingJavaScriptForOnTheInMobile(String elementName, String pageName) {
        cdtc.javaScriptScrollIntoView(elementName, pageName);
    }

    @Then("user verify the text of {string} on the {string} is equal to {string} in Mobile")
    public void userVerifyTheTextOfOnTheIsEqualToInMobile(String elementName, String pageName, String expectedText) {
        if (!cdtc.getText(pageName, elementName).trim().equals(expectedText))
            Assert.fail("Expected and Actual text are not same. Actual_Text: " + expectedText + " | Expected_Text: " + cdtc.getText(pageName, elementName).trim());
    }

    @And("user move the mouse to the {string} on the {string} in Mobile")
    public void userMoveTheMouseToTheOnTheInMobile(String elementName, String pageName) {
        cdtc.actionsMoveToElement(pageName, elementName);
    }

    @Then("user verify that a new page opened in new tab with page title as {string} in Mobile")
    public void userVerifyThatANewPageOpenedInNewTabWithPageTitleAsInMobile(String pageTitle) {
        if (cdtc.getWindowHandles().size() >= 2) {
            cdtc.switchToWindowWithTitle(pageTitle);
            if (!cdtc.getTitle().equalsIgnoreCase(pageTitle))
                Assert.fail("Expected window title is not equal to actual window title. Expected: " + pageTitle + " | Actual: " + cdtc.getTitle());
        } else
            Assert.fail("No new window opened");
    }

    @Then("user verify that a new page opened in new tab with page title contains {string} in Mobile")
    public void userVerifyThatANewPageOpenedInNewTabWithPageTitleContainsInMobile(String pageTitle) {
        if (cdtc.getWindowHandles().size() == 2) {
            cdtc.switchToWindowContainsTitle(pageTitle);
            if (!cdtc.getTitle().contains(pageTitle))
                Assert.fail("Expected window title does not contain actual window title. Expected: " + pageTitle + " | Actual: " + cdtc.getTitle());
        } else
            Assert.fail("No new window opened");
    }

    @And("user go to backward page in Mobile")
    public void userGoToBackwardPage() {
        cdtc.navigateBack();
    }

    @And("user go to forward page in Mobile")
    public void userGoToForwardPage() {
        cdtc.navigateForward();
    }

    @And("user switch to window with the title as {string} in Mobile")
    public void userSwitchToWindowWithTheTitleAsInMobile(String windowTitle) {
        cdtc.switchToWindowWithTitle(windowTitle);
    }
}

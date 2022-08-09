package connectors;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.devtools.DevTools;
import org.openqa.selenium.devtools.v85.emulation.Emulation;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import ru.yandex.qatools.ashot.AShot;
import ru.yandex.qatools.ashot.Screenshot;
import utils.PropertiesFileUtil;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.time.Duration;
import java.util.*;
import java.util.concurrent.TimeUnit;

public class MobileDriverConnector {

    ChromeDriver mobileDriver;
    PropertiesFileUtil pfc;
    DevTools devTools;

    public MobileDriverConnector(PropertiesFileUtil pfc) {
        this.pfc = pfc;
    }

    public void openDevice(String device) {

        WebDriverManager.chromedriver().setup();

        switch (device.toLowerCase()) {

            case "ipad air":
                mobileDriver = new ChromeDriver();
                devTools = mobileDriver.getDevTools();
                devTools.createSession();
                devTools.send(Emulation.setDeviceMetricsOverride(
                        820,
                        1180,
                        100,
                        true,
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty()
                ));
                break;

            case "ipad mini":
                mobileDriver = new ChromeDriver();
                devTools = mobileDriver.getDevTools();
                devTools.createSession();
                devTools.send(Emulation.setDeviceMetricsOverride(
                        768,
                        1024,
                        100,
                        true,
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty()
                ));
                break;

            case "iphone 12 pro":
                mobileDriver = new ChromeDriver();
                devTools = mobileDriver.getDevTools();
                devTools.createSession();
                devTools.send(Emulation.setDeviceMetricsOverride(
                        390,
                        844,
                        100,
                        true,
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty()
                ));
                break;

            case "pixel 5":
                mobileDriver = new ChromeDriver();
                devTools = mobileDriver.getDevTools();
                devTools.createSession();
                devTools.send(Emulation.setDeviceMetricsOverride(
                        393,
                        851,
                        100,
                        true,
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty()
                ));
                break;

            case "samsung galaxy s8+":
                mobileDriver = new ChromeDriver();
                devTools = mobileDriver.getDevTools();
                devTools.createSession();
                devTools.send(Emulation.setDeviceMetricsOverride(
                        360,
                        740,
                        100,
                        true,
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty(),
                        Optional.empty()
                ));
                break;

            default:
                Assert.fail("Specify device type as iPad Air or iPad Mini or iPhone 12 Pro or Pixel 5 or Samsung Galaxy S8+. Given device is " + device);

        }

    }

    public String webElementReader(String pageName, String elementName) {
        return pfc.webElementReader(pageName).getProperty(elementName);
    }

    public String locatorType(String pageName, String elementName) {
        String locatorType = webElementReader(pageName, elementName).split(":")[0];
        return locatorType;
    }

    public String webElement(String pageName, String elementName) {
        String webElement = webElementReader(pageName, elementName).split(":")[1];
        return webElement;
    }

    public WebElement mobileDriverWebElement(String pageName, String elementName) {

        WebElement mobileDriverWebElement = null;
        try {

            switch (locatorType(pageName, elementName).toLowerCase()) {

                case "cssselector":
                    mobileDriverWebElement = mobileDriver.findElement(By.cssSelector(webElement(pageName, elementName)));
                    break;

                case "xpath":
                    mobileDriverWebElement = mobileDriver.findElement(By.xpath(webElement(pageName, elementName)));
                    break;

                case "linktext":
                    mobileDriverWebElement = mobileDriver.findElement(By.linkText(webElement(pageName, elementName)));
                    break;

                case "partiallinktext":
                    mobileDriverWebElement = mobileDriver.findElement(By.partialLinkText(webElement(pageName, elementName)));
                    break;

                case "name":
                    mobileDriverWebElement = mobileDriver.findElement(By.name(webElement(pageName, elementName)));
                    break;

                case "classname":
                    mobileDriverWebElement = mobileDriver.findElement(By.className(webElement(pageName, elementName)));
                    break;

                case "id":
                    mobileDriverWebElement = mobileDriver.findElement(By.id(webElement(pageName, elementName)));
                    break;

                default:
                    throw new IllegalStateException("Unexpected value: " + locatorType(pageName, elementName).toLowerCase() + " " + webElement(pageName, elementName));

            }

        } catch (Exception e) {
            e.getMessage();
            Assert.fail("Issue in Locator " + locatorType(pageName, elementName) + ":" + webElement(pageName, elementName) + " with Locator name " + elementName + " on " + pageName);
        }

        return mobileDriverWebElement;
    }

    public List<WebElement> mobileDriverWebElements(String pageName, String elementName) {

        List<WebElement> mobileDriverWebElements;

        switch (locatorType(pageName, elementName).toLowerCase()) {

            case "cssSelector":
                mobileDriverWebElements = mobileDriver.findElements(By.cssSelector(webElement(pageName, elementName)));
                break;

            case "xpath":
                mobileDriverWebElements = mobileDriver.findElements(By.xpath(webElement(pageName, elementName)));
                break;

            case "linkText":
                mobileDriverWebElements = mobileDriver.findElements(By.linkText(webElement(pageName, elementName)));
                break;

            case "partialLinkText":
                mobileDriverWebElements = mobileDriver.findElements(By.partialLinkText(webElement(pageName, elementName)));
                break;

            case "name":
                mobileDriverWebElements = mobileDriver.findElements(By.name(webElement(pageName, elementName)));
                break;

            case "className":
                mobileDriverWebElements = mobileDriver.findElements(By.className(webElement(pageName, elementName)));
                break;

            case "id":
                mobileDriverWebElements = mobileDriver.findElements(By.id(webElement(pageName, elementName)));
                break;

            default:
                throw new IllegalStateException("Unexpected value: " + locatorType(pageName, elementName).toLowerCase());

        }

        return mobileDriverWebElements;
    }


    public void windowMaximize() {
        mobileDriver.manage().window().maximize();
    }

    public ChromeDriver mobileDriver() {
        return mobileDriver;
    }

    public void get(String url) {
        mobileDriver.get(url);
    }

    public String getCurrentUrl() {
        return mobileDriver.getCurrentUrl();
    }

    public String getTitle() {
        return mobileDriver.getTitle();
    }

    public List<WebElement> findElements(String locatorType, String finalElement) {

        List<WebElement> findElements;

        switch (locatorType.toLowerCase()) {

            case "cssSelector":
                findElements = mobileDriver.findElements(By.cssSelector(finalElement));
                break;

            case "xpath":
                findElements = mobileDriver.findElements(By.xpath(finalElement));
                break;

            case "linkText":
                findElements = mobileDriver.findElements(By.linkText(finalElement));
                break;

            case "partialLinkText":
                findElements = mobileDriver.findElements(By.partialLinkText(finalElement));
                break;

            case "name":
                findElements = mobileDriver.findElements(By.name(finalElement));
                break;

            case "className":
                findElements = mobileDriver.findElements(By.className(finalElement));
                break;

            case "id":
                findElements = mobileDriver.findElements(By.id(finalElement));
                break;

            default:
                throw new IllegalStateException("Unexpected value: " + locatorType.toLowerCase() + " " + finalElement);

        }

        return findElements;
    }

    public WebElement findElement(String locatorType, String finalElement) {

        WebElement findElement;

        switch (locatorType.toLowerCase()) {

            case "cssselector":
                findElement = mobileDriver.findElement(By.cssSelector(finalElement));
                break;

            case "xpath":
                findElement = mobileDriver.findElement(By.xpath(finalElement));
                break;

            case "linktext":
                findElement = mobileDriver.findElement(By.linkText(finalElement));
                break;

            case "partiallinktext":
                findElement = mobileDriver.findElement(By.partialLinkText(finalElement));
                break;

            case "name":
                findElement = mobileDriver.findElement(By.name(finalElement));
                break;

            case "classname":
                findElement = mobileDriver.findElement(By.className(finalElement));
                break;

            case "id":
                findElement = mobileDriver.findElement(By.id(finalElement));
                break;

            default:
                throw new IllegalStateException("Unexpected value: " + locatorType.toLowerCase() + " " + finalElement);

        }

        return findElement;
    }

    public String getPageSource() {
        return mobileDriver.getPageSource();
    }

    public void close() {
        mobileDriver.close();
    }

    public void quit() {
        mobileDriver.quit();
    }

    public Set<String> getWindowHandles() {
        return mobileDriver.getWindowHandles();
    }

    public String getWindowHandle() {
        return mobileDriver.getWindowHandle();
    }

    public void switchToFrame(int frameId) {
        mobileDriver.switchTo().frame(frameId);
    }

    public void switchToFrame(String frameName) {
        mobileDriver.switchTo().frame(frameName);
    }

    public void switchToFrame(String elementName, String pageName) {
        mobileDriver.switchTo().frame(mobileDriverWebElement(pageName, elementName));
    }

    public void switchToParentFrame(String elementName, String pageName) {
        mobileDriver.switchTo().parentFrame();
    }

    public void switchToWindow(String windowName) {
        mobileDriver.switchTo().window(windowName);
    }

    public void switchToDefaultContent() {
        mobileDriver.switchTo().defaultContent();
    }

    public void switchToActiveElement() {
        mobileDriver.switchTo().activeElement();
    }

    public Alert switchToAlert() {
        return mobileDriver.switchTo().alert();
    }

    public String getTextOnAlert() {
        return mobileDriver.switchTo().alert().getText();
    }

    public void navigateBack() {
        mobileDriver.navigate().back();
    }

    public void navigateForward() {
        mobileDriver.navigate().forward();
    }

    public void navigateTo(String url) {
        mobileDriver.navigate().to(url);
    }

    public void navigateTo(URL url) {
        mobileDriver.navigate().to(url);
    }

    public void refresh() {
        mobileDriver.navigate().refresh();
    }

    public void addCookie(Cookie cookie) {
        mobileDriver.manage().addCookie(cookie);
    }

    public void deleteCookieNamed(String cookieName) {
        mobileDriver.manage().deleteCookieNamed(cookieName);
    }

    public void deleteCookie(Cookie cookie) {
        mobileDriver.manage().deleteCookie(cookie);
    }

    public void deleteAllCookies() {
        mobileDriver.manage().deleteAllCookies();
    }

    public Set<Cookie> getCookies() {
        return mobileDriver.manage().getCookies();
    }

    public Cookie getCookieNamed(String cookieName) {
        return mobileDriver.manage().getCookieNamed(cookieName);
    }

    public void implicitlyWait() {
        mobileDriver.manage().timeouts().implicitlyWait(Integer.parseInt(pfc.frameworkConfig().getProperty("implicitlyWait")), TimeUnit.SECONDS);
    }

    public void setScriptTimeout() {
        mobileDriver.manage().timeouts().setScriptTimeout(Integer.parseInt(pfc.frameworkConfig().getProperty("setScriptTimeout")), TimeUnit.SECONDS);
    }

    public void pageLoadTimeout() {
        mobileDriver.manage().timeouts().pageLoadTimeout(Integer.parseInt(pfc.frameworkConfig().getProperty("pageLoadTimeout")), TimeUnit.SECONDS);
    }

    public WebDriverWait explicitWait(Duration sec) {
        return new WebDriverWait(mobileDriver, sec);
    }

    public Wait fluentWait(Duration timeout, Duration pollingTime) {
        return new FluentWait(mobileDriver)
                .withTimeout(timeout)
                .pollingEvery(pollingTime)
                .ignoring(Exception.class);
    }

    public List<String> getAvailableEngines() {
        return mobileDriver.manage().ime().getAvailableEngines();
    }

    public String getActiveEngine() {
        return mobileDriver.manage().ime().getActiveEngine();
    }

    public boolean engineIsActivated() {
        return mobileDriver.manage().ime().isActivated();
    }

    public void engineDeactivate() {
        mobileDriver.manage().ime().deactivate();
    }

    public void activateEngine(String engineName) {
        mobileDriver.manage().ime().activateEngine(engineName);
    }

    // WebElement Start
    public void click(String pageName, String elementName) {
        mobileDriverWebElement(pageName, elementName).click();
    }

    public void submit(String pageName, String elementName) {
        mobileDriverWebElement(pageName, elementName).submit();
    }

    public void sendKeys(String pageName, String elementName, String text) {
        mobileDriverWebElement(pageName, elementName).sendKeys(text);
    }

    public void clear(String pageName, String elementName) {
        mobileDriverWebElement(pageName, elementName).clear();
    }

    public String getTagName(String pageName, String elementName) {
        return mobileDriverWebElement(pageName, elementName).getTagName();
    }

    public String getAttribute(String pageName, String elementName, String attributeName) {
        return mobileDriverWebElement(pageName, elementName).getAttribute(attributeName);
    }

    public boolean isSelected(String pageName, String elementName) {
        return mobileDriverWebElement(pageName, elementName).isSelected();
    }

    public boolean isEnabled(String pageName, String elementName) {
        return mobileDriverWebElement(pageName, elementName).isEnabled();
    }

    public String getText(String pageName, String elementName) {
        return mobileDriverWebElement(pageName, elementName).getText();
    }

    public boolean isDisplayed(String pageName, String elementName) {
        return mobileDriverWebElement(pageName, elementName).isDisplayed();
    }

    public Point getLocation(String pageName, String elementName) {
        return mobileDriverWebElement(pageName, elementName).getLocation();
    }

    public Dimension getSize(String pageName, String elementName) {
        return mobileDriverWebElement(pageName, elementName).getSize();
    }

    public Rectangle getRect(String pageName, String elementName) {
        return mobileDriverWebElement(pageName, elementName).getRect();
    }

    public String getCssValue(String pageName, String elementName, String cssValue) {
        return mobileDriverWebElement(pageName, elementName).getCssValue(cssValue);
    }
    // WebElement End

    // Actions
    public Actions actions() {
        return new Actions(mobileDriver);
    }

    public void actionsClick() {
        actions().click().perform();
    }

    public void actionsClick(String pageName, String elementName) {
        actions().click(mobileDriverWebElement(pageName, elementName)).perform();
    }

    public void actionsClickAndHold() {
        actions().clickAndHold().perform();
    }

    public void actionsClickAndHold(String pageName, String elementName) {
        actions().clickAndHold(mobileDriverWebElement(pageName, elementName)).perform();
    }

    public void actionsContextClick() {
        actions().contextClick().perform();
    }

    public void actionsContextClick(String pageName, String elementName) {
        actions().contextClick(mobileDriverWebElement(pageName, elementName)).perform();
    }

    public void actionsDoubleClick() {
        actions().doubleClick().perform();
    }

    public void actionsDoubleClick(String pageName, String elementName) {
        actions().doubleClick(mobileDriverWebElement(pageName, elementName)).perform();
    }

    public void actionsDragAndDrop(String pageName, String sourceElementName, String targetElementName) {
        actions().dragAndDrop(mobileDriverWebElement(pageName, sourceElementName), mobileDriverWebElement(pageName, targetElementName)).perform();
    }

    public void actionsDragAndDropBy(String pageName, String elementName, int x, int y) {
        actions().dragAndDropBy(mobileDriverWebElement(pageName, elementName), x, y).perform();
    }

    public void actionsMoveByOffset(int x, int y) {
        actions().moveByOffset(x, y).perform();
    }

    public void actionsMoveToElement(String pageName, String elementName) {
        actions().moveToElement(mobileDriverWebElement(pageName, elementName)).perform();
    }

    public void actionsMoveToElement(String pageName, String elementName, int x, int y) {
        actions().moveToElement(mobileDriverWebElement(pageName, elementName), x, y).perform();
    }

    public void actionsSendKeys(String pageName, String elementName, String text) {
        actions().sendKeys(mobileDriverWebElement(pageName, elementName), text).perform();
    }

    public byte[] takeScreenshot() {
        return ((TakesScreenshot) mobileDriver).getScreenshotAs(OutputType.BYTES);
    }

    public boolean invisibilityOf(String elementName, String page) {
        WebDriverWait wait = new WebDriverWait(mobileDriver, Duration.ofSeconds(Integer.parseInt(pfc.frameworkConfig().getProperty("invisibilityOfElement"))));
        return wait.until(ExpectedConditions.invisibilityOf(mobileDriverWebElement(page, elementName)));
    }

    public void saveWebElementScreenshot(String elementName, String pageName, String screenshotName, String location) {
        try {
            File file = new File(System.getProperty("user.dir") + "\\src\\test\\resources\\pics\\" + location);
            if (!file.exists())
                file.mkdir();
            ImageIO.write((new AShot().takeScreenshot(mobileDriver(), mobileDriverWebElement(pageName, elementName))).getImage(), "png", new File(System.getProperty("user.dir") + "\\src\\test\\resources\\pics\\" + location + "\\" + screenshotName + ".png"));
        } catch (Exception e) {
            System.out.println(e.getMessage());
            Assert.fail("Not able to take the screen shot of the element " + elementName + "on " + pageName);
        }
    }

    public BufferedImage getImageOfWebElement(String elementName, String pageName) {
        return (new AShot().takeScreenshot(mobileDriver(), mobileDriverWebElement(pageName, elementName))).getImage();
    }

    public void elementToBeClickable(String elementName, String pageName, int sec) {
        WebDriverWait wait = new WebDriverWait(mobileDriver, Duration.ofSeconds(sec));
        wait.until(ExpectedConditions.elementToBeClickable(mobileDriverWebElement(pageName, elementName)));
    }

    public void javaScriptScrollIntoView(String elementName, String pageName) {
        mobileDriver().executeScript("arguments[0].scrollIntoView(true);", mobileDriverWebElement(pageName, elementName));
    }

    public void switchToWindowWithTitle(String windowTitle) {
        String mainWindowHandle = getWindowHandle();
        Set<String> allWindowHandles = getWindowHandles();
        Iterator<String> iterator = allWindowHandles.iterator();
        int i = 0;
        while (iterator.hasNext()) {
            i++;
            String ChildWindow = iterator.next();
            if (!mainWindowHandle.equalsIgnoreCase(ChildWindow)) {
                switchToWindow(ChildWindow);
                if (windowTitle.equalsIgnoreCase(getTitle()))
                    break;
                else if (i == allWindowHandles.size()){
                    Assert.fail("Not able to find the page with the title " + windowTitle);
                }
            }
        }
    }


    public void switchToWindowContainsTitle(String windowTitle) {
        String mainWindowHandle = getWindowHandle();
        Set<String> allWindowHandles = getWindowHandles();
        Iterator<String> iterator = allWindowHandles.iterator();
        int i = 0;
        while (iterator.hasNext()) {
            i++;
            String ChildWindow = iterator.next();
            if (!mainWindowHandle.equalsIgnoreCase(ChildWindow)) {
                switchToWindow(ChildWindow);
                if (getTitle().contains(windowTitle))
                    break;
                else if (i == allWindowHandles.size()){
                    Assert.fail("Not able to find the page contains the title " + windowTitle);
                }
            }
        }
    }

    public int numberOfWindows(){
        return mobileDriver.getWindowHandles().size();
    }

}

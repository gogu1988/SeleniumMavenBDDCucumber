package connectors;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.devtools.DevTools;
import org.openqa.selenium.devtools.v85.emulation.Emulation;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.asserts.SoftAssert;
import ru.yandex.qatools.ashot.AShot;
import utils.PropertiesFileUtil;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.net.URL;
import java.time.Duration;
import java.util.*;
import java.util.concurrent.TimeUnit;

public class WebDriverConnector {

    WebDriver driver;
    ChromeDriver mobileDriver;
    PropertiesFileUtil pfc;

    public WebDriverConnector(PropertiesFileUtil pfc) {
        this.pfc = pfc;
    }

    public void openBrowser(String browserName) {

        switch (browserName.toLowerCase()) {

            case "chrome":
                WebDriverManager.chromedriver().setup();
                driver = new ChromeDriver();
                break;

            case "firefox":
                WebDriverManager.firefoxdriver().setup();
                driver = new FirefoxDriver();
                break;

            case "ie":
                WebDriverManager.iedriver().setup();
                driver = new InternetExplorerDriver();
                break;

            case "edge":
                WebDriverManager.edgedriver().setup();
                driver = new EdgeDriver();
                break;

            case "chrome_headless":
                WebDriverManager.chromedriver().setup();
                ChromeOptions options = new ChromeOptions();
                options.addArguments("--headless");
                options.addArguments("window-size=1920,1080");
                driver = new ChromeDriver(options);
                break;

            default:
                SoftAssert a = new SoftAssert();
                a.fail("test");
                a.assertEquals("test", "test1");
                a.assertNotEquals("test","test");
                a.assertAll();

//                Assert.fail("Specify browser type as Chrome or Firefox or Edge or IE. Given browser is " + browserName);

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

    public WebElement driverWebElement(String pageName, String elementName) {

        WebElement driverWebElement = null;
        try {

            switch (locatorType(pageName, elementName).toLowerCase()) {

                case "cssselector":
                    driverWebElement = driver.findElement(By.cssSelector(webElement(pageName, elementName)));
                    break;

                case "xpath":
                    driverWebElement = driver.findElement(By.xpath(webElement(pageName, elementName)));
                    break;

                case "linktext":
                    driverWebElement = driver.findElement(By.linkText(webElement(pageName, elementName)));
                    break;

                case "partiallinktext":
                    driverWebElement = driver.findElement(By.partialLinkText(webElement(pageName, elementName)));
                    break;

                case "name":
                    driverWebElement = driver.findElement(By.name(webElement(pageName, elementName)));
                    break;

                case "classname":
                    driverWebElement = driver.findElement(By.className(webElement(pageName, elementName)));
                    break;

                case "id":
                    driverWebElement = driver.findElement(By.id(webElement(pageName, elementName)));
                    break;

                default:
                    throw new IllegalStateException("Unexpected value: " + locatorType(pageName, elementName).toLowerCase() + " " + webElement(pageName, elementName));

            }

        } catch (Exception e) {
            e.getMessage();
            Assert.fail("Issue in Locator " + locatorType(pageName, elementName) + ":" + webElement(pageName, elementName) + " with Locator name " + elementName + " on " + pageName);
        }

        return driverWebElement;
    }

    public List<WebElement> driverWebElements(String pageName, String elementName) {

        List<WebElement> driverWebElements;

        switch (locatorType(pageName, elementName).toLowerCase()) {

            case "cssSelector":
                driverWebElements = driver.findElements(By.cssSelector(webElement(pageName, elementName)));
                break;

            case "xpath":
                driverWebElements = driver.findElements(By.xpath(webElement(pageName, elementName)));
                break;

            case "linkText":
                driverWebElements = driver.findElements(By.linkText(webElement(pageName, elementName)));
                break;

            case "partialLinkText":
                driverWebElements = driver.findElements(By.partialLinkText(webElement(pageName, elementName)));
                break;

            case "name":
                driverWebElements = driver.findElements(By.name(webElement(pageName, elementName)));
                break;

            case "className":
                driverWebElements = driver.findElements(By.className(webElement(pageName, elementName)));
                break;

            case "id":
                driverWebElements = driver.findElements(By.id(webElement(pageName, elementName)));
                break;

            default:
                throw new IllegalStateException("Unexpected value: " + locatorType(pageName, elementName).toLowerCase());

        }

        return driverWebElements;
    }


    public void windowMaximize() {
        driver.manage().window().maximize();
    }

    public WebDriver driver() {
        return driver;
    }

    public void get(String url) {
        driver.get(url);
    }

    public String getCurrentUrl() {
        return driver.getCurrentUrl();
    }

    public String getTitle() {
        return driver.getTitle();
    }

    public List<WebElement> findElements(String locatorType, String finalElement) {

        List<WebElement> findElements;

        switch (locatorType.toLowerCase()) {

            case "cssSelector":
                findElements = driver.findElements(By.cssSelector(finalElement));
                break;

            case "xpath":
                findElements = driver.findElements(By.xpath(finalElement));
                break;

            case "linkText":
                findElements = driver.findElements(By.linkText(finalElement));
                break;

            case "partialLinkText":
                findElements = driver.findElements(By.partialLinkText(finalElement));
                break;

            case "name":
                findElements = driver.findElements(By.name(finalElement));
                break;

            case "className":
                findElements = driver.findElements(By.className(finalElement));
                break;

            case "id":
                findElements = driver.findElements(By.id(finalElement));
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
                findElement = driver.findElement(By.cssSelector(finalElement));
                break;

            case "xpath":
                findElement = driver.findElement(By.xpath(finalElement));
                break;

            case "linktext":
                findElement = driver.findElement(By.linkText(finalElement));
                break;

            case "partiallinktext":
                findElement = driver.findElement(By.partialLinkText(finalElement));
                break;

            case "name":
                findElement = driver.findElement(By.name(finalElement));
                break;

            case "classname":
                findElement = driver.findElement(By.className(finalElement));
                break;

            case "id":
                findElement = driver.findElement(By.id(finalElement));
                break;

            default:
                throw new IllegalStateException("Unexpected value: " + locatorType.toLowerCase() + " " + finalElement);

        }

        return findElement;
    }

    public String getPageSource() {
        return driver.getPageSource();
    }

    public void close() {
        driver.close();
    }

    public void quit() {
        driver.quit();
    }

    public Set<String> getWindowHandles() {
        return driver.getWindowHandles();
    }

    public String getWindowHandle() {
        return driver.getWindowHandle();
    }

    public void switchToFrame(int frameId) {
        driver.switchTo().frame(frameId);
    }

    public void switchToFrame(String frameName) {
        driver.switchTo().frame(frameName);
    }

    public void switchToFrame(String elementName, String pageName) {
        driver.switchTo().frame(driverWebElement(pageName, elementName));
    }

    public void switchToParentFrame(String elementName, String pageName) {
        driver.switchTo().parentFrame();
    }

    public void switchToWindow(String windowName) {
        driver.switchTo().window(windowName);
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
                else if (i == allWindowHandles.size()) {
                    Assert.fail("Not able to find the page with the title " + windowTitle);
                }
            }
        }
    }

    public void switchToWindowContainTitle(String windowTitle) {
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
                else if (i == allWindowHandles.size()) {
                    Assert.fail("Not able to find the page contains the title " + windowTitle);
                }
            }
        }
    }

    public void openNewTab() {
        driver.switchTo().newWindow(WindowType.TAB);
    }

    public void switchToDefaultContent() {
        driver.switchTo().defaultContent();
    }

    public void switchToActiveElement() {
        driver.switchTo().activeElement();
    }

    public Alert switchToAlert() {
        return driver.switchTo().alert();
    }

    public String getTextOnAlert() {
        return driver.switchTo().alert().getText();
    }

    public void navigateBack() {
        driver.navigate().back();
    }

    public void navigateForward() {
        driver.navigate().forward();
    }

    public void navigateTo(String url) {
        driver.navigate().to(url);
    }

    public void navigateTo(URL url) {
        driver.navigate().to(url);
    }

    public void refresh() {
        driver.navigate().refresh();
    }

    public void addCookie(Cookie cookie) {
        driver.manage().addCookie(cookie);
    }

    public void deleteCookieNamed(String cookieName) {
        driver.manage().deleteCookieNamed(cookieName);
    }

    public void deleteCookie(Cookie cookie) {
        driver.manage().deleteCookie(cookie);
    }

    public void deleteAllCookies() {
        driver.manage().deleteAllCookies();
    }

    public Set<Cookie> getCookies() {
        return driver.manage().getCookies();
    }

    public Cookie getCookieNamed(String cookieName) {
        return driver.manage().getCookieNamed(cookieName);
    }

    public void implicitlyWait() {
        driver.manage().timeouts().implicitlyWait(Integer.parseInt(pfc.frameworkConfig().getProperty("implicitlyWait")), TimeUnit.SECONDS);
    }

    public void setScriptTimeout() {
        driver.manage().timeouts().setScriptTimeout(Integer.parseInt(pfc.frameworkConfig().getProperty("setScriptTimeout")), TimeUnit.SECONDS);
    }

    public void pageLoadTimeout() {
        driver.manage().timeouts().pageLoadTimeout(Integer.parseInt(pfc.frameworkConfig().getProperty("pageLoadTimeout")), TimeUnit.SECONDS);
    }

//    public WebDriverWait explicitWait(Duration sec) {
//        return new WebDriverWait(driver, sec);
//    }

    public Wait fluentWait(Duration timeout, Duration pollingTime) {
        return new FluentWait(driver)
                .withTimeout(timeout)
                .pollingEvery(pollingTime)
                .ignoring(Exception.class);
    }

    // WebElement Start
    public void click(String pageName, String elementName) {
        driverWebElement(pageName, elementName).click();
    }

    public void submit(String pageName, String elementName) {
        driverWebElement(pageName, elementName).submit();
    }

    public void sendKeys(String pageName, String elementName, String text) {
        driverWebElement(pageName, elementName).sendKeys(text);
    }

    public void clear(String pageName, String elementName) {
        driverWebElement(pageName, elementName).clear();
    }

    public String getTagName(String pageName, String elementName) {
        return driverWebElement(pageName, elementName).getTagName();
    }

    public String getAttribute(String pageName, String elementName, String attributeName) {
        return driverWebElement(pageName, elementName).getAttribute(attributeName);
    }

    public boolean isSelected(String pageName, String elementName) {
        return driverWebElement(pageName, elementName).isSelected();
    }

    public boolean isEnabled(String pageName, String elementName) {
        return driverWebElement(pageName, elementName).isEnabled();
    }

    public String getText(String pageName, String elementName) {
        return driverWebElement(pageName, elementName).getText();
    }

    public boolean isDisplayed(String pageName, String elementName) {
        return driverWebElement(pageName, elementName).isDisplayed();
    }

    public Point getLocation(String pageName, String elementName) {
        return driverWebElement(pageName, elementName).getLocation();
    }

    public Dimension getSize(String pageName, String elementName) {
        return driverWebElement(pageName, elementName).getSize();
    }

    public Rectangle getRect(String pageName, String elementName) {
        return driverWebElement(pageName, elementName).getRect();
    }

    public String getCssValue(String pageName, String elementName, String cssValue) {
        return driverWebElement(pageName, elementName).getCssValue(cssValue);
    }
    // WebElement End

    // Actions
    public Actions actions() {
        return new Actions(driver);
    }

    public void actionsClick() {
        actions().click().perform();
    }

    public void actionsClick(String pageName, String elementName) {
        actions().click(driverWebElement(pageName, elementName)).perform();
    }

    public void actionsClickAndHold() {
        actions().clickAndHold().perform();
    }

    public void actionsClickAndHold(String pageName, String elementName) {
        actions().clickAndHold(driverWebElement(pageName, elementName)).perform();
    }

    public void actionsContextClick() {
        actions().contextClick().perform();
    }

    public void actionsContextClick(String pageName, String elementName) {
        actions().contextClick(driverWebElement(pageName, elementName)).perform();
    }

    public void actionsDoubleClick() {
        actions().doubleClick().perform();
    }

    public void actionsDoubleClick(String pageName, String elementName) {
        actions().doubleClick(driverWebElement(pageName, elementName)).perform();
    }

    public void actionsDragAndDrop(String pageName, String sourceElementName, String targetElementName) {
        actions().dragAndDrop(driverWebElement(pageName, sourceElementName), driverWebElement(pageName, targetElementName)).perform();
    }

    public void actionsDragAndDropBy(String pageName, String elementName, int x, int y) {
        actions().dragAndDropBy(driverWebElement(pageName, elementName), x, y).perform();
    }

    public void actionsMoveByOffset(int x, int y) {
        actions().moveByOffset(x, y).perform();
    }

    public void actionsMoveToElement(String pageName, String elementName) {
        actions().moveToElement(driverWebElement(pageName, elementName)).perform();
    }

    public void actionsMoveToElement(String pageName, String elementName, int x, int y) {
        actions().moveToElement(driverWebElement(pageName, elementName), x, y).perform();
    }

    public void actionsSendKeys(String pageName, String elementName, String text) {
        actions().sendKeys(driverWebElement(pageName, elementName), text).perform();
    }

    public byte[] takeScreenshot() {
        return ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
    }

    public void saveWebElementScreenshot(String elementName, String pageName, String screenshotName, String location) {
        try {
            File file = new File("/src/test/resources/pics/" + location);
            if (!file.exists())
                file.mkdir();
            ImageIO.write((new AShot().takeScreenshot(driver(), driverWebElement(pageName, elementName))).getImage(), "png", new File("/src/test/resources/pics/" + location + "/" + screenshotName + ".png"));
        } catch (Exception e) {
            System.out.println(e.getMessage());
            Assert.fail("Not able to take the screen shot of the element " + elementName + "on " + pageName);
        }
    }

    public BufferedImage getImageOfWebElement(String elementName, String pageName) {
        return (new AShot().takeScreenshot(driver(), driverWebElement(pageName, elementName))).getImage();
    }

    public void elementToBeClickable(String elementName, String pageName, int sec) {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(sec));
        wait.until(ExpectedConditions.elementToBeClickable(driverWebElement(pageName, elementName)));
    }

    public void javaScriptScrollIntoView(String elementName, String pageName) {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("arguments[0].scrollIntoView(true);", driverWebElement(pageName, elementName));
    }

    public int numberOfWindows() {
        return driver.getWindowHandles().size();
    }

}

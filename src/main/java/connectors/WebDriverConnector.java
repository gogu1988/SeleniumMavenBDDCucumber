package connectors;

import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.interactions.Actions;
import utils.PropertiesFileUtil;

import java.util.List;

public class WebDriverConnector {

    WebDriver driver;
    PropertiesFileUtil pfc;

    public WebDriverConnector(PropertiesFileUtil pfc) {
        this.pfc = pfc;
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

        WebElement driverWebElement;

        switch (locatorType(pageName, elementName).toLowerCase()) {

            case "cssSelector":
                driverWebElement = driver.findElement(By.cssSelector(webElement(pageName, elementName)));
                break;

            case "xpath":
                driverWebElement = driver.findElement(By.xpath(webElement(pageName, elementName)));
                break;

            case "linkText":
                driverWebElement = driver.findElement(By.linkText(webElement(pageName, elementName)));
                break;

            case "partialLinkText":
                driverWebElement = driver.findElement(By.partialLinkText(webElement(pageName, elementName)));
                break;

            case "name":
                driverWebElement = driver.findElement(By.name(webElement(pageName, elementName)));
                break;

            case "className":
                driverWebElement = driver.findElement(By.className(webElement(pageName, elementName)));
                break;

            case "id":
                driverWebElement = driver.findElement(By.id(webElement(pageName, elementName)));
                break;

            default:
                throw new IllegalStateException("Unexpected value: " + locatorType(pageName, elementName).toLowerCase() + " " + webElement(pageName, elementName));

        }

        return driverWebElement;
    }

    public  List<WebElement> driverWebElements(String pageName, String elementName) {

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

    public void openBrowser(String browserName) {
        System.setProperty("webdriver.chrome.driver", System.getProperty("user.dir") + "//drivers//chromedriver.exe");
        System.setProperty("webdriver.firefox.driver", System.getProperty("user.dir") + "//drivers//geckodriver.exe");
        System.setProperty("webdriver.ie.driver", System.getProperty("user.dir") + "//drivers//IEDriverServer.exe");

        switch (browserName.toLowerCase()) {

            case "chrome":
                driver = new ChromeDriver();
                break;

            case "firefox":
                driver = new FirefoxDriver();
                break;

            case "ie":
                driver = new InternetExplorerDriver();
                break;

        }
        driver.manage().window().maximize();
    }

    public WebDriver driver(){
        return driver;
    }

    public void get(String url) {
        driver.get(url);
    }

    public void quit() {
        driver.quit();
    }

    public void close() {
        driver.close();
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

    public void actionsClick(){
        actions().click().perform();
    }

    public void actionsClick(String pageName, String elementName){
        actions().click(driverWebElement(pageName, elementName)).perform();
    }

    public void actionsClickAndHold(){
        actions().clickAndHold().perform();
    }

    public void actionsClickAndHold(String pageName, String elementName){
        actions().clickAndHold(driverWebElement(pageName, elementName)).perform();
    }

    public void actionsContextClick(){
        actions().contextClick().perform();
    }

    public void actionsContextClick(String pageName, String elementName){
        actions().contextClick(driverWebElement(pageName, elementName)).perform();
    }

    public void actionsDoubleClick(){
        actions().doubleClick().perform();
    }

    public void actionsDoubleClick(String pageName, String elementName){
        actions().doubleClick(driverWebElement(pageName, elementName)).perform();
    }

    public void actionsDragAndDrop(String pageName, String sourceElementName, String targetElementName){
        actions().dragAndDrop(driverWebElement(pageName, sourceElementName), driverWebElement(pageName, targetElementName)).perform();
    }

    public void actionsDragAndDropBy(String pageName, String elementName, int x, int y){
        actions().dragAndDropBy(driverWebElement(pageName, elementName), x ,y).perform();
    }

    public void actionsMoveByOffset(int x, int y){
        actions().moveByOffset(x, y).perform();
    }

    public void actionsMoveToElement(String pageName, String elementName){
        actions().moveToElement(driverWebElement(pageName, elementName)).perform();
    }

    public void actionsMoveToElement(String pageName, String elementName, int x, int y){
        actions().moveToElement(driverWebElement(pageName, elementName), x, y).perform();
    }

    public void actionsSendKeys(String pageName, String elementName, String text){
        actions().sendKeys(driverWebElement(pageName, elementName), text).perform();
    }

    public void getScreenshotAs(String pageName, String elementName) {
        driverWebElement(pageName, elementName).getScreenshotAs(OutputType.FILE);
    }

    public byte[] takeScreenshot() {
        return ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
    }

}

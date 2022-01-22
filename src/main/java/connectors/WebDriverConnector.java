package connectors;

import io.cucumber.java.Scenario;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.interactions.Actions;

public class WebDriverConnector {

    WebDriver driver;
    PropertiesFileConnector pfc;

    public WebDriverConnector(PropertiesFileConnector pfc) {
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

    public WebElement driverWebElement(String locatorType, String webElement) {

        WebElement driverWebElement;

        switch (locatorType.toLowerCase()) {

            case "cssSelector":
                driverWebElement = driver.findElement(By.cssSelector(webElement));
                break;

            case "xpath":
                driverWebElement = driver.findElement(By.xpath(webElement));
                break;

            case "linkText":
                driverWebElement = driver.findElement(By.linkText(webElement));
                break;

            case "partialLinkText":
                driverWebElement = driver.findElement(By.partialLinkText(webElement));
                break;

            case "name":
                driverWebElement = driver.findElement(By.name(webElement));
                break;

            case "className":
                driverWebElement = driver.findElement(By.className(webElement));
                break;

            case "id":
                driverWebElement = driver.findElement(By.id(webElement));
                break;

            default:
                throw new IllegalStateException("Unexpected value: " + locatorType.toLowerCase());

        }

        return driverWebElement;
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

    public void get(String url) {
        driver.get(url);
    }

    public void quit() {
        driver.quit();
    }

    public void close() {
        driver.close();
    }

    public void click(String pageName, String elementName) {
        driverWebElement(locatorType(pageName, elementName), webElement(pageName, elementName)).click();
    }

    public void sendKeys(String pageName, String elementName, String text) {
        driverWebElement(locatorType(pageName, elementName), webElement(pageName, elementName)).sendKeys(text);
    }

    public void Actions() {
        Actions action = new Actions(driver);
        action.doubleClick().build().perform();
    }

    public byte[] takeScreenshot() {
        return ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
    }

}

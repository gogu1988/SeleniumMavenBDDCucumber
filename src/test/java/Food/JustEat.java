package Food;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.concurrent.TimeUnit;

public class JustEat {
    @Test
    public void eatSure() {
        WebDriver driver = new ChromeDriver();
        driver.get("https://www.eatsure.com/");
        driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
        driver.findElement(By.xpath("//input[@placeholder='Please enter your location here']")).sendKeys("J.P.Nagar");
        driver.findElement(By.xpath("(//ul[contains(@class,'LocationListstyle__SearchResult-sc-1moizv4-0 jkofEj')]/li)[1]")).click();
        driver.findElement(By.xpath("//a[@href='/behrouz-biryani/bangalore/jp-nagar']//div[contains(@class,'style__BrandCardWrapper')]")).click();
        driver.findElement(By.xpath("(//div[@id='collection_4057']//div[@class='sc-dkPtyc fydAkz']/div)[1]")).click();
    }


}

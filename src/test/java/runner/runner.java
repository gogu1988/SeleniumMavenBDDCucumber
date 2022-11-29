package runner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
import org.testng.annotations.*;

import java.util.Arrays;

@CucumberOptions(
        dryRun = false,
        monochrome = true,
        plugin = {"pretty",
//                "com.vimalselvam.cucumber.listener.ExtentCucumberFormatter:path/report.html",
                "de.monochromata.cucumber.report.PrettyReports:target", // To generate Cucumber Html Reports
                "json:target/cucumber.json",
                "junit:target/cucumber.xml",
                "rerun:target/rerun.txt",
                "timeline:target/timelineReports",
                "html:target/htmlReports.html"
        },
        glue = {"stepDefinitions"},
        features = {"src/test/resources/features"},
        tags = "@Demo_2, @"
)
public class runner extends AbstractTestNGCucumberTests {

    @BeforeSuite()
    public void BeforeSuite() {
        System.out.println("Executing BeforeSuite");
    }

    @BeforeTest
    public void BeforeTest() {
        System.out.println("Executing BeforeTest");
    }

    @BeforeClass
    public void BeforeClass() {
        System.out.println("Executing BeforeClass");
    }

    @BeforeMethod
    public void BeforeMethod() {
        System.out.println("Executing BeforeMethod");
    }

    @Override
    @DataProvider(parallel = true)
    public Object[][] scenarios() {
        return super.scenarios();
    }

    @AfterMethod
    public void AfterMethod() {
        System.out.println("Executing AfterMethod");
    }

    @AfterClass
    public void AfterClass() {
        System.out.println("Executing AfterClass");
    }

    @AfterTest
    public void AfterTest() {
        System.out.println("Executing AfterTest");
    }

    @AfterSuite
    public void AfterSuite() {
        System.out.println("Executing AfterSuite");
    }

}

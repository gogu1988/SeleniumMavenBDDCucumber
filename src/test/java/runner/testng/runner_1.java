package runner.testng;

import connectors.WebDriverConnector;
import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
import org.junit.After;
import org.testng.annotations.*;

@CucumberOptions(
        dryRun = false,
        monochrome = true,
        plugin = {"pretty",
                "de.monochromata.cucumber.report.PrettyReports:target/testng/runner_1", // To generate Cucumber Html Reports
                "json:target/testng/runner_1/cucumber.json",
                "junit:target/testng/runner_1/cucumber.xml",
                "rerun:target/testng/runner_1/rerun.txt",
                "timeline:target/testng/runner_1/timelineReports",
                "html:target/testng/runner_1/htmlReports.html"
        },
        glue = {"stepDefinitions"},
        features = {"src/test/resources/features"},
        tags = "@Test"
)
public class runner_1 extends AbstractTestNGCucumberTests {

    @BeforeSuite
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

    @Test
    public void test(){
        System.out.println("At the test method");
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

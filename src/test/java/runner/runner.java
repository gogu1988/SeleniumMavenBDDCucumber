package runner;

import io.cucumber.core.gherkin.Feature;
import io.cucumber.plugin.event.Node;
import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
import io.cucumber.testng.FeatureWrapper;
import org.testng.annotations.*;

import java.awt.*;

@CucumberOptions(
        dryRun = false,
        monochrome = true,
        plugin = {"pretty",
                "de.monochromata.cucumber.report.PrettyReports:target",
                "json:target/cucumber.json",
                "junit:target/cucumber.xml",
                "rerun:target/rerun.txt",
                "timeline:target/timelineReports",
                "html:target/htmlReports.html"
        },
        glue = {"customStepDefinitions", "commonStepDefinitions"},
        features = {"src/test/resources/features"},
        tags = "@Network"
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

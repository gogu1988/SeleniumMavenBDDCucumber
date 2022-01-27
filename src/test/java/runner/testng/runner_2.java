package runner.testng;

import io.cucumber.testng.CucumberOptions;
import io.cucumber.testng.AbstractTestNGCucumberTests;

@CucumberOptions(
        dryRun = false,
        monochrome = true,
        plugin = {"pretty",
                "de.monochromata.cucumber.report.PrettyReports:target/testng/runner_2", // To generate Cucumber Html Reports
                "json:target/testng/runner_2/cucumber.json",
                "junit:target/testng/runner_2/cucumber.xml",
                "rerun:target/testng/runner_2/rerun.txt",
                "timeline:target/testng/runner_2"
        },
        glue = {"stepDefinitions"},
        features = {"src/test/resources/features"},
        tags = "@Login"
)
public class runner_2 extends AbstractTestNGCucumberTests {

}

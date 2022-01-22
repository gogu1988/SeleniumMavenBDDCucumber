package runner.junit;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        dryRun = false,
        monochrome = true,
        plugin = {"pretty",
                "de.monochromata.cucumber.report.PrettyReports:target/junit/runner_1", // To generate Cucumber Html Reports
                "json:target/junit/runner_1/cucumber.json",
                "junit:target/junit/runner_1/cucumber.xml",
                "rerun:target/junit/runner_1/rerun.txt",
                "timeline:target/junit/runner_1"
        },
        glue = {"stepDefinitions"},
        features = {"src/test/resources/features"},
        tags = "@Login or @Logout"


)
public class runner_1 {

}

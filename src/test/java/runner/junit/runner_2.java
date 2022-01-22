package runner.junit;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        dryRun = false,
        monochrome = true,
        plugin = {"pretty",
                "de.monochromata.cucumber.report.PrettyReports:target/junit/runner_2", // To generate Cucumber Html Reports
                "json:target/junit/runner_2/cucumber.json",
                "junit:target/junit/runner_2/cucumber.xml",
                "rerun:target/junit/runner_2/rerun.txt"
        },
        glue = {"stepDefinitions"},
        features = {"src/test/resources/features"},
        tags = "@Login_1 or @Logout_1"


)
public class runner_2 {

}

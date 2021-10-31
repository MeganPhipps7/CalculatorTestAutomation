package nuix.calc.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty", "html:target/default-cucumber-reports", "json:target/cucumber.json"},
        features = "src/test/resources/nuix/calc/features",
        glue = "nuix/calc/stepDefinitions",
        tags = {"@regression"},
        dryRun = false,
        strict = true
)
public class MainRunner {


}

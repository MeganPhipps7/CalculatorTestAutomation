package nuix.calc.stepDefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import nuix.calc.pages.CalculatorPage;
import nuix.calc.utils.BrowserUtils;

public class Calculator_StepDefinition extends BrowserUtils {

    CalculatorPage calc = new CalculatorPage();

    @Given("The user is on the Calculator app")
    public void the_user_is_on_the_Calculator_app() {
        String env = System.getProperty("env");
        if (env == null) {
            env = "staging";
        }
        switch (env) {
            case "staging":
                driver.get("https://nuix.github.io/SDET/senior-sdet/stagingCalc/index.html");
                break;
            case "production":
                driver.get("https://nuix.github.io/SDET/senior-sdet/productionCalc/index.html");
                break;
            default:
                System.out.println("Invalid environment input. Only the following inputs are valid: staging, production.");
                System.exit(0);
        }
    }

    @When("The user performs the following operation {string}")
    public void the_user_performs_the_following_operation(String operation) {
        calc.breakDownNumsAndPerformOperation(operation);
    }

    @Then("The user verifies the result is {string}")
    public void the_user_verifies_the_result_is(String result) {
        calc.verifyResult(result);
    }

    @Then("The user verifies all numbers work on the calculator")
    public void the_user_verifies_all_numbers_work_on_the_calculator() {
        calc.verifyAllNumsWork();
    }


}

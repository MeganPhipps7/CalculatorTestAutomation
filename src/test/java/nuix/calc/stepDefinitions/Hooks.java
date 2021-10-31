package nuix.calc.stepDefinitions;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import nuix.calc.utils.WebDriverUtils;
import org.openqa.selenium.WebDriver;


import java.util.concurrent.TimeUnit;

public class Hooks {

    @Before
    public void setUp() {
        WebDriver driver = WebDriverUtils.getDriver();
        driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
        driver.manage().window().maximize();
    }

    @After
    public void tearDown() {
        WebDriverUtils.closeDriver();
    }
}

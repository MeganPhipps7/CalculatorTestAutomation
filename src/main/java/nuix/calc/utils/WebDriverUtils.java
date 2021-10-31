package nuix.calc.utils;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class WebDriverUtils {

    public static WebDriver driver;

    // Method to get driver, will instantiate a driver only if driver is null.
    public static WebDriver getDriver() {
        if (driver == null) {
            WebDriverManager.chromedriver().setup();
            driver = new ChromeDriver();
        }
        return driver;
    }

    // Method to close driver and set it to null.
    public static void closeDriver() {
        if (driver!=null) {
            driver.quit();
            driver = null;
        }
    }



}

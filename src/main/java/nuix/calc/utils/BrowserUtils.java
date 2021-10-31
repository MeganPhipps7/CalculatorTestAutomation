package nuix.calc.utils;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;

public class BrowserUtils extends WebDriverUtils{

    public WebDriver driver = WebDriverUtils.getDriver();

    public void waitForPageToLoad() {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        for (int seconds = 1; seconds <= 10; seconds ++) {
            if (js.executeScript("return document.readyState").equals("complete")) {
                break;
            }
        }
    }

}

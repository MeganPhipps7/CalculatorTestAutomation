package nuix.calc.pages;

import nuix.calc.utils.BrowserUtils;
import org.junit.Assert;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class CalculatorPage extends BrowserUtils {

    BrowserUtils bu = new BrowserUtils();

    public CalculatorPage() {
        PageFactory.initElements(driver, this);
    }

    @FindBy(xpath = "//input[@id='add']")
    public WebElement add_bttn;

    @FindBy(xpath = "//input[@id='subtract']")
    public WebElement subtract_bttn;

    @FindBy(xpath = "//input[@value='C']")
    public WebElement clear_bttn;

    @FindBy(xpath = "//input[@id='divide']")
    public WebElement divide_bttn;

    @FindBy(xpath = "//input[@id='multiply']")
    public WebElement multiply_bttn;

    @FindBy(xpath = "//div[@id='display']")
    public WebElement result;

    @FindBy(xpath = "//input[@value='=']")
    public WebElement eql_bttn;

    @FindBy(xpath = "//input[@value='.']")
    public WebElement decimal_bttn;

    @FindBy(xpath = "//input[@value='0']")
    public WebElement zero_bttn;

    @FindBy(xpath = "//input[@value='1']")
    public WebElement one_bttn;

    @FindBy(xpath = "//input[@value='2']")
    public WebElement two_bttn;

    @FindBy(xpath = "//input[@value='3']")
    public WebElement three_bttn;

    @FindBy(xpath = "//input[@value='4']")
    public WebElement four_bttn;

    @FindBy(xpath = "//input[@value='5']")
    public WebElement five_bttn;

    @FindBy(xpath = "//input[@value='6']")
    public WebElement six_bttn;

    @FindBy(xpath = "//input[@value='7']")
    public WebElement seven_bttn;

    @FindBy(xpath = "//input[@value='8']")
    public WebElement eight_bttn;

    @FindBy(xpath = "//input[@value='9']")
    public WebElement nine_bttn;

    // Method to click Add button
    public void clickAdd() {
        add_bttn.click();
    }

    // Method to click Minus button
    public void clickMinus() {
        subtract_bttn.click();
    }

    //Method to click Multiply button
    public void clickMultiply() {
        multiply_bttn.click();
    }

    // Method to click Divide button
    public void clickDivide() {
        divide_bttn.click();
    }

    // Method to click Decimal point
    public void clickDecimal() {
        decimal_bttn.click();
    }

    // Method to click Clear button
    public void clickClear() {
        clear_bttn.click();
    }

    // Method to click a number based on value passed in parameter
    public void clickNum(int num) {
        switch (num) {
            case 0:
                zero_bttn.click();
                break;

            case 1:
                one_bttn.click();
                break;

            case 2:
                two_bttn.click();
                break;

            case 3:
                three_bttn.click();
                break;

            case 4:
                four_bttn.click();
                break;

            case 5:
                five_bttn.click();
                break;

            case 6:
                six_bttn.click();
                break;

            case 7:
                seven_bttn.click();
                break;

            case 8:
                eight_bttn.click();
                break;

            case 9:
                nine_bttn.click();
                break;

            default:
                System.out.println("Method only accepts a valid number from 0 to 9");
                System.exit(0);
                break;
        }
        bu.waitForPageToLoad();
    }

    // Method takes in a whole operation in String format performs it on the app
    public void breakDownNumsAndPerformOperation(String operation) {
        String[] op = operation.split(" ");
        for (int i = 0; i < op.length; i++) {
            String[] tempNum = op[i].split("");
            if (tempNum.length > 1) {
                for (int j = 0; j < tempNum.length; j++) {
                    if (tempNum[j].equals("-")) {
                        clickMinus();
                    } else if (tempNum[j].equals(".")) {
                        clickDecimal();
                    } else if (tempNum[j].equals("+")) {
                        clickAdd();
                    } else if (tempNum[j].equals("×")) {
                        clickMultiply();
                    } else if (tempNum[j].equals("/")) {
                        clickDivide();
                    } else if (tempNum[j].equals("C")) {
                    clickClear();
                    } else {
                    clickNum(Integer.parseInt(tempNum[j]));
                }
            }
        } else{
            if (tempNum[0].equals(".")) {
                clickDecimal();
            } else if (tempNum[0].equals("+")) {
                clickAdd();
            } else if (tempNum[0].equals("-")) {
                clickMinus();
            } else if (tempNum[0].equals("×")) {
                clickMultiply();
            } else if (tempNum[0].equals("/")) {
                clickDivide();
            } else if (tempNum[0].equals("C")) {
                clickClear();
            } else {
                clickNum(Integer.parseInt(tempNum[0]));
            }
        }
    }
        eql_bttn.click();
        bu.waitForPageToLoad();
}

    // Method to verify result
    public void verifyResult(String expectedResult) {
        bu.waitForPageToLoad();
        String actualResult = result.getText();
        Assert.assertEquals("\nResult verification failed.\nExpected result: " + expectedResult + "\nActual result: " + actualResult + "\n", expectedResult, actualResult);
    }


    // Method to verify all numbers work
    public void verifyAllNumsWork() {
        for (int i = 0; i < 10; i++) {
            clickNum(i);
            Assert.assertEquals("Number " + i + " is not working as expected", String.valueOf(i), result.getText());
            clear_bttn.click();
        }
    }


}

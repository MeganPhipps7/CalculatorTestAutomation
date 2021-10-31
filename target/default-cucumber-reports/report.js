$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:src/test/resources/nuix/calc/features/Addition.feature");
formatter.feature({
  "name": "Addition",
  "description": "",
  "keyword": "Feature",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.scenario({
  "name": "Adding two positive integers",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"5 + 3\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"8\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: \nResult verification failed.\nExpected result: 8\nActual result: 9\n expected:\u003c[8]\u003e but was:\u003c[9]\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat nuix.calc.pages.CalculatorPage.verifyResult(CalculatorPage.java:201)\n\tat nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(Calculator_StepDefinition.java:39)\n\tat ✽.The user verifies the result is \"8\"(file:///Users/meganphipps/Calculator%20App%20Test/src/test/resources/nuix/calc/features/Addition.feature:10)\n",
  "status": "failed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding two negative integers",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"-9 + -4\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"-13\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding one positive and one negative integer",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"-8 + 2\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"-6\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding two positive decimals",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"0.4 + 0.8\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"1.2\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: \nResult verification failed.\nExpected result: 1.2\nActual result: 1\n expected:\u003c1[.2]\u003e but was:\u003c1[]\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat nuix.calc.pages.CalculatorPage.verifyResult(CalculatorPage.java:201)\n\tat nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(Calculator_StepDefinition.java:39)\n\tat ✽.The user verifies the result is \"1.2\"(file:///Users/meganphipps/Calculator%20App%20Test/src/test/resources/nuix/calc/features/Addition.feature:26)\n",
  "status": "failed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding two negative decimals",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"-0.4 + -0.8\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"-1.2\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: \nResult verification failed.\nExpected result: -1.2\nActual result: -1\n expected:\u003c-1[.2]\u003e but was:\u003c-1[]\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat nuix.calc.pages.CalculatorPage.verifyResult(CalculatorPage.java:201)\n\tat nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(Calculator_StepDefinition.java:39)\n\tat ✽.The user verifies the result is \"-1.2\"(file:///Users/meganphipps/Calculator%20App%20Test/src/test/resources/nuix/calc/features/Addition.feature:32)\n",
  "status": "failed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding one positive and one negative decimal",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"-373.8 + 0.02\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"-373.78\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: \nResult verification failed.\nExpected result: -373.78\nActual result: -374\n expected:\u003c-37[3.78]\u003e but was:\u003c-37[4]\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat nuix.calc.pages.CalculatorPage.verifyResult(CalculatorPage.java:201)\n\tat nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(Calculator_StepDefinition.java:39)\n\tat ✽.The user verifies the result is \"-373.78\"(file:///Users/meganphipps/Calculator%20App%20Test/src/test/resources/nuix/calc/features/Addition.feature:38)\n",
  "status": "failed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding 1 positive integer and 1 negative decimal",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"98676581 + -.0856\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"98676580.9\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: \nResult verification failed.\nExpected result: 98676580.9\nActual result: 98676681\n expected:\u003c98676[580.9]\u003e but was:\u003c98676[681]\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat nuix.calc.pages.CalculatorPage.verifyResult(CalculatorPage.java:201)\n\tat nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(Calculator_StepDefinition.java:39)\n\tat ✽.The user verifies the result is \"98676580.9\"(file:///Users/meganphipps/Calculator%20App%20Test/src/test/resources/nuix/calc/features/Addition.feature:44)\n",
  "status": "failed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding multiple positive integers",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"8 + 2 + 2 + 6 + 0 + 2 + 1 + 4\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"25\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: \nResult verification failed.\nExpected result: 25\nActual result: 7\n expected:\u003c[25]\u003e but was:\u003c[7]\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat nuix.calc.pages.CalculatorPage.verifyResult(CalculatorPage.java:201)\n\tat nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(Calculator_StepDefinition.java:39)\n\tat ✽.The user verifies the result is \"25\"(file:///Users/meganphipps/Calculator%20App%20Test/src/test/resources/nuix/calc/features/Addition.feature:52)\n",
  "status": "failed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding multiple negative integers",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"-88 + -32 + -5 + -16 + -3 + -90 + -1 + -2\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"-237\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: \nResult verification failed.\nExpected result: -237\nActual result: Error\n expected:\u003c[-237]\u003e but was:\u003c[Error]\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat nuix.calc.pages.CalculatorPage.verifyResult(CalculatorPage.java:201)\n\tat nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(Calculator_StepDefinition.java:39)\n\tat ✽.The user verifies the result is \"-237\"(file:///Users/meganphipps/Calculator%20App%20Test/src/test/resources/nuix/calc/features/Addition.feature:58)\n",
  "status": "failed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding multiple positive and negative integers",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"-34878 + 9 + -232 + 843 + -211986 + 9 + -1 + 239\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"-245997\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: \nResult verification failed.\nExpected result: -245997\nActual result: 247\n expected:\u003c[-24599]7\u003e but was:\u003c[24]7\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat nuix.calc.pages.CalculatorPage.verifyResult(CalculatorPage.java:201)\n\tat nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(Calculator_StepDefinition.java:39)\n\tat ✽.The user verifies the result is \"-245997\"(file:///Users/meganphipps/Calculator%20App%20Test/src/test/resources/nuix/calc/features/Addition.feature:64)\n",
  "status": "failed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding multiple positive decimals",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"3784.8 + 2.3 + 472.2 + 238.3 + 2.9992 + 2.32 + 233.32 + 4.0\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"4740.2392\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: \nResult verification failed.\nExpected result: 4740.2392\nActual result: 239\n expected:\u003c[4740.2392]\u003e but was:\u003c[239]\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat nuix.calc.pages.CalculatorPage.verifyResult(CalculatorPage.java:201)\n\tat nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(Calculator_StepDefinition.java:39)\n\tat ✽.The user verifies the result is \"4740.2392\"(file:///Users/meganphipps/Calculator%20App%20Test/src/test/resources/nuix/calc/features/Addition.feature:70)\n",
  "status": "failed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding multiple negative decimals",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"-3784.8 + -2.3 + -472.2 + -238.3 + -2.9992 + -2.32 + -233.32 + -4.0\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"-4740.2392\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: \nResult verification failed.\nExpected result: -4740.2392\nActual result: Error\n expected:\u003c[-4740.2392]\u003e but was:\u003c[Error]\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat nuix.calc.pages.CalculatorPage.verifyResult(CalculatorPage.java:201)\n\tat nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(Calculator_StepDefinition.java:39)\n\tat ✽.The user verifies the result is \"-4740.2392\"(file:///Users/meganphipps/Calculator%20App%20Test/src/test/resources/nuix/calc/features/Addition.feature:76)\n",
  "status": "failed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding multiple positive and negative decimals and integers",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"3784.8 + -2 + 472.2 + 238 + 2.99 + -3289 + 233.32 + -9452.0\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"-8011.69\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: \nResult verification failed.\nExpected result: -8011.69\nActual result: Error\n expected:\u003c[-8011.69]\u003e but was:\u003c[Error]\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat nuix.calc.pages.CalculatorPage.verifyResult(CalculatorPage.java:201)\n\tat nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(Calculator_StepDefinition.java:39)\n\tat ✽.The user verifies the result is \"-8011.69\"(file:///Users/meganphipps/Calculator%20App%20Test/src/test/resources/nuix/calc/features/Addition.feature:82)\n",
  "status": "failed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding 2 nine digit integers",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"749274091 + 192634062\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"941908153\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding 2 nine digit positive decimals",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"943.214093 + 0.999999999\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"944.214093\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: \nResult verification failed.\nExpected result: 944.214093\nActual result: 944\n expected:\u003c944[.214093]\u003e but was:\u003c944[]\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat nuix.calc.pages.CalculatorPage.verifyResult(CalculatorPage.java:201)\n\tat nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(Calculator_StepDefinition.java:39)\n\tat ✽.The user verifies the result is \"944.214093\"(file:///Users/meganphipps/Calculator%20App%20Test/src/test/resources/nuix/calc/features/Addition.feature:95)\n",
  "status": "failed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding 2 nine digit negative decimals",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"-943.214093 + -.999999999\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"-944.214093\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: \nResult verification failed.\nExpected result: -944.214093\nActual result: -944\n expected:\u003c-944[.214093]\u003e but was:\u003c-944[]\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat nuix.calc.pages.CalculatorPage.verifyResult(CalculatorPage.java:201)\n\tat nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(Calculator_StepDefinition.java:39)\n\tat ✽.The user verifies the result is \"-944.214093\"(file:///Users/meganphipps/Calculator%20App%20Test/src/test/resources/nuix/calc/features/Addition.feature:101)\n",
  "status": "failed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding multiple nine digit numbers",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"-943.814093 + 0.999999999 + 2378.22999 + -194000001 + 234323211\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"40324645.4\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: \nResult verification failed.\nExpected result: 40324645.4\nActual result: 0\n expected:\u003c[40324645.4]\u003e but was:\u003c[0]\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat nuix.calc.pages.CalculatorPage.verifyResult(CalculatorPage.java:201)\n\tat nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(Calculator_StepDefinition.java:39)\n\tat ✽.The user verifies the result is \"40324645.4\"(file:///Users/meganphipps/Calculator%20App%20Test/src/test/resources/nuix/calc/features/Addition.feature:108)\n",
  "status": "failed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding 2 nine digit positive integers to get an exponential answer",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"999999999 + 999999999\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"1.1e10\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: \nResult verification failed.\nExpected result: 1.1e10\nActual result: 2e+9\n expected:\u003c[1.1e10]\u003e but was:\u003c[2e+9]\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat nuix.calc.pages.CalculatorPage.verifyResult(CalculatorPage.java:201)\n\tat nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(Calculator_StepDefinition.java:39)\n\tat ✽.The user verifies the result is \"1.1e10\"(file:///Users/meganphipps/Calculator%20App%20Test/src/test/resources/nuix/calc/features/Addition.feature:118)\n",
  "status": "failed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding 2 nine digit negative integers for exponent answer",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "The user is on the Calculator app",
  "keyword": "Given "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_is_on_the_Calculator_app()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"-943214093 + -999999999\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"-1.94321409e+9\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Validating rounded up decimal answer",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@addition"
    },
    {
      "name": "@regression"
    }
  ]
});

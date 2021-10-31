$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:src/test/resources/nuix/calc/features/CombinationEquations.feature");
formatter.feature({
  "name": "Calculator",
  "description": "",
  "keyword": "Feature",
  "tags": [
    {
      "name": "@combinationEquations"
    }
  ]
});
formatter.scenario({
  "name": "Adding multiple positive integers",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@combinationEquations"
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
  "name": "The user performs the following operation \"800 / 2 × 6 + 2 -14 + 0 × 0.32 - 20 / 4.09 × 30\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"2241.300733\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: \nResult verification failed.\nExpected result: 2241.300733\nActual result: 5458.3863\n expected:\u003c[2241.30073]3\u003e but was:\u003c[5458.386]3\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat nuix.calc.pages.CalculatorPage.verifyResult(CalculatorPage.java:242)\n\tat nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(Calculator_StepDefinition.java:39)\n\tat ✽.The user verifies the result is \"2241.300733\"(file:///Users/meganphipps/Calculator%20App%20Test/src/test/resources/nuix/calc/features/CombinationEquations.feature:11)\n",
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
      "name": "@combinationEquations"
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
  "name": "The user performs the following operation \"749274091 × 19263.4062 / -999998888 + -400358232 - 2.38710532\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"348915857\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: \nResult verification failed.\nExpected result: 348915857\nActual result: 2.38710532\n expected:\u003c[348915857]\u003e but was:\u003c[2.38710532]\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat nuix.calc.pages.CalculatorPage.verifyResult(CalculatorPage.java:242)\n\tat nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(Calculator_StepDefinition.java:39)\n\tat ✽.The user verifies the result is \"348915857\"(file:///Users/meganphipps/Calculator%20App%20Test/src/test/resources/nuix/calc/features/CombinationEquations.feature:21)\n",
  "status": "failed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Adding two positive integers then adding a third",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@combinationEquations"
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
  "name": "The user performs the following operation \"12 × 81\"",
  "keyword": "When "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"972\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"/ 6\"",
  "keyword": "And "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"162\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"- 62\"",
  "keyword": "And "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"100\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user performs the following operation \"- -6.2\"",
  "keyword": "And "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "The user verifies the result is \"106.2\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: \nResult verification failed.\nExpected result: 106.2\nActual result: 93.8\n expected:\u003c[106.2]\u003e but was:\u003c[93.8]\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat nuix.calc.pages.CalculatorPage.verifyResult(CalculatorPage.java:242)\n\tat nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(Calculator_StepDefinition.java:39)\n\tat ✽.The user verifies the result is \"106.2\"(file:///Users/meganphipps/Calculator%20App%20Test/src/test/resources/nuix/calc/features/CombinationEquations.feature:36)\n",
  "status": "failed"
});
formatter.step({
  "name": "The user performs the following operation \"+ 6.2\"",
  "keyword": "And "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_performs_the_following_operation(java.lang.String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "The user verifies the result is \"112.4\"",
  "keyword": "Then "
});
formatter.match({
  "location": "nuix.calc.stepDefinitions.Calculator_StepDefinition.the_user_verifies_the_result_is(java.lang.String)"
});
formatter.result({
  "status": "skipped"
});
formatter.after({
  "status": "passed"
});
});
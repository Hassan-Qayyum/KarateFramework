Feature: Java Functions
  Background:
    * def javaClass = Java.type("JavaFunctions")
  Scenario: Calling Static Java Function
    Then def sumValue = javaClass.sum(10,10)
    And match sumValue == 20

  Scenario: Calling Non Static Java Function
    Then def loginMessage = new javaClass().LoginMessage("Non Static Function")
    And match loginMessage == "Called Non Static Function"

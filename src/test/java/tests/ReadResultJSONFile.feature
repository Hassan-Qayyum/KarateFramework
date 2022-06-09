Feature:  Read External File & Feature Data


  Background:
    * def jsonResult = read('../data/result.json')
    * def result = call read("CallingJavaFunctions.feature")

  Scenario: Reading data from the json file
    Given url "https://reqres.in/api/users/3"
    When method get
    Then match response == jsonResult[1]

  Scenario: Calling an external feature file
    Then match result.javaClass.sum(10,10) == 20


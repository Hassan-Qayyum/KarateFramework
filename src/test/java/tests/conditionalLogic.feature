Feature: Conditional Logic

  @ignore
  Scenario: First Test
    * def result = ("abc"=="abc") ? karate.call("callingScenariosInSameFile.feature@second") : {}
    Then print 'Conditional Logic Result---------------', result

  @ignore
  Scenario: Second Test
    * def fileName = ("abc"=="abc") ? "callingScenariosInDifferentFiles.feature" : "callingScenariosInSameFile.feature"
    * def result = call read(fileName)

  Scenario: Third Test
    * def responseCode = 200
    * def myFunc =
    """
    function(){
      return "Hello"
    }
    """
    * def result = (responseCode==200)? myFunc():{}
    Then print 'Printing Function---------------', result




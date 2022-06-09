Feature: Call one scenario from another in the same feature file

  @third
  Scenario: First Scenario
    Then print 'This is first scenario'
    * def result = call read('callingScenariosInSameFile.feature@second')

  @ignore
  Scenario: Second Scenario
    Then print 'This is second scenario'

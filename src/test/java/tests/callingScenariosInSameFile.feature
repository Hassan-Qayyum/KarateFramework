Feature: Call one scenario from another in the same feature file

  @ignore @first
  Scenario: First Scenario
    Then print 'This is first scenario'

  @second
  Scenario: Second Scenario
    Then print 'This is second scenario'
    * def result = call read('callingScenariosInSameFile.feature@first')

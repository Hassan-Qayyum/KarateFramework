Feature: Karate Config File
  Background:
    * url BASE_URL

  Scenario:
    Given path GET_USERS
    When method get
    Then status 200
    And print "AUTH_TOKEN--------", AUTH_TOKEN

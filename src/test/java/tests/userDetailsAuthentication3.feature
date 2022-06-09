Feature: API Authentication
  Background:
    * def myFeature = call read('userDetailsAuthentication2.feature') {email: "eve.holt@reqres.in", password: "pistol"}
    * def authToken = myFeature.accessToken

  Scenario: Get Call
    Given url 'https://reqres.in'
    When method get
    Then status 200
    And print 'authToken-------', authToken

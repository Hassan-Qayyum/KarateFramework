Feature: Delete API
  Background:
    * def createdUser = call read("PostAPIExample.feature")
    * def createdUserId = createdUser.id
    * url 'https://reqres.in/api/users/'

  Scenario: Delete user details
    Given path createdUserId
    When method delete
    Then status 204

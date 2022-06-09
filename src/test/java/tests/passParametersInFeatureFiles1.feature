@ignore
Feature: Pass parameters
  Background:
    * url 'https://reqres.in/api/users'
  Scenario: Fetching users
    * def email = 'test@gmail.com'
    * def parameters =
    """
    {
    page: '#(pageNo)',
    }
    """
    Given params parameters
    When method get
    Then status 200

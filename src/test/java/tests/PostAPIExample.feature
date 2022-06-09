Feature: validate post request

  Background:
    * url 'https://reqres.in/'
    * def jsonPayload = read ('../data/postRequest.json')
#    * header Content-Type = "application/json"
    * headers {Content-Type: "application/json", Accept:"application/json"}

  Scenario: Create a user
    Given path 'api/users'
    And request jsonPayload
    When method post
    Then status 201
    And print 'User created successfully....', response

  @ignore
  Scenario Outline: verify dummy rest api post request
    Given url '<url>'
    And request {"name":"Hassan","salary":"Undefined","age":"27"}
    When method post
    Then status 200


    Examples:
      | url                                            |
      | https://dummy.restapiexample.com/api/v1/create |

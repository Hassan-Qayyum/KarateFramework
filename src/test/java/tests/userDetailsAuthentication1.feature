@ignore
Feature: API Authentication

  #Note

  # 1- This feature file is telling how to generate access token and use it in other scenarios
  # 2- Could not find any dummy website where I can test this thing but the code for token generation is same.

  # 3- userDetailsAuthentication2.feature (In this feature file you can see a dummy test about "how to get & use accessToken" )

  Background:
    * url 'https://somesite/register'

  Scenario: Authentication Token
    Given path 'token'
    And form field grant_type = 'client_credentials'
    And form field client_id = ''
    And form field client_secret = ''
    When method post
    Then status 200

    * def accessToken =  response.access_token

    Given path ''
    And header Authorization = 'Bearer' + accessToken
    When method get
    Then status 200


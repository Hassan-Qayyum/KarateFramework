@ignore
Feature: API Authentication
  Background:
    * url  "https://reqres.in"

  Scenario: Authentication Token
    * def params =

    # Passing email and password from the userDetailsAuthentication3.feature

    """
    {
      email: '#(email)',
      password: '#(password)'
    }
    """



   # """
   # {
     # email: "eve.holt@reqres.in",
       # password: "pistol"
   # }
   #  """


    Given path '/api/register/'

  #   And form field email = "eve.holt@reqres.in"
  #   And form field password = "pistol"

    And form fields params
    When method post
    Then status 200
    And print 'response------', response

    * def accessToken =  response.token
    Then print 'accessToken----', accessToken

    # Now you can use the accessToken in requests like following

    # Given path ''
    # And header Authorization = 'Bearer' + accessToken
    # When method get
    # Then status 200


Feature: validate get request
  Scenario: verify & store the specific user email
    Given url "https://gorest.co.in/public/v2/users"
    When method get
    And def userEmail = []
    When eval for(let i=0; i<response.length; i++) if(response[i].name=="Oormila Varrier") userEmail=response[i].email
    And karate.write(userEmail, "Email.txt")
    Then status 200

  Scenario: verify and store the full user information
    Given url "https://gorest.co.in/public/v2/users"
    When method get
    And def fullUserInfo = []
    When eval for(let i=0; i<response.length; i++) if(response[i].name=="Oormila Varrier") fullUserInfo=response[i]
    And karate.write(fullUserInfo,"fullUserInfo.txt")
    Then status 200

  Scenario: verify and store the all users info
    Given url "https://gorest.co.in/public/v2/users"
    When method get
    And def fullAPIResponse = response
    And karate.write(fullAPIResponse,"fullAPIResponse.txt")
    Then status 200

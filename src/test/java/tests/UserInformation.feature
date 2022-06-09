Feature:  validate get request
  Scenario: verify username information from the response
    Given url 'https://gorest.co.in/public/v2/users'
    When method get
    Then status 200
    When def outputData = []
    And eval for(let i=0; i<response.length; i++) if(response[i].name=="Durgeshwari Varma") outputData=response[i].email
    Then print outputData

Feature: Reuse Feature
  Scenario Outline: Verify current weather data
    Given url '<url>'
    When method get
    Then status 200
    And def res = response.weather[0].description
    Then print res

    Examples:
      | url                                                                                                   |
      | https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=59befc870ade31863727cd052741fd7b |

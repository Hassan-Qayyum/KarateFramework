Feature: validate get request

  @ignore
  Scenario: verify current weather data
    Given url 'https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=59befc870ade31863727cd052741fd7b'
    When method get
    Then status 200
    And match response.weather[0].description contains 'broken clouds'
    And match response.weather[0].description !contains 'Cloudy'
    And match response.weather[0].description == '#string'
    And match response.weather[0].description != '#number'
    And match response.coord.lon == 139
    And match response.coord.lon != 140
    And match response.coord.lon == '#number'
    And match response.coord.lon != '#string'


  Scenario Outline: Verify current weather data
    Given url '<url>'
    When method get
    Then status 200
    And def des = response.weather[0].description
    Then print des
    And def otherResponse = call read('classpath:tests/ReusableFeatureExample.feature')
    Then print otherResponse.res

    #Calling 1 feature file into another feature file

    Examples:
      | url                                                                                                   |
      | https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=59befc870ade31863727cd052741fd7b |

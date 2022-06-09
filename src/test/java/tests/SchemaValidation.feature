Feature: validate get request

  Scenario Outline: validate current weather data get
    Given url '<url>'
    When method get
    Then match each response.weather ==
    """
    {
      "id": "#number",
      "main": "#string",
      "description": "#string",
      "icon": "#string"
    }
    """

    Examples:
      | url                                                                                                   |
      | https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=59befc870ade31863727cd052741fd7b |

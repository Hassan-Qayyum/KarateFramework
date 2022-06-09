Feature: Pass Parameters
  Scenario: Calling feature file and passing parameter
    * def page = '2'
    * def myFeature = call read('passParametersInFeatureFiles1.feature') {pageNo: '#(page)'}
    Then print 'This is email field of passParametersInFeatureFiles1 feature file: ', myFeature.email
    Then print 'This is response of passParametersInFeatureFiles1 feature file: ', myFeature.response
    Then match myFeature.response.total_pages == 2

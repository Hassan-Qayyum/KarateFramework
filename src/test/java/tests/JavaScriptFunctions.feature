Feature: JS Functions & Loops
  Background:
    * url "https://reqres.in/api/users"

  @ignore
  Scenario: Simple function calling

    * def myFunc1 = function(){ return "Printing myFunc1 Value" }
    * def returnedData1 = call myFunc1
    Then print 'myFunc1------', returnedData1

    * def myFunc2 =
    """
    function(){
    return "Printing myFunc2 Value"
    }
    """

    * def returnedData2 = call myFunc2
    Then print 'myFunc2------', returnedData2
    And print 'Printing data of both functions with API response----', returnedData1, returnedData2, response


  Scenario: Functions calling with response and loops

    Given params  "page=2"
    When method get
    * def data = response.data
    * def myFunc =
    """
    function(arg){

      if(arg.length==6){
        for(let i=0; i<arg.length; i++){
          if(arg[i].id==6){
            return arg[i]
          }
        }
      }
      else{
        return arg
      }
    }
    """

    * def returnedData = call myFunc data
    Then print 'userDetails -----------', returnedData
    And status 200

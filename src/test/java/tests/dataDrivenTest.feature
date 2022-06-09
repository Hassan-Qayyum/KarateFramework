Feature: Data Driven Test
  Background:
    * url "https://jsonplaceholder.typicode.com"

  @ignore
  Scenario Outline: Create an user using scenario outline table

    Given path "/posts"
    And request {"userId":<userId>,"title":<title>,"body":<body>}
    When method post
    Then print 'response------', response
    And status 201

    Examples:
      | userId | title  | body   |
      | 1      | "SQAE" | "Post" |


  Scenario Outline: Create an user by reading csv file
    Given path "/posts"
    And request {"userId":<userId>,"title": <title>, "body": <body>}
    When method post
    Then status 201
    And print 'response1------', response

    * def userId = response.userId

    Given path "/posts/"+userId
    When method get
    Then status 200
    And print 'response2------', response
    And match response contains {userId: '#(userId)'}

    Examples:
      | read("../data/inputData.csv") |

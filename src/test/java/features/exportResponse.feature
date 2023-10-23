Feature: To create the Job entry in the application
  Use POST /normal/webapi/add to create job entry in the application

  Scenario Outline: cat name: <name>
    Given url demoBaseUrl
    And path 'cats'
    And request { name: '<name>', age: <age> }
    When method post
    Then status 200
    And match response == { id: '#number', name: '<name>' }

    # the single cell can be any valid karate expression
    # and even reference a variable defined in the Background
    Examples:
      | read('kittens.csv') |


  Scenario: To create the Job Entry using XML request body formt
    Given path '/normal/webapi/add'
    * def body = read("data/jobEntry.xml")
    And request body
    And headers {Accept : 'application/json', Content-Type: 'application/xml'}
    When method post
    And status 201
    And print response
    And match response.jobId == 7
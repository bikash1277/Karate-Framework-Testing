Feature: get API with query parameter

  Scenario: get all active user details
#	* def query = {status:'active'}
#	* def query = {status:'active',gender: 'male'}
    * def query = {status:'active',gender: 'male', id: 4187}

    Given url baseUrl+'/public/v2/users'
    And params query
    When method GET
    Then status 200
    * print response

  Scenario: get all active user details
    * def query = {status:'active'}

    Given url baseUrl+'/public/v2/users'
    And params query
    When method GET
    Then status 200
    * def jsonResponse = response
    * print jsonResponse
    * def userCount = jsonResponse.length
    * print userCount
    * match userCount == 10
	
	
	
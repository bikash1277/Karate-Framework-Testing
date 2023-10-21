Feature: update user using put API

  Background:
    * url 'https://gorest.co.in'
    * def requestPayload =
	"""
	{
    "status": "active","email" : 'Tom.Shel@mmail.com'
	}
	"""

  Scenario: update user using put API
    Given path '/public/v2/users/30037'
    And request requestPayload
    And header Authorization = 'Bearer ' + tokenID
    When method put
    Then status 200
    * print response
    And match $.id == '#present'
    And match $.email == 'Tom.Shel@mmail.com'
    And match $.gender == 'male'
    And match $.status == 'active'
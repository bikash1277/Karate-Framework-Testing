Feature: Create user using post API
Background:
	* url 'https://gorest.co.in'
	* def requestPayload = 
	"""
	{
    "name": "Tommy Sen",
    "email": "Tom.Sen@gmail.com",
    "gender": "male",
    "status": "active"
	}
	"""

Scenario: Create user using POST API
	Given path '/public/v2/users'
	And request requestPayload
	And header Authorization = 'Bearer ' + tokenID
	When method post
	Then status 201
	* print response
	And match $.id == '#present'
	And match $.email == 'Tom.Sen@gmail.com'
	And match $.gender == 'male'
	And match $.status == 'active' 
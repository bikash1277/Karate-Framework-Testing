Feature: Create random mail using post API
Background:
	* url 'https://gorest.co.in'
	* def requestPayload = read('classpath:src/test/resources/payload/user.json')
	* print requestPayload
Scenario: Create user using POST API
	Given path '/public/v2/users'
	And request requestPayload
	And header Authorization = 'Bearer ' + tokenID
	When method post
	Then status 201
	* print response
	And match $.id == '#present'
	And match $.email == '#present'
	And match $.gender == 'male'
	And match $.status == 'active' 
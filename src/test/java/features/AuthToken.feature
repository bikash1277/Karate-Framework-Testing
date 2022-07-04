Feature: get API with auth code

Scenario: get all active user details with Auth code
* print tokenID
	Given header Authorization = 'Bearer '+tokenID 
	Given url baseUrl+'/public/v2/users'
	And path '4223'
	When method GET
	Then status 200
	* print response
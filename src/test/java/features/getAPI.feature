Feature: get API 

Scenario: get user details
	Given url baseUrl+'/public/v2/users'
#	Given url 'https://gorest.co.in/public/v2/users'
	And path '4249'
	When method GET
	Then status 200
	* print response
	* def jsonResponse = response
	* print jsonResponse
	* def actName = jsonResponse.name
	* def actId = jsonResponse.id
	* def actEmail = jsonResponse.email 
	* print actName
	* match actName == 'Rep. Abani Bhattathiri'
	* match actId == 4249
	* match actEmail == 'rep_abani_bhattathiri@reinger-beahan.com'
	

Scenario: get user details -not found
	Given url baseUrl+'/public/v2/users'
	And path '3'
	When method GET
	Then status 404
	* print response
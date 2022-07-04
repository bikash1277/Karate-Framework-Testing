Feature: Delete user using delete API
Background:
	* url 'https://gorest.co.in'
	* def random_string =
	"""
	function(s){
		var text = "";
		var pattern = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		for (var i=0;i<s; i++)
			text +=pattern.charAt(Math.floor(Math.random()* pattern.length()));
			return text;
			}
	"""
	* randomString=random_string(10)
	* def requestPayload = 
	"""
	{
    "name": "Johnson",
    "gender": "male",
    "status": "active"
	}
	"""
	* requestPayload.email=randomString+"@outlook.com"
	* print requestPayload
	
Scenario: Delete user using Delete API
	#create user
	Given path '/public/v2/users'
	And request requestPayload
	And header Authorization = 'Bearer ' + tokenID
	When method post
	Then status 201
	* print response
	And match $.id == '#present'
	
	#fetch call 
	* def userId = $.id
	* print userId
	
	#delete call
	Given path '/public/v2/users/'+userId
	And header Authorization = 'Bearer ' + tokenID
	When method delete
	Then status 204
	* print response
	
	
	#get Same user
	Given path '/public/v2/users'
	And path userId
	And header Authorization = 'Bearer ' + tokenID
	When method GET
	Then status 404
	And match $.message == "Resource not found"
	
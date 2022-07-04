Feature: Create random mail using post API
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
    "name": "John",
    "gender": "male",
    "status": "active"
	}
	"""
	* requestPayload.email=randomString+"@outlook.com"
	* print requestPayload
	
Scenario: Create user using POST API
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
	
	#put call
	* def requestPutPayload = 
	"""
	{
    "gender": "female",
    "status": "inactive"
	}
	"""
	Given path '/public/v2/users/'+userId
	And request requestPutPayload
	And header Authorization = 'Bearer ' + tokenID
	When method put
	Then status 200
	* print response
	And match $.id == '#present'
	And match $.id == userId
	And match $.name == 'John'
	And match $.gender == 'female'
	And match $.status == 'inactive' 
	And match $.email == requestPayload.email
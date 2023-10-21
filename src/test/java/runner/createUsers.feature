Feature: create user by API

  Background:
    * url 'https://gorest.co.in'
    * header Authorization = 'Bearer a1d248a1d1c837bd6e0c74c7fba0e36ea2cf4b38cf23fe6f6d6c23c3e1f9fb8d'

  Scenario: Create a user
    Given path '/public/v2/users'
    And request { "id": "9002" , "name": "Shaun", "email": "Shaun.mishra@gmail.com", "gender": "male", "status": "active" }
    When method POST
    Then status 201
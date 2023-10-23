Feature: check return users by API

  Background:
    * url 'https://gorest.co.in'
    * header Authorization = 'Bearer a1d248a1d1c837bd6e0c74c7fba0e36ea2cf4b38cf23fe6f6d6c23c3e1f9fb8d'

  Scenario: Get all users having name Bilva Dhawan
    Given path '/public/v2/users'
    And param name = 'Bilva Dhawan'
    And param gender = 'male'
    When method get
    Then status 200

    And def userResponse = response
    Then match userResponse.result[*].name contains ["Bilva"]
Feature: user request with headers

  Scenario: pass user request with headers_part1
    Given header Accept-Encoding = 'gzip, deflate, br'
    And header User-Agent = 'PostmanRuntime/7.28.4'
    And header Connection = 'keep-alive'
    And header Authorization = 'Bearer a1d248a1d1c837bd6e0c74c7fba0e36ea2cf4b38cf23fe6f6d6c23c3e1f9fb8d'

    When url baseUrl+'/public/v2/users'
    And path '4223'
    When method GET
    Then status 200
    * print response


  Scenario: pass user request with headers_part2
    * def request_headers = {Accept-Encoding : 'gzip, deflate, br', User-Agent : 'PostmanRuntime/7.28.4' ,Connection : 'keep-alive' , Authorization : 'Bearer a1d248a1d1c837bd6e0c74c7fba0e36ea2cf4b38cf23fe6f6d6c23c3e1f9fb8d'}
    Given headers request_headers
    When url baseUrl+'/public/v2/users'
    And path '4223'
    When method GET
    Then status 200
    * print response


  Scenario: pass user request with headers_part3
    * configure headers = {Accept-Encoding : 'gzip, deflate, br', User-Agent : 'PostmanRuntime/7.28.4' ,Connection : 'keep-alive' , Authorization : 'Bearer a1d248a1d1c837bd6e0c74c7fba0e36ea2cf4b38cf23fe6f6d6c23c3e1f9fb8d'}
    Given url baseUrl+'/public/v2/users'
    And path '4223'
    When method GET
    Then status 200
    * print response
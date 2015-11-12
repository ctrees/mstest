# features/restAPI.feature
Feature: Documenting and Testing the restAPI
The idea is to test and document just the restAPI

Scenario: Get an access token
    Given that I want to find a "category"
    When I request "/categories"
    Then the response is JSON
    And the response has a "name" property
    And the type of the "id" property is numeric
    Then the response status code should be 200
    
Scenario: Get an access token via login
    Given that I want to access the api
    And I have a JSON message:
    """
    { name: "customer_user", password: "test" }
    """
    When I post JSON message to  "/login"
    Then the response is JSON
    And the response has a "token" property
    And the type of the "token" property is a string
    Then the response status code should be 200
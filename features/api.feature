Feature: API Testing
  Scenario: Verify GET request to fake JSON API
    Given the API endpoint is set to "https://app.beeceptor.com/mock-server/fake-json-api"
    When I send a GET request
    Then the response status code should be 200
    Then the response should contain the field "data"

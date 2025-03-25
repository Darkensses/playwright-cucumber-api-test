@user
Feature: User teste scenarios

  Scenario: Verify GET request to retrieve users
    Given the API endpoint is set to "https://fake-json-api.mock.beeceptor.com/users"
    When I send a GET request
    Then the response status code should be 200
    Then the response should contain the field "data"
    Then the data response should have a length of 10

  Scenario: All the users should have the same field
    Given the API endpoint is set to "https://fake-json-api.mock.beeceptor.com/users"
    When I send a GET request
    Then the response status code should be 200
    Then all the data elements should have the field <field>

    Examples:
        | field   |
        | id      |
        | name    |
        | country |
        | photo   |

  Scenario: Assert that the user's photo is a PNG
    Given the API endpoint is set to "https://fake-json-api.mock.beeceptor.com/users/<id>"
    When I send a GET request
    Then the response status code should be 200
    Then the response should contain the field "data"
    Then the user's photo format should be PNG

		Examples:
		| id |
		| 1  |
		| 5  |
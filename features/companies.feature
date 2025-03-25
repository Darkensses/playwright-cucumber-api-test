@company
Feature: Companies test scenarios

	Scenario: Verify GET request to retrieve companies
		Given the API endpoint is set to "https://fake-json-api.mock.beeceptor.com/companies"
    When I send a GET request
    Then the response status code should be 200
    Then the response should contain the field "data"
    Then the data response should have a length of 11

	Scenario: A company should contain a specific field
		Given the API endpoint is set to "https://fake-json-api.mock.beeceptor.com/companies/<id>"
    When I send a GET request
    Then the response status code should be 200
		Then the response should contain the field "data.<field>"

		Examples:
				| id | field         |
				| 1  | marketCap     |
				| 5  | employeeCount |

	Scenario: Validate company employee count does not exceed the specified limit
		Given the API endpoint is set to "https://fake-json-api.mock.beeceptor.com/companies/<id>"
    When I send a GET request
    Then the response status code should be 200
		Then the employee count should be less than <employeeCount>

		Examples:
				| id  | employeeCount |
				| 1   | 3000          |
				| 10  | 10000         |

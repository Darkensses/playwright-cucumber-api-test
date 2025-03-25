# Playwright Cucumber API Test

This project uses Playwright and Cucumber to test a mock API endpoint. It verifies the response status and the presence of specific fields in the response data.

## Installation
1. Clone the repository.
2. Run the following command to install the dependencies:
   ```
   npm install
   ```

## Running Tests
To execute the tests, run:
```
npm test
```

## Project Structure
- `features/`
  - `api.feature` (Cucumber feature file)
  - `step_definitions/`
    - `apiSteps.js` (Step definitions using Playwright and Axios)
- `cucumber.js` (Cucumber configuration)
- `package.json` (Project dependencies and scripts)

## Test Scenario
The test verifies that the GET request to the following endpoint returns a 200 status and contains a field named `data`:
```
https://app.beeceptor.com/mock-server/fake-json-api
```

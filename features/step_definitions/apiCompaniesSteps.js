const { Then } = require('@cucumber/cucumber');
const { expect } = require('@playwright/test');

Then('the employee count should be less than {int}', function(employeeCount) {
	expect(this.response.data.employeeCount).toBeLessThan(employeeCount);
})
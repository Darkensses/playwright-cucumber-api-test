const { Given, When, Then } = require('@cucumber/cucumber');
const { expect } = require('@playwright/test');
const axios = require('axios');

Given('the API endpoint is set to {string}', function (endpoint) {
    this.endpoint = endpoint;
});

Given(/^I have a (user|company) with id (\d+)$/, function (_,id) {
    this.endpoint += `/${id}`;
})

When('I send a GET request', async function () {
    const response = await axios.get(this.endpoint);
    this.response = response;
});

Then('the response status code should be {int}', function (statusCode) {
    expect(this.response.status).toBe(statusCode);
});

Then('the response should contain the field {string}', function (field) {
    expect(this.response).toHaveProperty(field);
});

Then('the data response should have a length of {int}', function(lenght){
	expect(this.response.data).toHaveLength(lenght);
});

Then(/^all the data elements should have the field ([^"]*)$/, function (field) {
    expect(this.response.data.every(item => item.hasOwnProperty(field))).toBe(true);
});
const { Then } = require('@cucumber/cucumber');
const { expect } = require('@playwright/test');
const axios = require('axios');

Then('the user\'s photo format should be PNG', async function () {
	// EZ
	// expect(this.response.data.photo).toContain('.jpg');

	// Hardcore
	const response = await axios.get(this.response.data.photo, {responseType: 'arraybuffer'});
	// PNG Format Header
	const magicNumber = Buffer.from([0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A]);
	expect(response.data.slice(0,8)).toEqual(magicNumber);
})
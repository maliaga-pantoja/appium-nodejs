const webdriverio = require('webdriverio');
const androidOptions = require('./helpers/caps').opts;
const assert = require('chai').assert;

describe('Create Chrome web session', function () {
  let browser;

  before(async function () {
    browser = await webdriverio.remote(androidOptions);
  });

  after(async function () {
    return await browser.deleteSession();
  });

  it('should create and destroy Android browser session', async function () {
    // Navigate to google.com
    // const client = await webdriverio.remote(androidOptions);
    await browser.url('https://www.google.com');
    await browser.saveScreenshot();
    const title = await browser.getTitle();
    assert.equal(title, 'Google');
  });
});

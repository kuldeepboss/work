const os = require('os');
const hostname = os.hostname();
const platform = os.platform();
console.log(`Hostname: ${hostname}`);
console.log(`Platform: ${platform}`);
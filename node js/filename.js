const fs = require('fs');
const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Enter file name: ', (fileName) => {
    try {
        const data = fs.readFileSync(fileName, 'utf8');
        console.log('File Content:\n', data);
    } catch (err) {
        console.error('Error reading file:', err.message);
    }
    rl.close();
});

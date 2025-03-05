const fs = require('fs');
const path = require('path');

// Get directory name from command line arguments
const dirPath = process.argv[2];

if (!dirPath) {
    console.error('Please provide a directory path as an argument.');
    process.exit(1);
}

// Resolve absolute path
const fullPath = path.resolve(dirPath);

// Read directory contents
fs.readdir(fullPath, (err, files) => {
    if (err) {
        console.error('Error reading directory:', err.message);
        process.exit(1);
    }
    
    console.log(`Contents of ${fullPath}:`);
    files.forEach(file => console.log(file));
});
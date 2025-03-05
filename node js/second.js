const fs = require('fs');

// Constants
const SECONDS_IN_A_MINUTE = 60;
const MINUTES_IN_AN_HOUR = 60;
const HOURS_IN_A_DAY = 24;
const DAYS_IN_A_YEAR = 365;
const YEARS_IN_A_CENTURY = 100;

// Calculate seconds in a year
const secondsInYear = SECONDS_IN_A_MINUTE * MINUTES_IN_AN_HOUR * HOURS_IN_A_DAY * DAYS_IN_A_YEAR;

// Calculate seconds in a century
const secondsInCentury = secondsInYear * YEARS_IN_A_CENTURY;

// Prepare the output text
const output = `Seconds in a year: ${secondsInYear}\nSeconds in a century: ${secondsInCentury}`;

// Write to a file
fs.writeFile('seconds.txt', output, (err) => {
    if (err) {
        console.error('Error writing to file:', err);
    } else {
        console.log('Results written to seconds.txt');
    }
});

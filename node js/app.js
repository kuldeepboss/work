// app.js - Importing and Using the math module
// Import the user-defined math module
const math = require('./math');

const num1 = 20;
const num2 = 10;

console.log(`Addition of ${num1} and ${num2}:`, math.addition(num1, num2));
console.log(`Subtraction of ${num1} and ${num2}:`, math.subtraction(num1, num2));
console.log(`Multiplication of ${num1} and ${num2}:`, math.multiplication(num1, num2));
console.log(`Division of ${num1} and ${num2}:`, math.division(num1, num2));
try {
    console.log(`Division of ${num1} by 0:`, math.division(num1, 0));
} catch (error) {
    console.error("Error:", error.message);
}

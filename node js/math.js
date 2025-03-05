// math.js - User-defined Math Module
// Function to perform addition
function addition(a, b) {
    return a + b;
}
function subtraction(a, b) {
    return a - b;
}
function multiplication(a, b) {
    return a * b;
}
function division(a, b) {
    if (b === 0) {
        throw new Error("Division by zero is not allowed");
    }
    return a / b;
}
module.exports = {
    addition,
    subtraction,
    multiplication,
    division
};

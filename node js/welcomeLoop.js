const message = "Welcome to Node JS";
const iterations = 5;
const delay = 1000;

function displayMessage(i) {
    if (i < iterations) {
        setTimeout(() => {
            console.log(`${i + 1}: ${message}`);
            displayMessage(i + 1);
        }, delay);
    }
}
displayMessage(0);

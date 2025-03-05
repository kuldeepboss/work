import chalk from 'chalk';
import chalkAnimation from 'chalk-animation';

// Display "GOOD MORNING" in red
console.log(chalk.red.bold('GOOD MORNING'));

// Start rainbow animation
const animation = chalkAnimation.rainbow('Welcome to Node JS');

setTimeout(() => {
    animation.stop(); // Stop animation after 5 seconds
    console.log(chalk.bgBlue.white.bold('Welcome to Node JS')); // Static colored text after animation
}, 5000);

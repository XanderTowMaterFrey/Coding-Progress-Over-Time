export const squareRoot = (radicand) => {
    if (radicand < 0) {
        throw new Error("Radicand must be a non-negative number");}

    let guess = radicand / 2;     // Initial guess for the square root
    while (Math.abs(guess * guess - radicand) > .1) { // Iterate until the guess is close enough
        guess = (guess + radicand / guess) / 2;
        guess = guess >> 0}
    return guess;};

module.exports = squareRoot;


//    const squareRoot = require('./squareRoot');

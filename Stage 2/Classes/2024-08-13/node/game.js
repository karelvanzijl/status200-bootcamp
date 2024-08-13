const readline = require("readline").createInterface({
    input: process.stdin,
    output: process.stdout,
});

let randomNumber;
let attemps;

function showWelcome() {
    console.log("Welcome to the Number Guessing Game!");
    console.log("I have selected a number between 1 and 100.");
    console.log("Can you guess what it is?");

    randomNumber = Math.floor(Math.random() * 100) + 1;

    attemps = 0;

    guessNumber();
}

function guessNumber() {
    // Empty line
    console.log("");

    readline.question("Guess the number: ", function (input) {
        // Store input
        const number = parseInt(input);

        // Validate input
        if (isNaN(number)) {
            console.error("Input must be a number");
            guessNumber();
        } else if (number < 1 || number > 100) {
            console.error("Input must be a number between 1 and 100");
            guessNumber();
        } else {
            attemps = attemps + 1;

            // Determine right output
            if (input < randomNumber) {
                console.log("Too low");
                guessNumber();
            } else if (input > randomNumber) {
                console.log("Too high");
                guessNumber();
            } else {
                console.log(
                    "Congratulations! You've guessed the number, it took you " +
                        attemps +
                        " attempts"
                );

                // Close the input interface
                readline.close();
            }
        }
    });
}

showWelcome();

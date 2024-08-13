const readline = require("readline").createInterface({
    input: process.stdin,
    output: process.stdout,
});

let randomNumber;
let attempts = 0;
let attemptHistory = [];

function initializeGame() {
    // Welcome message
    console.log("Welcome to the Number Guessing Game!");
    console.log("I have selected a number between 1 and 100.");
    console.log("Can you guess what it is?");

    // Start the guessing game
    startGame();
}

function startGame() {
    // Generate a random number between 1 and 100
    randomNumber = Math.floor(Math.random() * 100) + 1;

    // Add empty line
    console.log("");

    // Start guessing
    guessNumber();
}

function guessNumber() {
    readline.question("Enter your guess: ", function (input) {
        const guess = parseInt(input);
        attempts++;

        // Validate the input
        if (isNaN(guess) || guess < 1 || guess > 100) {
            console.error("Please enter a number between 1 and 100.");
            console.log("");
            guessNumber();
        } else {
            // Provide feedback based on the guess
            if (guess < randomNumber) {
                console.log("Too low! Try again.");
                console.log("");
                guessNumber();
            } else if (guess > randomNumber) {
                console.log("Too high! Try again.");
                console.log("");
                guessNumber();
            } else {
                console.log("");
                console.log("Congratulations!!!");
                console.log(
                    "You've guessed the number in " + attempts + " attempts."
                );

                // Store the number of attempts in the history array
                attemptHistory.push(attempts);

                // Calculate the average attempts
                const averageAttempts = calculateAverage(attemptHistory);
                console.log(
                    "Your average number of attempts is: " +
                        averageAttempts.toFixed(2)
                );
                console.log("");

                playAgain();
            }
        }
    });
}

function calculateAverage(attemptsArray) {
    const sum = attemptsArray.reduce(function (a, b) {
        return a + b;
    }, 0);
    return sum / attemptsArray.length;
}

function playAgain() {
    readline.question(
        "Do you want to play again? (yes/no): ",
        function (input) {
            if (input.toLowerCase() === "yes") {
                attempts = 0;
                startGame();
            } else {
                console.log("Thanks for playing! Goodbye.");
                readline.close();
            }
        }
    );
}

// Start the game
initializeGame();

# Task

### Code from class

See [game.js](game.js)

### Number Guessing Game

1. **Welcome message**

    - Show a welcome message. This welcome message is only shown 1 time when the program is started. It doesn't show when the user decided to play another game _(see point 9)_.

2. **Generate a Random Number:**

    - The program will generate a random number between a specified range (e.g., 1 to 100).
    - This can be done using `Math.random()` and `Math.floor()`.

3. **User Input:**

    - The program will prompt the user to guess the number.
    - The input should be validated to ensure it is a number within the specified range.

4. **Provide Feedback:**

    - After each guess, the program should tell the user if their guess is too high, too low, or correct.
    - If the guess is incorrect, the user should be prompted to guess again.

5. **Track Number of Attempts:**

    - The program should keep track of the number of attempts the user makes to guess the correct number.

6. **End Game:**

    - When the user guesses the correct number, the program should congratulate them and display the number of attempts it took.
    - The program should then ask if the user wants to play again or exit. By typing `yes`, the game restarts.
      Remember: No welcome message is shown.

7. **Replay or Exit:**

    - If the user chooses to play again, the game should start over, but the program should continue to remember the number of attempts from previous games.
    - If the user chooses to exit, the program should display a final message and terminate.

8. **Remember Attempts:**

    - The program should store the number of attempts made in each game session.
    - These attempts should be remembered across multiple games within the same session.

9. **Calculate and Display Average Attempts:**

    - After each game session (i.e., after the user guesses the correct number), the program should calculate the average number of attempts it took to guess the correct number across all games in the session.
    - This average should be displayed to the user as part of the end game message.

# The `reduce` method

The `reduce` method is a powerful array method in JavaScript that processes each element in an array and reduces it to a single value (e.g., sum, product, average). It applies a callback function to an accumulator and each element in the array (from left to right), reducing the array to a single output value.

### Components of `reduce`

1. **Callback Function (`(a, b) => a + b`)**:

    - The callback function takes two arguments:
        - `a` (also called the accumulator): This is the accumulated value from the previous iteration.
        - `b` (also called the current value): This is the current element in the array that is being processed.
    - The function `a + b` adds the current value `b` to the accumulator `a`.

2. **Initial Value (`0`)**:
    - This is the initial value of the accumulator (`a`) before the `reduce` method starts iterating through the array. In this case, it's set to `0` because we're summing the values, so we start with zero.

### How It Works

Let's break down the process with an example. Suppose `attemptsArray` is `[3, 5, 2]`, which represents the number of attempts in three different games.

-   **Iteration 1**:

    -   `a` (initial value) = 0
    -   `b` (first element in array) = 3
    -   Result after this iteration: `0 + 3 = 3`

-   **Iteration 2**:

    -   `a` (result from previous iteration) = 3
    -   `b` (second element in array) = 5
    -   Result after this iteration: `3 + 5 = 8`

-   **Iteration 3**:
    -   `a` (result from previous iteration) = 8
    -   `b` (third element in array) = 2
    -   Result after this iteration: `8 + 2 = 10`

After all iterations, the `reduce` method returns `10`, which is the sum of all elements in `attemptsArray`.

### Final Output

-   The `reduce` method returns the sum of all numbers in the array, which is then stored in the `sum` variable.

So, in the code

```JS
const sum = attemptsArray.reduce(function(a, b) {
    return a + b
}, 0);

return sum / attemptsArray.length;
```

the `reduce` method iterates through the `attemptsArray`, adds up all the elements, and stores the total sum in the `sum` variable. This sum is then used to calculate the average number of attempts.

# Exercise: For Loop

Use the code we created for displaying the Fibonacci sequence in [the previous lesson](./27-js-for.md).

## Setup

1. Create a new folder called `js-for-exercise`
2. Create a subfolder called `js`
3. Create `index.html` in the main folder
4. Create `scripts.js` in the `js` folder
5. Open the project folder in VS Code
6. Copy the code from the previous lesson into `scripts.js`

```javascript
let fib1 = 0;
let fib2 = 1;
console.log(fib1);
console.log(fib2);

function showFibonacci(n) {
    for (let i = 2; i < n; i++) {
        let next = fib1 + fib2;
        console.log(next);
        fib1 = fib2;
        fib2 = next;
    }
}

showFibonacci(10);
```

#### Validation

Validate the user input to ensure it is a positive integer. If the input is invalid, display an error message.

## Task 1: Fibonacci Sequence

Create a web page that:

-   Allows the user to input a number
-   Displays the Fibonacci sequence up to that number using a `for` loop when the user clicks a button with the text "Show Fibonacci Sequence"

#### Expected Output

When the user inputs a number, the Fibonacci sequence should be displayed in a paragraph below the button. For example, if the user inputs `10`, the output should be:

`0, 1, 1, 2, 3, 5, 8`

If a user inputs `20`, the output should be:

`0, 1, 1, 2, 3, 5, 8, 13`

## Task 2: Powers of 2

Add a second button with the text "Show Powers of 2" that displays the powers of 2 up to the number entered by the user.

#### Expected Output

When the user clicks the "Show Powers of 2" button, the powers of 2 should be displayed in a paragraph below the button. For example, if the user inputs `10`, the output should be:

`1, 2, 4, 8`

If a user inputs `20`, the output should be:

`1, 2, 4, 8, 16`

## Task 3: Factorial Calculation

Add a third button with the text "Calculate Factorial" that calculates the factorial of the number entered by the user.

#### Expected Output

When the user clicks the "Calculate Factorial" button, the factorial of the number should be displayed in a paragraph below the button. For example, if the user inputs `5`, the output should be:

`120`

#### Hint

A factorial of a number `n` is the product of all positive integers up to `n`. For example, `5! = 5 * 4 * 3 * 2 * 1 = 120`.

## Navigation

1. [Overview](readme.md)
2. [Return Statement](./01-return-statement.md)
3. [Function Arguments & Parameters](./02-function-arguments-parameters.md)
4. [Nested Functions](./03-nested-function-call.md) ← _You are here_
5. [Arrays Introduction Part 1](./04-arrays-introduction-part-1.md)

---

# Functions Calling Other Functions

## What Does This Mean?

You already know how to call a function using `onclick`. Now we'll learn that **functions can call other functions** inside their code block. This is like one function asking another function to help it do its job.

This is useful because it helps us break down complex tasks into smaller, manageable pieces. Each function can focus on one specific task, making our code cleaner and easier to understand.

## Simple Example: One Function Calls Another

```html
<button onclick="sayHello()">Click Me</button>
<button onclick="sayGoodbye()">Click Me Too</button>
<p id="message"></p>
```

```javascript
// The function `sayHello` calls another function `showMessage`
function sayHello() {
    showMessage("Hello World!");
}

// This function `sayGoodbye` calls `showMessage` too
function sayGoodbye() {
    showMessage("Goodbye World!");
}

// This function displays a message in the HTML
function showMessage(text) {
    document.getElementById("message").textContent = text;
}
```

When you click the first button:

1. It runs `sayHello()`, which calls `showMessage("Hello World!")`.
2. `showMessage` then updates the HTML with "Hello World!".

When you click the second button:

1. It runs `sayGoodbye()`, which calls `showMessage("Goodbye World!")`.
2. `showMessage` updates the HTML with "Goodbye World!".

_Both functions (`sayHello` and `sayGoodbye`) use the same helper function `showMessage` to display text. This is a great way to reuse code!_

## Another Example: One Function Calls Other Functions

```html
<button onclick="greetUser()">Greet User</button>
<p id="greeting"></p>
```

```javascript
function greetUser() {
    const userName = getUserName(); // Call getUserName function
    const greetingMessage = createGreeting(userName); // Call createGreeting function
    displayGreeting(greetingMessage); // Call displayGreeting function
}

function getUserName() {
    return "Alice"; // Simulate getting a user's name
}

function createGreeting(name) {
    return "Hello, " + name + "!"; // Create a greeting message
}

function displayGreeting(message) {
    document.getElementById("greeting").textContent = message; // Show the greeting
}
```

When you click the button:

1. `greetUser()` is called.
2. `greetUser()` calls `getUserName()`
    - Which returns the value "Alice"
    - This returned value is stored in `userName`
3. `greetUser()` then calls `createGreeting(userName)`
    - Which returns the value "Hello, Alice!"
    - This returned value is stored in `greetingMessage`
4. `greetUser()` then calls `displayGreeting(greetingMessage)`
    - Which displays "Hello, Alice!" in the HTML

## More Examples

### Example 1: Simple Calculator

```html
<button onclick="doMath()">Calculate 5 + 3</button>
<p id="result"></p>
```

```javascript
function doMath() {
    const answer = addNumbers(5, 3); // Call addNumbers function
    showAnswer(answer); // Call showAnswer function
}

function addNumbers(a, b) {
    return a + b;
}

function showAnswer(result) {
    document.getElementById("result").textContent = "Answer: " + result;
}
```

When button is clicked:

1. `doMath()` runs
2. `doMath()` calls `addNumbers(5, 3)` which returns `8`
3. `doMath()` calls `showAnswer(8)` which displays "Answer: 8"

### Example 2: Greeting a User

```html
<input type="text" id="nameInput" placeholder="Enter your name" />
<button onclick="greetUser()">Say Hello</button>
<p id="greeting"></p>
```

```javascript
function greetUser() {
    const userName = getName(); // Call getName function
    const message = createGreeting(userName); // Call createGreeting function
    displayMessage(message); // Call displayMessage function
}

function getName() {
    return document.getElementById("nameInput").value;
}

function createGreeting(name) {
    return "Hello, " + name + "! Welcome!";
}

function displayMessage(text) {
    document.getElementById("greeting").textContent = text;
}
```

When button is clicked with input "John":

1. `greetUser()` runs
2. `greetUser()` calls `getName()` which returns "John"
3. `greetUser()` calls `createGreeting("John")` which returns "Hello, John! Welcome!"
4. `greetUser()` calls `displayMessage("Hello, John! Welcome!")` which shows the message

## Practice Exercises

Try these step by step:

### Exercise 1: Two-Step Process

Create a button that:

1. Gets a number from an input field
2. Doubles that number
3. Shows the result

Write three separate functions: one to get the number, one to double it, and one to show the result.

### Exercise 2: Simple Greeting

Create a button that:

1. Gets a name from an input field
2. Creates a personalized greeting
3. Displays the greeting

Write separate functions for each step.

### Exercise 3: Age Calculator

Create a button that:

1. Gets birth year from input
2. Calculates current age (2024 - birth year)
3. Shows "You are X years old"

Break this into three functions.

## Key Takeaways

-   **Functions can call other functions** - this helps organize your code
-   **Break big tasks into smaller functions** - easier to understand and reuse
-   **Functions must return values** if you want to use their result in another function
-   **Start simple** - one function calling one other function
-   **Advanced**: You can call functions directly inside `onclick` like `onclick="showResult(double(5))"`

## Remember

Think of functions like helpers that can ask other helpers for assistance:

-   The main function (called by onclick) is like a manager
-   It delegates specific tasks to helper functions
-   Each helper function has one clear job
-   The manager coordinates all the helpers to complete the task

This makes your code:

-   **Easier to read** - each function has a clear purpose
-   **Easier to test** - you can test each function separately
-   **Reusable** - the same helper functions can be used in different places

# Why Do This?

Lets look at a more practical example where we can see how this can help us avoid repeating code and use a nested function call to execute a specific task our program needs to perform more than once.

**Simplefied ATM Example**

```javascript
function withdraw(amount) {
    let amount = document.getElementById("amount").value;
    amount = parseInt(amount);

    if (amount == "") {
        alert("Please enter an amount to withdraw.");
        return; // Exit the function early
    }
    if (amount <= 0) {
        alert("Amount must be greater than zero.");
        return; // Exit the function early
    }

    // Execute the withdrawal logic
}

function deposit(amount) {
    let amount = document.getElementById("amount").value;
    amount = parseInt(amount);

    if (amount == "") {
        alert("Please enter an amount to withdraw.");
        return; // Exit the function early
    }
    if (amount <= 0) {
        alert("Amount must be greater than zero.");
        return; // Exit the function early
    }

    // Execute the deposit logic
}

function refill(amount) {
    let amount = document.getElementById("amount").value;
    amount = parseInt(amount);

    if (amount == "") {
        alert("Please enter an amount to refill.");
        return; // Exit the function early
    }
    if (amount <= 0) {
        alert("Amount must be greater than zero.");
        return; // Exit the function early
    }

    // Execute the refill logic
}
```

**Duplicated Code**

Do you notice there's duplicate code in the `withdraw`, `deposit`, and `refill` functions? In other word, do you see the same code coming up in all three functions?

```javascript
// All three functions have this exact same code:

let amount = document.getElementById("amount").value;
amount = parseInt(amount);

if (amount == "") {
    alert("Please enter an amount to refill.");
    return; // Exit the function early
}
if (amount <= 0) {
    alert("Amount must be greater than zero.");
    return; // Exit the function early
}
```

**This is not ideal because:**

-   If we need to change the validation logic, we have to do it in three places.
-   If we forget to update one of the functions, it can lead to bugs.

**Can we do better?**

Wouldn't it be better if we could reuse the same code for checking the amount? One piece of code we can call from all three functions?

**Yes, we can! But how?**

We know functions are pieces of code that can be called when needed. Maybe we can create a new function that does the validation for us. Something like this:

```javascript
function getValidateAmount() {
    // Get the amount
    // Validate the amount
}
```

This function needs to return the amount if it's valid, or `false` if it's not. This way, we can use it in our `withdraw`, `deposit`, and `refill` functions.

**What would this look like?**

```javascript
function getValidateAmount() {
    let amount = document.getElementById("amount").value;
    amount = parseInt(amount);

    if (amount == "") {
        alert("Please enter an amount.");
        return false; // Invalid amount
    }
    if (amount <= 0) {
        alert("Amount must be greater than zero.");
        return false; // Invalid amount
    }

    return amount; // Valid amount
}
```

Did you notice the code inside `getValidateAmount()` is almost the same as the code we had in the `withdraw`, `deposit`, and `refill` functions?

The only difference is that it returns the amount if it's valid, or `false` if it's not.

**Refactored Code Example**

```javascript
/*
  This function return the amount if it's valid, or false if it's not.
*/
function getValidateAmount() {
    let amount = document.getElementById("amount").value;
    amount = parseInt(amount);

    if (amount == "") {
        alert("Please enter an amount.");
        return false; // Invalid amount
    }
    if (amount <= 0) {
        alert("Amount must be greater than zero.");
        return false; // Invalid amount
    }

    return amount; // Valid amount
}

function withdraw() {
    const amount = getValidateAmount(); // Call the validation function
    if (!amount) return; // Exit if validation fails

    // Proceed with withdrawal logic
}

function deposit() {
    const amount = getValidateAmount(); // Call the validation function
    if (!amount) return; // Exit if validation fails

    // Proceed with deposit logic
}

function refill() {
    const amount = getValidateAmount(); // Call the validation function
    if (!amount) return; // Exit if validation fails

    // Proceed with refill logic
}
```

**What did we do here?**

We created a new function called `getValidateAmount()` that handles the validation of the amount.

This function checks if the amount is valid and returns it if it is, or `false` if it's not.

Each of our main functions (`withdraw`, `deposit`, and `refill`) now calls `getValidateAmount()` to get the validated amount.

If our validation function `getValidateAmount()` returns `false`, we exit the main function early using `return;`. This prevents the rest of the code from running if the amount is invalid.

**Why is this better?**

Now, all three functions (`withdraw`, `deposit`, and `refill`) use the same validation logic by calling `getValidateAmount()`. This makes our code cleaner and easier to maintain:

-   When we need to change the validation logic, we only have to do it in one place.
-   Our functions are now shorter and easier to read.
-   We're less likely to make mistakes because we don't have duplicate code.

# Types of Functions

On July 28, we learned about [functions in JavaScript](../2025-07-28/04-javascript-functions.md). There are two main types of functions:

## Void Functions

These functions perform a task but do not return a value. They are often used for side effects, like updating the UI or logging messages. For example:

```javascript
function showMessage(message) {
    // console.log(message);
    // document.getElementById("output").textContent = message;
}
```

## Value Functions

These functions perform a task / calculation and return a value. They can be used to compute results or manipulate data. For example:

```javascript
function addNumbers(a, b) {
    return a + b;
}
```

So this function takes two numbers as parameters, adds them together, and returns the result. You can use it like this:

```javascript
// Define the function
function addNumbers(a, b) {
    return a + b;
}

// Call the function and store the result in a variable
let sum = addNumbers(5, 10);
```

### The `return` statement

The `return` statement is used to send a value back from the function. When you call the function, it gives you that value:

**Important:** once a function hits a `return` statement, it stops executin. Any code after `return`, inside the function, will not run.

```javascript
// Define the function
function validate(amout) {
    if (isNaN(amount)) {
        return "Not a number"; // Stops here
    } else if (amount <= 0) {
        return "Invalid amount"; // Stops here
    } else if (amount > 1500) {
        return "Too high"; // Stops here
    } else if (amount % 10 !== 0) {
        return "Must be a multiple of 10"; // Stops here
    }
    return "Valid number"; // Only runs if all previous conditions fail
}
```

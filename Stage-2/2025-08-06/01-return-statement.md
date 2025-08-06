## Navigation

1. [Overview](readme.md)
2. [Return Statement](./01-return-statement.md) ← _You are here_
3. [Function Arguments & Parameters](./02-function-arguments-parameters.md)
4. [Nested Functions](./03-nested-function-call.md)
5. [Arrays Introduction Part 1](./04-arrays-introduction-part-1.md)

---

# Return Statement in JavaScript

## What is a Return Statement?

The `return` statement is used to exit a function and optionally return a value back to the code that called the function. It's one of the most fundamental concepts in JavaScript programming.

## Basic Syntax

```javascript
function functionName() {
    // code here
    return value; // optional value
}
```

## Examples

### 1. Returning a Value

```javascript
function add(a, b) {
    return a + b;
}

const result = add(5, 3);
console.log(result); // Output: 8
```

### 2. Returning Without a Value

```javascript
function greet(name) {
    if (!name) {
        return; // exits function early, returns undefined
    }
    console.log("Hello " + name + "!");
}

greet(); // Function exits early, nothing is logged
greet("Alice"); // Output: Hello, Alice!
```

### 3. Multiple Return Statements

```javascript
function checkAge(age) {
    if (age < 0) {
        return "Invalid age";
    }
    if (age < 18) {
        return "Minor";
    }
    if (age < 65) {
        return "Adult";
    }
    return "Senior";
}

console.log(checkAge(25)); // Output: Adult
console.log(checkAge(10)); // Output: Minor
```

## Important Rules

1. **Function Exits**: When a `return` statement is executed, the function immediately exits
2. **Default Return**: Functions without a `return` statement return `undefined`
3. **No value**: If you use `return;` without a value, it returns `undefined`
4. **Only One Value**: You can only return one value
5. **Unreachable Code**: Code after a `return` statement won't execute

### ⚠️ Critical: Code After Return Never Runs!

```javascript
function example() {
    console.log("This runs first");
    return "Hello";
    console.log("This will NEVER run!"); // This line is unreachable
    const name = "John"; // This will NEVER execute
    return "Goodbye"; // This will NEVER execute
}

console.log(example()); // Output: "This runs first", then "Hello"
```

```
// What happenend here?

1. We called `example()`
2. The first `console.log` inside `example()` runs and prints "This runs first"
3. The `return "Hello";` statement is executed, which exits the function
    - Any other code inside the function `example()` after this point will not run.
4. The console.log (the one that called `example()`) prints the returned value, which is "Hello".
```

### Using `return;` Without a Value

```javascript
function checkPermission(userRole) {
    console.log("Checking permission...");

    if (userRole !== "admin") {
        console.log("Access denied!");
        return; // Exit function early, returns undefined
        console.log("This will NEVER run!"); // Unreachable code
    }

    console.log("Access granted!");
    console.log("Welcome, admin!");
}

checkPermission("user"); // Output: "Checking permission..." then "Access denied!"
checkPermission("admin"); // Output: "Checking permission..." then "Access granted!" then "Welcome, admin!"
```

## Common Patterns

### Early Return Pattern

```javascript
let userBalance = 4000;
let atmBalance = 3000;
let transactionLimit = 1500;

function withdraw() {
    let amount = document.getElementById("amount").value;
    let result = document.getElementById("result");

    if (amount == "") {
        result.textContent = "Please enter an amount";
        return;
    }
    if (isNan(amount)) {
        result.textContent = "Amount must be a number";
        return;
    }
    if (amount <= 0) {
        result.textContent = "Amount must be greater than zero";
        return;
    }
    if (amount % 10 !== 0) {
        result.textContent = "Amount must be a multiple of 10";
        return;
    }
    if (amount > userBalance) {
        result.textContent = "Insufficient funds";
        return;
    }
    if (amount > atmBalance) {
        result.textContent = "ATM has insufficient funds";
        return;
    }
    if (amount > transactionLimit) {
        result.textContent = "Transaction limit exceeded";
        return;
    }

    // If all checks pass, proceed with withdrawal
    userBalance -= amount;
    atmBalance -= amount;
    ...
}
```

```javascript
function processName(name) {
    // Check for invalid input first
    if (!name) {
        return "No name provided";
        // Exits function early, returns "No name provided"
    }
    if (!isNan(name)) {
        return "Name must be a string";
        // Exits function early, returns "Name must be a string"
    }
    if (name.length < 2) {
        return "Name is too short";
        // Exits function early, returns "Name is too short"
    }

    // Main logic here
    return "Processing name";
}

const status1 = processUser(); // Output: "No name provided"
const status2 = processUser(123); // Output: "Name must be a string"
const status3 = processUser("John"); // Output: "Processing name"

console.log(status1); // Output: No name provided
console.log(status2); // Output: Name must be a string
console.log(status3); // Output: Processing name
```

## Key Takeaways

-   `return` exits the function immediately - no code after it will run!
-   Functions return `undefined` by default if no `return` statement is used
-   You can use `return;` without a value to exit early (returns `undefined`)
-   You can return any data type: numbers, strings, booleans, objects, etc.
-   Use early returns to handle edge cases and make code more readable
-   **Remember**: Once `return` is executed, the function stops completely!

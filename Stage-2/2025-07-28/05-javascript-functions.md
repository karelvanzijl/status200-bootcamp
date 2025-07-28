# JavaScript Functions

So far all our JavaScript code was executed immediately when the page loaded / refreshed.

But often we want to execute code only when a specific event occurs, like a button click, or as in the [moving box example](https://status200.my/bootcamp/practice/2025-07-28/move-box.html) when a arrow key is pressed.

For this we use **functions**. Functions are reusable blocks of code that can be executed when called.

**Definition:**

> _A function is a block of code designed to perform a specific task. It can take inputs (parameters) and can return a value._.

**$Note$:** _Functions are a fundamental part of JavaScript and allow us to organize our code into reusable pieces._ A function is in fact a type of variable that holds a block of code. We'll learn more about types of later.

## Define a Function

```javascript
// Function declaration with no parameters
function functionName() {
    // Code to be executed
}

// Function declaration with parameters
function functionName(parameters) {
    // Code to be executed
}
```

**Breakdown:**

-   **`function`**: The keyword used to define a function.
-   **`functionName`**: The name of the function, which follows the same naming rules as variables.
-   **`( ... )`**: The function name is always followed by parentheses.
-   **`parameters`**: _Optional inputs_ that the function can take. You can have multiple parameters separated by commas, or none at all.
-   **`{ ... }`**: The block of code that will be executed when the function is called. Everything inside the curly braces is called `the function body`.

**$Note$:** `function` is a reserved keyword in JavaScript, so you cannot use it as a variable name.

## Call a Function

Once a function is defined, you can call it to execute the code inside it.

```javascript
// Define a function
function greet() {
    console.log("Hello, World!");
}

// Call the function
greet();
```

We've mentioned that functions can takeone or more parameters. Here's an example of a function that takes a parameter:

```javascript
// Function with one parameter
function greet(message) {
    console.log(message);
}

// Call the function with an argument
greet("Hello Alice");

// Function with multiple parameters
function addNumbers(a, b) {
    console.log(a + b);
}

// Call the function with two arguments
addNumbers(5, 10);
```

**$Note$:** In the one parameter example we used `message` as a parameter, but you can name it anything you like, as long as it follows the [naming rules](./04-javascript-variables.md#rules) we discussed earlier. If you would replace `message` with `name`, the function would still work the same way.

**Parameters**: Variables listed as part of the function definition.

**Arguments**: Values passed to the function when it is called.

In the example, `message` is a parameter, and `"Hello Alice"` is an argument.

## Reusable Code

Functions allow us to write reusable code. You can call the same function multiple times with different arguments:

```javascript
function greet(message) {
    console.log(message);
}

greet("Hello Alice");
greet("Hello Bob");
greet("Hello Charlie");

/* 
    We called the greet function three times with different arguments. 
    In your console, you will see:
  
    Hello Alice
    Hello Bob
    Hello Charlie
*/
```

## Types of Functions

A function performs a task or calculates a value. There are two main types of functions in JavaScript:

### Void Functions

These functions perform a task but do not return a value. They are often used for side effects, like updating the UI or logging messages. For example:

```javascript
function showMessage(message) {
    console.log(message);
}
```

### Value Functions

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

// Output the result
console.log(sum);

// Output: 15
```

1. We called the `addNumbers` function with the arguments `5` and `10`.
2. The function executed a calculation and returned the value `15`.
3. We stored the returned value in the variable `sum`.
4. Finally, we logged the value of `sum` to the console.

We can also use the returned value directly in other expressions:

```javascript
// Define the function
function addNumbers(a, b) {
    return a + b;
}

// Call the function and use the returned value directly
console.log(addNumbers(5, 10));

// Output: 15
```

### Challenge

In the last example. How many function calls did we make?

## Variable Scope

Understanding where variables can be accessed is crucial when working with functions. This concept is called **variable scope**.

### Global Variables

When you declare a variable **outside** of any function, it becomes a **global variable**. Global variables can be accessed from anywhere in your code, including inside functions.

```javascript
// Global variable - declared outside any function
const globalMessage = "Hello from global scope!";

function showGlobalMessage() {
    // We can access the global variable inside this function
    console.log(globalMessage);
}

showGlobalMessage(); // Output: "Hello from global scope!"
```

**Key Point:** You don't need to pass global variables as parameters to access them inside functions.

### Local Variables

When you declare a variable **inside** a function, it becomes a **local variable**. Local variables can only be accessed within that function.

```javascript
function createLocalVariable() {
    // Local variable - declared inside the function
    const localMessage = "Hello from local scope!";
    console.log(localMessage); // This works - we're inside the function
}

createLocalVariable(); // Output: "Hello from local scope!"

// This will cause an error!
console.log(localMessage); // ReferenceError: localMessage is not defined
```

**Key Point:** Local variables only exist inside the function where they're declared. They cannot be accessed from outside the function.

### Why This Matters

Understanding scope helps you:

1. **Avoid naming conflicts** - Local variables don't interfere with global ones
2. **Write cleaner code** - Keep variables where they're needed
3. **Debug easier** - Know where to look when variables aren't accessible
4. **Organize better** - Global for shared data, local for function-specific data

### Best Practice Tips

-   **Use global variables sparingly** - Only for data that multiple functions need
-   **Prefer local variables** - Keep variables as close to where they're used as possible
-   **Give descriptive names** - Especially for global variables that are used in multiple places

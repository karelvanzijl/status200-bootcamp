# Functions

-   [What is a Function?](#what-is-a-function)
-   [Creating Functions](#creating-functions)
-   [Function Parameters and Arguments](#function-parameters-and-arguments)
-   [Return Values](#return-values)
-   [Calling Functions](#calling-functions)
-   [Function Expressions and Arrow Functions](#function-expressions-and-arrow-functions)

---

# What is a Function?

In JavaScript, **a function is a reusable block of code that performs a specific task**.

Functions help to organize code, make it more readable, and allow for code reuse. They can take input in the form of parameters, perform operations, and return output.

The code inside a function is not executed when the function is defined; **it is executed when the function is called** (or invoked).

---

# Creating Functions

You can create a function using the `function` keyword, followed by the function name, parentheses `()`, and curly braces `{}`. The code to be executed is placed inside the curly braces.

```javascript
function greet() {
    console.log("Hello, World!");
}
```

In this example, we defined a function named `greet` that logs "Hello, World!" to the console.

To execute the function, you need to call it by its name followed by parentheses:

```javascript
greet(); // Output: Hello, World!
```

---

# Function Parameters and Arguments

Functions can take input in the form of parameters. Parameters are placeholders for values that you want to pass to the function when you call it.

```javascript
function greet(name) {
    console.log("Hello, " + name + "!");
}
```

In this example, the `greet` function has a parameter named `name`. When you call the function, you can pass an argument (a specific value) to it:

```javascript
greet("Alice"); // Output: Hello, Alice!
greet("Bob"); // Output: Hello, Bob!
```

You can define multiple parameters by separating them with commas:

```javascript
function add(a, b) {
    console.log(a + b);
}
add(5, 3); // Output: 8
```

If _**no argument is provided for a parameter**_, it will be **`undefined` by default**.

```javascript
function greet(name) {
    console.log("Hello, " + name + "!");
}

greet(); // Output: Hello, undefined!
```

---

# Return Values

Functions can return a value using the `return` statement. When a function reaches a `return` statement, it stops executing and returns the specified value to the caller.

**Any code after the `return` statement will not be executed.**

```javascript
function add(a, b) {
    return a + b;
}

let sum = add(5, 3);
console.log(sum); // Output: 8
```

In this example, the `add` function returns the sum of `a` and `b`. The returned value is then stored in the variable `sum`.

> _When a function does not have a `return` statement, it returns `undefined` by default._

---

# Calling Functions

We already now how to call a function. You simply use the function name followed by parentheses. If the function has parameters, you provide the arguments inside the parentheses.

```javascript
function multiply(x, y) {
    return x * y;
}

let result = multiply(4, 5);
console.log(result); // Output: 20
```

We can also call a function from within another function:

```javascript
function addition(num1, num2) {
    return num1 + num2;
}

function product(num1, num2) {
    return num1 * num2;
}

function division(num1, num2) {
    return num1 / num2;
}

function square(num) {
    return num * num;
}

function doArithmetic(operation, a, b) {
    if (operation === "add") {
        return addition(a, b);
    }
    if (operation === "multiply") {
        return product(a, b);
    }
    if (operation === "divide") {
        return division(a, b);
    }
    if (operation === "square") {
        return square(a); // Only use the first parameter for square
    }
    return null;
}

console.log(doArithmetic("add", 5, 3)); // Output: 8
console.log(doArithmetic("multiply", 4, 5)); // Output: 20
console.log(doArithmetic("divide", 20, 4)); // Output: 5
console.log(doArithmetic("square", 6)); // Output: 36
console.log(doArithmetic("unknown", 6, 2)); // Output: null
```

---

# Arrow Functions

Arrow functions provide a shorter syntax for writing functions. They are defined using the `=>` syntax.

```javascript
const greet = (name) => {
    console.log("Hello, " + name + "!");
};

greet("Alice"); // Output: Hello, Alice!
```

If the function has only one parameter, you can omit the parentheses:

```javascript
const greet = (name) => {
    console.log("Hello, " + name + "!");
};

greet("Bob"); // Output: Hello, Bob!
```

If the function body contains only a single expression, you can omit the curly braces and the `return` keyword:

```javascript
const add = (a, b) => a + b;

console.log(add(5, 3)); // Output: 8
```

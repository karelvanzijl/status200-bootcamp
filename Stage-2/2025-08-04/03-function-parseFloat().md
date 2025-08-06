## Navigation

1. [Overview](readme.md)
2. [Build ATM Machine v1.0](01-build-atm-machine-v1.md)
3. [Function: isNaN()](<02-function-isNan().md>)
4. [Function: parseFloat()](<03-function-parseFloat().md>) ← _You are here_
5. [Function: parseInt()](<04-function-parseInt().md>)
6. [Function: toFixed()](<05-function-toFixed().md>)
7. [Homework: Converter](06-homework-converter.md)
8. [Calculator Example by Farwa](07-calculator-farwa.md)

---

# JavaScript Function: parseFloat()

## Overview

The `parseFloat()` function converts a string to a floating-point (decimal) number. This is essential when getting user input from HTML forms, since all input comes as strings.

## What does parseFloat() do?

The `parseFloat()` function:

-   Converts strings to decimal numbers
-   Stops parsing when it encounters the first non-numeric character
-   Returns `NaN` if the string doesn't start with a number
-   Handles positive and negative numbers
-   Preserves decimal places

## Syntax

```javascript
parseFloat(string);
```

## Examples

```javascript
// Basic string to number conversion
console.log(parseFloat("3.14")); // 3.14
console.log(parseFloat("100")); // 100
console.log(parseFloat("-50.5")); // -50.5

// Stops at first non-numeric character
console.log(parseFloat("123.45abc")); // 123.45
console.log(parseFloat("42 is nice")); // 42

// Returns NaN for invalid input
console.log(parseFloat("hello")); // NaN
console.log(parseFloat("")); // NaN

// Handles whitespace
console.log(parseFloat("  25.5  ")); // 25.5
```

## Why is this crucial for our ATM project?

HTML input fields always return strings, even when users type numbers:

```javascript
// Getting user input (always a string)
let userInput = document.getElementById("amount").value; // "150.50"
console.log(typeof userInput); // "string"

// Convert to number for calculations
let amount = parseFloat(userInput); // 150.5
console.log(typeof amount); // "number"

// Now we can do math
let newBalance = currentBalance + amount; // Correct addition
```

## parseFloat() vs Number()

Both convert strings to numbers, but they behave differently:

```javascript
console.log(parseFloat("123abc")); // 123 (stops at first non-number)
console.log(Number("123abc")); // NaN (entire string must be valid)

console.log(parseFloat("")); // NaN
console.log(Number("")); // 0

console.log(parseFloat("   42   ")); // 42 (ignores whitespace)
console.log(Number("   42   ")); // 42 (ignores whitespace)
```

---

## Exercise 1: Basic parseFloat() Practice

**Task**: Convert these strings to numbers and predict the results.

```javascript
let string1 = "25.50";
let string2 = "100";
let string3 = "99.99abc";
let string4 = "hello123";
let string5 = "  42.5  ";
let string6 = "";

// Convert each string using parseFloat() and log the result
// Predict what each will return before running the code
// Use console.log() to display the results
```

---

## Key Takeaways

1. `parseFloat()` converts strings to decimal numbers
2. Returns `NaN` if the string doesn't start with a valid number
3. Stops parsing at the first non-numeric character
4. Essential for processing HTML form input
5. Always validate the result with `isNaN()` before using
6. Handles whitespace automatically
7. Preserves decimal places (unlike `parseInt()`)

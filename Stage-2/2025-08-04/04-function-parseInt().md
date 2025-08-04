# JavaScript Function: parseInt()

## Overview

The `parseInt()` function converts a string to a **whole number** (integer). Unlike `parseFloat()`, it removes any decimal places and returns only the integer portion.

## What does parseInt() do?

The `parseInt()` function:

-   Converts strings to whole numbers (integers)
-   **Removes decimal places** (doesn't round, just cuts them off)
-   Stops parsing at the first non-numeric character
-   Returns `NaN` if the string doesn't start with a number
-   Can work with different number bases (binary, octal, hexadecimal)

## Syntax

```javascript
parseInt(string, radix);
```

-   `string`: The string to convert
-   `radix` (optional): The base of the number system (2-36). Default is 10 for decimal.

## Examples

```javascript
// Basic conversion - removes decimals
console.log(parseInt("42")); // 42
console.log(parseInt("42.99")); // 42 (cuts off decimal)
console.log(parseInt("99.1")); // 99 (cuts off decimal)

// Stops at first non-numeric character
console.log(parseInt("123abc")); // 123
console.log(parseInt("42 years")); // 42

// Returns NaN for invalid input
console.log(parseInt("hello")); // NaN
console.log(parseInt("")); // NaN

// Handles negative numbers
console.log(parseInt("-50.7")); // -50
```

## parseInt() vs parseFloat()

Key differences:

```javascript
let input = "42.99";

console.log(parseInt(input)); // 42 (removes decimal)
console.log(parseFloat(input)); // 42.99 (keeps decimal)

let input2 = "123.456abc";
console.log(parseInt(input2)); // 123
console.log(parseFloat(input2)); // 123.456
```

## The Radix Parameter

**This it out of the scope of this course!** For more info please visit the [MDN documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/parseInt#syntax).

---

## Exercise 1: Basic parseInt() Practice

**Task**: Convert these strings using `parseInt()` and predict the results.

```
let a = "25",
let b = "25.99",
let c = "99.1",
let d = "100abc",
let e = "hello",
let f = "",
let g = "42.5.6"
```

---

## Exercise 2: Compare parseInt() and parseFloat()

**Task**: Create a function that shows the difference between `parseInt()` and `parseFloat()`.

First try to predict the results, then implement the function.

```javascript
function compareConversions(input) {
    // Convert the input using both parseInt() and parseFloat()
    // Display both results with labels
    // Show the difference between them
    // - Input
    // - parseInt() result
    // - parseFloat() result
    // - Difference (parseFloat - parseInt)
}

// Test with these values
compareConversions("42.99");
compareConversions("123.456abc");
compareConversions("99");
```

---

## Exercise 4: User Age Validator

**Task**: Create a function that validates user age input (must be whole numbers).

```javascript
function validateAge(ageInput) {
    // Convert input to integer using parseInt()
    // Validate that:
    // - Conversion was successful (not NaN)
    // - Age is between 1 and 120
    // Return validation result with message
}

// Test your function
console.log(validateAge("25")); // Valid
console.log(validateAge("25.5")); // Should convert to 25 and validate
console.log(validateAge("abc")); // Invalid
console.log(validateAge("150")); // Too high
console.log(validateAge("0")); // Too low
```

---

## When to Use parseInt() vs parseFloat()

**Use `parseInt()` when:**

-   You need whole numbers only
-   Counting items, people, transactions
-   Working with IDs or codes
-   Converting number bases
-   Age, quantity, or other discrete values

**Use `parseFloat()` when:**

-   You need decimal precision
-   Working with money, measurements
-   Scientific calculations
-   Any fractional values matter

```javascript
// Good use of parseInt()
let itemCount = parseInt("3.9"); // 3 items
let userId = parseInt("12345abc"); // ID: 12345

// Good use of parseFloat()
let price = parseFloat("19.99"); // $19.99
let weight = parseFloat("75.5kg"); // 75.5 kg
```

---

## Key Takeaways

1. `parseInt()` converts strings to **whole numbers only**
2. **Cuts off** decimal places (doesn't round)
3. Stops at first non-numeric character
4. Returns `NaN` for invalid input
5. Can convert different number bases with radix parameter
6. Use for counting, IDs, ages, and other discrete values
7. Always specify radix (usually 10) to avoid confusion
8. Different from `parseFloat()` which preserves decimals

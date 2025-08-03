# JavaScript Function: isNaN()

## Overview

The `isNaN()` function determines whether a value is NaN (Not a Number). It's useful for validating user input to ensure they entered a valid number.

## What does isNaN() do?

The `isNaN()` function returns:

-   `true` if the value is NOT a number
-   `false` if the value IS a number

## Syntax

```javascript
isNaN(value);
```

## Examples

```javascript
// Numbers return false (they ARE numbers)
isNaN(42); // false
isNaN(3.14); // false
isNaN(-100); // false

// Non-numbers return true (they are NOT numbers)
isNaN("hello"); // true
isNaN("abc123"); // true
isNaN(""); // false (empty string converts to 0)
isNaN(" "); // false (space converts to 0)

// Special cases
isNaN(undefined); // true
isNaN(null); // false (null converts to 0)
isNaN(true); // false (true converts to 1)
isNaN(false); // false (false converts to 0)
```

## Why is this useful for our ATM project?

When users type in the amount field, we need to check if they entered a valid number:

```javascript
function validateAmount(amount) {
    if (isNaN(amount)) {
        return "Please enter a valid number";
    }
    return "Valid input";
}
```

## Alternative: Using multiplication trick

You can also check if something is a number using:

```javascript
// If amount * 1 equals amount, then amount is a number
if (amount * 1 === amount) {
    console.log("It's a number!");
}
```

_Why does this work? Because multiplying a number by 1 doesn't change it, but if you try to multiply a non-number, it will return [NaN](../2025-07-31/01-js-primitive-data-types.md#6-nan)._

---

## Exercise 1: Basic isNaN() Practice

**Task**: Write code to test different values with `isNaN()`.

Test these values and predict the result before running:

1. `isNaN(25)`
2. `isNaN("25")`
3. `isNaN("hello")`
4. `isNaN("")`
5. `isNaN("123abc")`

---

## Exercise 2: Input Validation Function

**Task**: Create a function that validates if user input is a valid number.

```javascript
function checkInput(userInput) {
    // Your code here
    // Return "Valid number" if it's a number
    // Return "Invalid input" if it's not a number
}

// Test your function
console.log(checkInput("100")); // Should return "Valid number"
console.log(checkInput("abc")); // Should return "Invalid input"
console.log(checkInput("50.5")); // Should return "Valid number"
```

---

## Exercise 3: ATM Amount Validator

**Task**: Create a validation function for ATM transactions that checks multiple conditions.

```javascript
function validateATMAmount(amount) {
    // Check if the input is a valid number
    // Check if the number is positive (greater than 0)
    // Return appropriate messages for each case
    // Test cases to handle:
    // - Not a number: "Please enter a valid number"
    // - Negative or zero: "Amount must be greater than zero"
    // - Valid positive number: "Valid amount"
}

// Test your function
console.log(validateATMAmount("abc")); // "Please enter a valid number"
console.log(validateATMAmount("-50")); // "Amount must be greater than zero"
console.log(validateATMAmount("0")); // "Amount must be greater than zero"
console.log(validateATMAmount("100")); // "Valid amount"
```

---

## Key Takeaways

1. `isNaN()` checks if a value is NOT a number
2. Returns `true` for non-numbers, `false` for numbers
3. Some strings can convert to numbers (like "25" → 25)
4. Empty strings and spaces convert to 0
5. Very useful for validating user input in forms
6. Always validate user input before using it in calculations

## Navigation

1. [Overview](readme.md)
2. [Build ATM Machine v1.0](01-build-atm-machine-v1.md)
3. [Function: isNaN()](<02-function-isNan().md>)
4. [Function: parseFloat()](<03-function-parseFloat().md>)
5. [Function: parseInt()](<04-function-parseInt().md>)
6. [Function: toFixed()](<05-function-toFixed().md>) ← _You are here_
7. [Homework: Converter](06-homework-converter.md)
8. [Calculator Example by Farwa](07-calculator-farwa.md)

---

# JavaScript Function: toFixed()

## Overview

The `toFixed()` method formats a number to a specified number of decimal places and returns it as a string. This is perfect for displaying money amounts consistently.

## What does toFixed() do?

The `toFixed()` method:

-   Rounds a number to a specified number of decimal places
-   Returns the result as a string
-   Adds zeros if needed to reach the specified decimal places

## Syntax

```javascript
number.toFixed(digits);
```

-   `digits`: Number of decimal places (0-100)

## Examples

```javascript
// Basic usage
let price = 99.567;
console.log(price.toFixed(2)); // "99.57" (rounded to 2 decimal places)
console.log(price.toFixed(0)); // "100" (rounded to whole number)
console.log(price.toFixed(4)); // "99.5670" (adds zeros to reach 4 decimals)

// More examples
let amount = 1000;
console.log(amount.toFixed(2)); // "1000.00" (adds decimal places)

let balance = 45.1;
console.log(balance.toFixed(2)); // "45.10" (adds one zero)
```

## Why is this useful for our ATM project?

Money should always be displayed consistently with 2 decimal places:

```javascript
let userBalance = 1250.5;
let atmBalance = 5000;

// Display with consistent formatting
console.log("User Balance: " + userBalance.toFixed(2) + " MYR"); // "User Balance: 1250.50 MYR"
console.log("ATM Balance: " + atmBalance.toFixed(2) + " MYR"); // "ATM Balance: 5000.00 MYR"
```

## Important Note

`toFixed()` returns a **string**, not a number:

```javascript
let num = 42.789;
let fixed = num.toFixed(2);
console.log(typeof fixed); // "string"
console.log(fixed); // "42.79"

// If you need a number again, convert it back
let backToNumber = parseFloat(fixed); // 42.79
```

---

## Common Pitfalls

1. **Remember it returns a string**:

    ```javascript
    let result = (100.555).toFixed(2); // "100.56" (string)
    let calculation = result + 50; // "100.5650" (string concatenation!)

    // Convert back to number for calculations
    let number = parseFloat(result); // 100.56 (number)
    let calculation = number + 50; // 150.56 (correct math)
    ```

2. **Rounding behavior**:
    ```javascript
    console.log((1.005).toFixed(2)); // "1.00" (not "1.01" due to floating point precision)
    console.log((1.015).toFixed(2)); // "1.02" (rounds up as expected)
    ```

---

## Key Takeaways

1. `toFixed()` formats numbers to a specific number of decimal places
2. Always returns a **string**, not a number
3. Perfect for displaying amounts consistently
4. Rounds numbers and adds zeros as needed
5. Use with currency symbols for professional-looking displays
6. Convert back to number with `parseFloat()` if you need to do math

# JavaScript Function: parseFloat()

## Overview

The `parseFloat()` function converts a string to a floating-point (decimal) number. This is essential when getting user input from HTML forms, since all input comes as strings.

## What does parseFloat() do?

The `parseFloat()` function:
- Converts strings to decimal numbers
- Stops parsing when it encounters the first non-numeric character
- Returns `NaN` if the string doesn't start with a number
- Handles positive and negative numbers
- Preserves decimal places

## Syntax

```javascript
parseFloat(string)
```

## Examples

```javascript
// Basic string to number conversion
console.log(parseFloat("3.14"));      // 3.14
console.log(parseFloat("100"));       // 100
console.log(parseFloat("-50.5"));     // -50.5

// Stops at first non-numeric character
console.log(parseFloat("123.45abc")); // 123.45
console.log(parseFloat("42 is nice")); // 42

// Returns NaN for invalid input
console.log(parseFloat("hello"));     // NaN
console.log(parseFloat(""));          // NaN

// Handles whitespace
console.log(parseFloat("  25.5  "));  // 25.5
```

## Why is this crucial for our ATM project?

HTML input fields always return strings, even when users type numbers:

```javascript
// Getting user input (always a string)
let userInput = document.getElementById("amount").value;  // "150.50"
console.log(typeof userInput);  // "string"

// Convert to number for calculations
let amount = parseFloat(userInput);  // 150.5
console.log(typeof amount);     // "number"

// Now we can do math
let newBalance = currentBalance + amount;  // Correct addition
```

## parseFloat() vs Number()

Both convert strings to numbers, but they behave differently:

```javascript
console.log(parseFloat("123abc"));  // 123 (stops at first non-number)
console.log(Number("123abc"));      // NaN (entire string must be valid)

console.log(parseFloat(""));        // NaN
console.log(Number(""));            // 0

console.log(parseFloat("   42   ")); // 42 (ignores whitespace)
console.log(Number("   42   "));     // 42 (ignores whitespace)
```

---

## Exercise 1: Basic parseFloat() Practice

**Task**: Convert these strings to numbers and predict the results.

```javascript
let strings = ["25.50", "100", "99.99abc", "hello123", "  42.5  ", ""];

// Convert each string using parseFloat() and log the result
// Predict what each will return before running the code
```

**Solution**:
```javascript
let strings = ["25.50", "100", "99.99abc", "hello123", "  42.5  ", ""];

for (let i = 0; i < strings.length; i++) {
    console.log(parseFloat(strings[i]));
}

// Results:
// 25.5
// 100  
// 99.99
// NaN
// 42.5
// NaN
```

---

## Exercise 2: User Input Processor

**Task**: Create a function that safely converts user input to a number.

```javascript
function getUserAmount(inputString) {
    // Convert the input string to a number using parseFloat()
    // Check if the result is a valid number (not NaN)
    // Return the number if valid, or return 0 if invalid
}

// Test your function
console.log(getUserAmount("150.50"));   // Should return 150.5
console.log(getUserAmount("hello"));    // Should return 0
console.log(getUserAmount("99.99"));    // Should return 99.99
console.log(getUserAmount(""));         // Should return 0
```

**Solution**:
```javascript
function getUserAmount(inputString) {
    let number = parseFloat(inputString);
    
    if (isNaN(number)) {
        return 0;
    }
    
    return number;
}
```

---

## Exercise 3: ATM Input Validator

**Task**: Create a comprehensive input validator for ATM transactions.

```javascript
function validateAndConvertAmount(input) {
    // 1. Convert input to number using parseFloat()
    // 2. Check if conversion was successful (not NaN)
    // 3. Check if number is positive
    // 4. Return an object with: { isValid: true/false, amount: number, message: string }
    
    // Return format:
    // { isValid: true, amount: 150.5, message: "Valid amount" }
    // { isValid: false, amount: 0, message: "Please enter a valid positive number" }
}

// Test your function
console.log(validateAndConvertAmount("150.50"));  
console.log(validateAndConvertAmount("abc"));     
console.log(validateAndConvertAmount("-50"));     
console.log(validateAndConvertAmount("0"));       
```

**Solution**:
```javascript
function validateAndConvertAmount(input) {
    let amount = parseFloat(input);
    
    // Check if conversion failed
    if (isNaN(amount)) {
        return {
            isValid: false,
            amount: 0,
            message: "Please enter a valid number"
        };
    }
    
    // Check if number is positive
    if (amount <= 0) {
        return {
            isValid: false,
            amount: 0,
            message: "Please enter a positive amount"
        };
    }
    
    // Valid input
    return {
        isValid: true,
        amount: amount,
        message: "Valid amount"
    };
}
```

---

## Exercise 4: ATM Transaction Simulator

**Task**: Create a complete transaction function that handles string input.

```javascript
function processTransaction(balanceString, amountString, transactionType) {
    // Convert both balance and amount from strings to numbers
    // Validate that both conversions were successful
    // Perform the transaction (deposit or withdraw)
    // Return the new balance formatted to 2 decimal places
    
    // Handle error cases:
    // - Invalid number inputs
    // - Insufficient balance for withdrawals
    // - Invalid transaction type
}

// Test your function
console.log(processTransaction("1000.50", "250.25", "deposit"));   // Should work
console.log(processTransaction("1000", "abc", "withdraw"));        // Should handle error
console.log(processTransaction("100", "150", "withdraw"));         // Insufficient balance
```

**Solution**:
```javascript
function processTransaction(balanceString, amountString, transactionType) {
    // Convert strings to numbers
    let currentBalance = parseFloat(balanceString);
    let transactionAmount = parseFloat(amountString);
    
    // Validate conversions
    if (isNaN(currentBalance) || isNaN(transactionAmount)) {
        return "Error: Invalid number input";
    }
    
    // Validate positive amount
    if (transactionAmount <= 0) {
        return "Error: Amount must be positive";
    }
    
    // Process transaction
    let newBalance;
    
    if (transactionType === "deposit") {
        newBalance = currentBalance + transactionAmount;
        return "Success: New balance is " + newBalance.toFixed(2) + " MYR";
    } else if (transactionType === "withdraw") {
        if (currentBalance < transactionAmount) {
            return "Error: Insufficient balance";
        }
        newBalance = currentBalance - transactionAmount;
        return "Success: New balance is " + newBalance.toFixed(2) + " MYR";
    } else {
        return "Error: Invalid transaction type";
    }
}
```

---

## Common Use Cases in Web Development

1. **Form Input Processing**:
   ```javascript
   let priceInput = document.getElementById("price").value;  // "99.99"
   let price = parseFloat(priceInput);  // 99.99
   ```

2. **API Data Processing**:
   ```javascript
   let jsonData = '{"price": "149.99"}';
   let data = JSON.parse(jsonData);
   let price = parseFloat(data.price);  // 149.99
   ```

3. **URL Parameters**:
   ```javascript
   let urlAmount = "150.50";  // from URL parameter
   let amount = parseFloat(urlAmount);  // 150.5
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

## Next Steps

Now you understand how to convert strings to decimal numbers. Next, you'll learn about:
- `parseInt()` - Converting strings to whole numbers only
- How `parseInt()` differs from `parseFloat()`
- When to use each function in your applications
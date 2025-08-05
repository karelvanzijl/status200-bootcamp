# Function Arguments and Parameters in JavaScript

## What's the Difference?

**Parameters** are the variables listed in the function definition.
**Arguments** are the actual values you pass when calling the function.

```javascript
function greet(name) {
    // 'name' is a parameter
    console.log("Hello " + name);
}

greet("Alice"); // "Alice" is an argument
```

Think of parameters as placeholders, and arguments as the actual data you fill them with.

## Basic Function with Parameters

```javascript
function add(a, b) {
    // a and b are parameters
    return a + b;
}

const result = add(5, 3); // 5 and 3 are arguments
console.log(result); // Output: 8
```

## Functions Without Parameters

```javascript
function sayHello() {
    // No parameters
    return "Hello, World!";
}

const message = sayHello(); // No arguments needed
console.log(message); // Output: Hello, World!
```

## Multiple Parameters

```javascript
function introduce(firstName, lastName, age) {
    return (
        "Hi, I'm " +
        firstName +
        " " +
        lastName +
        " and I'm " +
        age +
        " years old."
    );
}

const intro = introduce("John", "Doe", 25);
console.log(intro); // Output: Hi, I'm John Doe and I'm 25 years old.
```

## What Happens with Missing Arguments?

If you don't provide all arguments, missing ones become `undefined`:

```javascript
function greet(firstName, lastName) {
    console.log("First name: " + firstName);
    console.log("Last name: " + lastName);
}

greet("Alice"); // Only one argument provided
// Output:
// First name: Alice
// Last name: undefined
```

## What Happens with Extra Arguments?

Extra arguments are simply ignored:

```javascript
function add(a, b) {
    return a + b;
}

const result = add(5, 3, 10, 20); // Extra arguments (10, 20) are ignored
console.log(result); // Output: 8 (only uses 5 and 3)
```

## Default Parameter Values

You can provide default values for parameters:

```javascript
function greet(name, greeting) {
    if (greeting === undefined) {
        greeting = "Hello"; // Set default value
    }
    return greeting + ", " + name + "!";
}

console.log(greet("Alice")); // Output: Hello, Alice!
console.log(greet("Bob", "Hi")); // Output: Hi, Bob!
```

Or, in modern versions of JavaScript:

```javascript
function greet(name, greeting = "Hello") {
    return greeting + ", " + name + "!";
}

console.log(greet("Alice")); // Output: Hello, Alice!
console.log(greet("Bob", "Hi")); // Output: Hi, Bob!
```

## Practical Examples

### 1. Calculator Function

```javascript
function calculate(operation, num1, num2) {
    if (operation === "add") {
        return num1 + num2;
    }
    if (operation === "subtract") {
        return num1 - num2;
    }
    if (operation === "multiply") {
        return num1 * num2;
    }
    if (operation === "divide") {
        return num1 / num2;
    }
    return "Unknown operation";
}

console.log(calculate("add", 10, 5)); // Output: 15
console.log(calculate("multiply", 4, 3)); // Output: 12
console.log(calculate("divide", 20, 4)); // Output: 5
```

### 2. User Profile Function

```javascript
function createProfile(username, email, isActive) {
    console.log("Username: " + username);
    console.log("Email: " + email);
    console.log("Active: " + isActive);

    if (isActive) {
        return "Profile created successfully!";
    } else {
        return "Profile created but needs activation.";
    }
}

const profile1 = createProfile("john_doe", "john@example.com", true);
console.log(profile1);
// Output:
// Username: john_doe
// Email: john@example.com
// Active: true
// Profile created successfully!
```

### 3. Validation Function

```javascript
function validateInput(value, minLength, maxLength) {
    if (value === undefined || value === "") {
        return "Value is required";
    }
    if (value.length < minLength) {
        return "Value is too short";
    }
    if (value.length > maxLength) {
        return "Value is too long";
    }
    return "Valid input";
}

console.log(validateInput("abc", 2, 10)); // Output: Valid input
console.log(validateInput("a", 2, 10)); // Output: Value is too short
console.log(validateInput("", 2, 10)); // Output: Value is required
```

## Variable vs Parameter Names

Parameter names don't have to match variable names:

```javascript
function double(number) {
    // Parameter is called 'number'
    return number * 2;
}

const myValue = 10; // Variable is called 'myValue'
const result = double(myValue); // Pass variable to function
console.log(result); // Output: 20
```

The function receives the **value** of the variable, not the variable itself.

## Common Patterns

### 1. Input Validation Pattern

```javascript
function processAge(age) {
    // Always validate inputs first
    if (age === undefined) {
        return "Age is required";
    }
    if (age < 0) {
        return "Age cannot be negative";
    }
    if (age > 150) {
        return "Age seems unrealistic";
    }

    // Main logic
    if (age < 18) {
        return "Minor";
    }
    return "Adult";
}
```

### 2. Configuration Pattern

```javascript
function formatMessage(message, includeTime, includeDate) {
    let result = message;

    if (includeTime) {
        result = "[TIME] " + result;
    }
    if (includeDate) {
        result = "[DATE] " + result;
    }

    return result;
}

console.log(formatMessage("Hello", true, false)); // Output: [TIME] Hello
console.log(formatMessage("Hello", true, true)); // Output: [DATE] [TIME] Hello
```

## Key Takeaways

1. **Parameters** are placeholders in function definitions
2. **Arguments** are actual values passed when calling functions
3. Missing arguments become `undefined`
4. Extra arguments are ignored
5. You can provide default values for parameters
6. Parameter names are independent of variable names
7. Always validate your parameters before using them
8. Functions can receive other functions as arguments

## Practice Exercise Ideas

Try creating these functions:

1. `calculateTip(billAmount, tipPercentage)` - calculates tip amount
2. `isEligibleToVote(age, hasId)` - returns true/false based on criteria
3. `formatName(firstName, lastName, middleName)` - handles missing middle name
4. `convertTemperature(value, fromUnit, toUnit)` - converts between C and F

Remember: Start simple, then add complexity. Always think about what happens with unexpected inputs!

## Navigation

1. [Overview](readme.md)
2. [Primitive Data Types](./01-js-primitive-data-types.md) ← _You are here_
3. [Exercise: Primitive Data Types](./02-exercise-primitive-data-types.md)
4. [Arithmetic Operators](./03-js-arithmetic-operators.md)
5. [Exercise: Arithmetic Operators](./04-exercise-arithmetic-operators.md)
6. [Assignment Operators](./05-js-assignment-operators.md)
7. [Exercise: Assignment Operators](./06-exercise-assignment-operators.md)
8. [Comparison Operators](./07-js-comparison-operators.md)
9. [Exercise: Comparison Operators](./08-exercise-comparison-operators.md)

---

# Primitive Data Types in JavaScript

In JavaScript, data types are the classification of data that tells the compiler or interpreter how the programmer intends to use the data. Understanding these types is crucial for effective programming.

## Primitive Data Types

JavaScript has several primitive data types, which are the most basic types of data. They include:

### 1. Number

-   Represents both integer and floating-point numbers.
-   Example: `let age = 25;` or `let price = 19.99`

### 2. String

-   Represents a **sequence of characters enclosed in single or double quotes**.
-   Example: `let name = "Alice";` or `let greeting = 'Hello, World!';`

### 3. Boolean

-   Represents a logical entity and can have two values: `true` or `false`.
-   Example: `let isActive = true;` or `let isComplete = false;`

### 4. Undefined

-   Represents a variable that has been declared but not assigned a value.
-   Example: `let result;` (Here, `result` is `undefined`)

### 5. Null

-   Represents the intentional absence of any object value.
-   Example: `let data = null;` (Here, `data` is explicitly set to have no value)

### 6. NaN

-   Stands for "Not a Number" and is used to represent a value that is not a valid number.
-   Example: `let invalidNumber = "abc" / 2;` (This will result in `NaN`)

## Example

```javascript
let age = 30; // Number
let name = "John Doe"; // String
let isStudent = true; // Boolean
let score; // Undefined
let user = null; // Null
```

> During this course we will always use "" or '' when we are taling about a string in JavaScript. That way you always know if a value we're talking about is a string or not.

## Type Coercion

In Javascript you can declare a variable with one data type and then change it to another type later in your code. This is called _"type coercion"_.

For example:

```javascript
let value = 42; // Initially a number
console.log(typeof value); // Output: "number"

value = "Now I'm a string"; // Change to a string
console.log(typeof value); // Output: "string"
```

## Mixing Data Types

JavaScript is a dynamically typed language, meaning you can mix different data types in your code.

For example, you can concatenate a string with a number:

```javascript
let age = 25;
let message = "I am " + age + " years old.";
console.log(message); // Output: "I am 25 years old."
```

It's important to be cautious when mixing types, as it can lead to unexpected results. For instance, adding a string and a number will result in string concatenation:

```javascript
let num = 10;
let str = "5";
let result = num + str; // Output: "105" (string concatenation)
console.log(result); // Output: "105"
```

`str` is a string and you can't perform arithmetic like addition on a string. In this case, JavaScript converts the number to a string and concatenates them.

### Concatenation vs Addition

When you use the `+` operator, JavaScript will concatenate strings and add numbers. If one of the operands is a string, it will convert the other operand to a string as well:

```javascript
let num1 = 10;
let str1 = "5";
let result = num1 + str1; // Output: "105" (string concatenation
console.log(result); // Output: "105"
```

This can lead to confusion, so it's important to be aware of the types you're working with.

---

# Exercise

## Setup

### Step 1: Create Project Structure

1. Create a new folder called `data-types-practice`
2. Create a subfolder called `js`
3. Create a file `index.html` in the main folder
4. Create a file `scripts.js` in the `js` folder
5. Open the project folder in VS Code

### Step 2: Basic HTML Setup

**HTML (`index.html`):**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Data Types Practice</title>
    </head>
    <body>
        <h1>JavaScript Data Types Practice</h1>
        <p>Open the Developer Tools Console to see the results!</p>

        <script src="js/scripts.js"></script>
    </body>
</html>
```

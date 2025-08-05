# If ... else Statements in JavaScript

We've used the turnary operator before, but now let's explore the `if ... else` statement in JavaScript. It offers a more structured way to handle conditions.

## What is an `if ... else` Statement?

An `if ... else` statement allows you to execute different blocks of code based on whether a condition is true or false. It's like asking a question and deciding what to do based on the answer.

In other words: using `if ... else` statements helps you make decisions in your code. You can control what happens based on different conditions, making your program more dynamic and responsive to user input or other factors.

## Basic Structure

```javascript
if (firstCondition) {
    // Code to run if firstCondition is true
} else if (secondCondition) {
    // Code to run if another secondCondition is true
} else {
    // Code to run if all conditions are false
}
```

**Breakdown:**

-   `if (firstCondition)`: This checks if `firstCondition` is true. If it is, the code inside the curly braces runs.
-   `else if (secondCondition)`: If the first condition is false, this checks `secondCondition`. If it's true, the code inside this block runs.
-   `else`: If none of the previous conditions are true, this block runs.

## Code Block

The code inside the curly braces `{}` is called a **code block**. It will only run if the condition the code block belongs to is true.

## Examples

```javascript
// Example 1
if (age >= 18) {
    console.log("You are an adult.");
}

// Example 2 (Multiple conditions)
if (age > 12 && age < 20) {
    console.log("You are a teenager.");
}

// Example 3 (Using else)
if (age < 13) {
    console.log("You are a child.");
} else {
    console.log("You are not a child.");
}

// Example 4 (Using else if)
if (age < 13) {
    console.log("You are a child.");
} else if (age < 20) {
    console.log("You are a teenager.");
} else {
    console.log("You are an adult.");
}

// Example 5 (Using if, else if, but no else)
if (age < 13) {
    console.log("You are a child.");
} else if (age < 20) {
    console.log("You are a teenager.");
}
```

## Execution Flow

When the JavaScript engine encounters an `if ... else` statement, it evaluates the conditions in order:

1. It checks the first condition. If it's true, it executes the code block and skips the rest.
2. If the first condition is false, it checks the next `else if` condition. If that one is true, it executes that block and skips the rest.
3. If none of the conditions are true, it executes the code in the `else` block.
4. After the whole `if ... else` statement, the program continues with the next line of code outside the block.

For example, if `age` is 15, the output will be:

```javascript
let temperature = 25;

if (temperature > 30) {
    console.log("It's a hot day.");
} else if (temperature > 20) {
    console.log("It's a warm day.");
} else {
    console.log("It's a cold day.");
}

// Other code continues here. It's not part of the if-else block
console.log("This line runs after the if-else block.");
```

```javascript
// Output:
It's a warm day.
This line runs after the if-else block.

```

## Nested `if ... else` Statements

You can also nest `if ... else` statements inside each other. This means you can have an `if` statement inside another `if` statement.

```javascript
let age = 30;

if (age >= 18) {
    console.log("You are an adult.");
    if (age >= 65) {
        console.log("You are a senior citizen.");
    } else {
        console.log("You are a middle-aged adult.");
    }
} else {
    console.log("You are not an adult.");
    if (age >= 13) {
        console.log("You are a teenager.");
    } else {
        console.log("You are a child.");
    }
}

// Other code continues here. It's not part of the if-else block
console.log("This line runs after the nested if-else block.");
```

```javascript
// Output:
You are an adult.
You are a middle-aged adult.
This line runs after the nested if-else block.
```

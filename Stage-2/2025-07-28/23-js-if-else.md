# If ... else Statements in JavaScript

We've used the turnary operator before, but now let's explore the `if ... else` statement in JavaScript. It offers a more structured way to handle conditions.

## What is an `if ... else` Statement?

An `if ... else` statement allows you to execute different blocks of code based on whether a condition is true or false. It's like asking a question and deciding what to do based on the answer.

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

The code inside the curly braces `{}` is called a **code block**. It groups multiple statements together, allowing you to execute them as a single unit.

If your statement only has one line of code, you can omit the curly braces, but it's a good practice to always use them for clarity.

So this would be valid:

```javascript
if (condition) console.log("Condition is true");
else console.log("Condition is false");
```

## Valid Examples

```javascript
// Example 1 (without currly braces)
if (age >= 18) console.log("You are an adult.");

// Example 2 (with curly braces, does exactly the same as Example 1)
if (age >= 18) {
    console.log("You are an adult.");
}

// Example 3 (Multiple conditions)
if (age > 12 && age < 20) {
    console.log("You are a teenager.");
}

// Example 4 (Using else)
if (age < 13) {
    console.log("You are a child.");
} else {
    console.log("You are not a child.");
}

// Example 5 (Using else if)
if (age < 13) {
    console.log("You are a child.");
} else if (age < 20) {
    console.log("You are a teenager.");
} else {
    console.log("You are an adult.");
}
```

## BMI calculator 2.0

Remember our BMI calculator? Let's use the `if ... else` statement to determine if a person is underweight, normal weight, overweight, or obese based on their BMI.

```javascript
function calculateBMI(weight, height) {
    const bmi = weight / (height * height);

    if (bmi < 18.5) {
        return "Underweight";
    } else if (bmi >= 18.5 && bmi < 24.9) {
        return "Normal weight";
    } else if (bmi >= 25 && bmi < 29.9) {
        return "Overweight";
    } else {
        return "Obese";
    }
}
```

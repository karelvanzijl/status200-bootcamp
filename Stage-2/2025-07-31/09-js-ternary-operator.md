# Ternary Operator in JavaScript

The ternary operator is a shorthand way to write an `if-else` statement. It takes three operands and is often used for conditional assignments.

## Syntax

```javascript
condition ? expressionIfTrue : expressionIfFalse;
```

## Example

```javascript
let age = 18;
let canVote = age >= 18 ? "You can vote." : "You cannot vote.";
console.log(canVote); // Output: "You can vote."
```

## How It Works

1. **Condition**: The first part is a condition that evaluates to `true` or `false`.
2. **Expression If True**: If the condition is `true`, the second part (after the `?`) is executed.
3. **Expression If False**: If the condition is `false`, the third part (after the `:`) is executed.

## More Examples

```javascript
let score = 85;
let grade = score >= 50 ? "Pass" : "Fail";
console.log(grade); // Output: "Pass"

let isMember = true;
let discount = isMember ? "20% off" : "No discount";
console.log(discount); // Output: "20% off"

let temperature = 30;
let weather = temperature > 25 ? "It's warm outside." : "It's cold outside.";
console.log(weather); // Output: "It's warm outside."
```

## Combining Ternary Operators

You can nest ternary operators for multiple conditions, but be cautious as it can reduce code readability.

```
let score = 75;
let result =
    score >= 90
        ? "A"
        : score >= 80
            ? "B"
            : score >= 70
                ? "C"
                : score >= 60
                    ? "D"
                    : "F";
console.log(result); // Output: "C"
```

## Navigation

1. [Overview](readme.md)
2. [Ternary Operator](./01-js-ternary-operator.md)
3. [Exercise: Ternary Operator](./02-exercise-ternary-operator.md)
4. [Logical Operators](./03-js-logical-operators.md) ← _You are here_
5. [Exercise: Logical Operators](./04-exercise-logical-operators.md)
6. [Quick Quiz - Operators](./05-quick-quiz-javascript-operators.md)
7. [If ... else Statements](./06-js-if-else.md)
8. [Exercise: If ... else Statements](./07-exercise-for-if.md)
9. [Exercise: BMI Calculator 2.0](./08-exercise-bmi-calculator-2.md)
10. [ssignment: ATM Machine - Version 1.0](./09-assignment-atm-v1.md)

---

# Logical Operators in JavaScript

Logical operators are used to combine or invert boolean values. They are essential for controlling the flow of logic in your code.

### Logical AND (`&&`)

```javascript
let isTrue = true && false; // false
```

### Logical OR (`||`)

```javascript
let isEitherTrue = true || false; // true
```

### Logical NOT (`!`)

```javascript
let isNotTrue = !true; // false
```

## Combining Logical Operators

You can combine logical operators to create complex conditions.

### Example

```javascript
let a = true;
let b = false;
let result = a && (b || !a); // false
```

## Logical Operators with Non-booleans

Logical operators can also be used with non-boolean values. JavaScript will coerce these values to booleans based on their `truthiness` or `falsiness`.

### Truthy and Falsy Values

In JavaScript, certain values are considered "truthy" or "falsy":

-   **Truthy**: Values that evaluate to `true` in a boolean context (e.g., non-zero numbers, non-empty strings, objects).
-   **Falsy**: Values that evaluate to `false` in a boolean context (e.g., `0`, `""`, `null`, `undefined`, `NaN`).

### Example

```javascript
let value = 0;
let isTruthy = value || "Default Value"; // "Default Value" (0 is falsy)
let isFalsy = value && "This won't execute"; // 0 (0 is falsy)

console.log(isTruthy); // Output: "Default Value"
console.log(isFalsy); // Output: 0

// NOTICE: the result of a logical operation is not always a boolean.
```

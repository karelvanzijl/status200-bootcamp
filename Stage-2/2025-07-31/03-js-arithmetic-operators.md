## Navigation

1. [Overview](readme.md)
2. [Primitive Data Types](./01-js-primitive-data-types.md)
3. [Exercise: Primitive Data Types](./02-exercise-primitive-data-types.md)
4. [Arithmetic Operators](./03-js-arithmetic-operators.md) ← _You are here_
5. [Exercise: Arithmetic Operators](./04-exercise-arithmetic-operators.md)
6. [Assignment Operators](./05-js-assignment-operators.md)
7. [Exercise: Assignment Operators](./06-exercise-assignment-operators.md)
8. [Comparison Operators](./07-js-comparison-operators.md)
9. [Exercise: Comparison Operators](./08-exercise-comparison-operators.md)

---

# Arithmetic Operators in JavaScript

Arithmetic operators are used to perform mathematical operations.

### Addition (`+`)

```javascript
let sum = 5 + 3; // sum is 8
```

### Subtraction (`-`)

```javascript
let difference = 10 - 4; // difference is 6
```

### Multiplication (`*`)

```javascript
let product = 7 * 2; // product is 14
```

### Division (`/`)

```javascript
let quotient = 20 / 5; // quotient is 4
```

### Modulus (`%`)

```javascript
let remainder = 10 % 3; // remainder is 1
```

### Exponentiation (`**`)

```javascript
let power = 2 ** 3; // power is 8 (2 raised to the power of 3)
```

## Increment and Decrement

A shorter way to increase or decrease a variable's value by 1.

### Increment (`++`)

```javascript
let count = 0;
count++; // count is now 1
```

```javascript
let count = 0;
++count; // count is now 1
```

**$Note$:** In the above examples `count++` is equivalent to `count = count + 1`. It increases the value of `count` by 1. When using `++` before the variable (e.g., `++count`), it increments the value before using it in an expression. When used after the variable (e.g., `count++`), it increments the value after using it in an expression.

```javascript
let a = 5;
console.log(a++); // Output: 5 (a is incremented after this line is executed)
console.log(a); // Output: 6
console.log(++a); // Output: 7 (a is incremented before this line is executed)
```

### Decrement (`--`)

```javascript
let count = 5;
count--; // count is now 4
```

## Order of Operations

JavaScript follows the order of operations, often remembered by the acronym PEMDAS (Parentheses, Exponents, Multiplication and Division (from left to right), Addition and Subtraction (from left to right)). See [PEMDAS rules](https://en.wikipedia.org/wiki/Order_of_operations) for more details.

Operations are performed in the following order:

1. Parentheses `()`
2. Exponentiation `**`
3. Multiplication `*` and Division `/`
4. Addition `+` and Subtraction `-`

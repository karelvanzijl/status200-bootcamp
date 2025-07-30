# Comparison Operators in JavaScript

Comparison operators are used to compare two values and return a boolean result (`true` or `false`).

### Equal to (`==`)

```javascript
let isEqual = 5 == "5"; // true (type coercion)
```

### Strict Equal to (`===`)

```javascript
let isStrictEqual = 5 === "5"; // false (no type coercion)
```

### Not Equal to (`!=`)

```javascript
let isNotEqual = 5 != 3; // true
```

### Strict Not Equal to (`!==`)

```javascript
let isStrictNotEqual = 5 !== "5"; // true (no type coercion)
```

### Greater Than (`>`)

```javascript
let isGreater = 10 > 5; // true
```

### Less Than (`<`)

```javascript
let isLess = 3 < 7; // true
```

### Greater Than or Equal to (`>=`)

```javascript
let isGreaterOrEqual = 5 >= 5; // true
```

### Less Than or Equal to (`<=`)

```javascript
let isLessOrEqual = 4 <= 6; // true
```

## Note

We can apply comparison operators to strings as well. When comparing strings, JavaScript compares them based on their Unicode values.

```javascript
console.log("Bob" > "Alice"); // true
console.log("5" > 10); // false
console.log(5 > "10"); // false"
```

Unicode values are numerical representations of characters. For example, the Unicode value of 'A' is 65, and 'B' is 66, so "Bob" is greater than "Alice" because 'B' (66) comes after 'A' (65).

In the second statement, '5' is compared to 10 after type coercion, which results in false, as '5' is converted to a number before comparison.

In the third statement, 5 is compared to '10' after type coercion, which also results in false, as '10' is converted to a number before comparison.

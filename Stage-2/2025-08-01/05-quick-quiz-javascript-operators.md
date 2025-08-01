## Navigation

1. [Overview](readme.md)
2. [Ternary Operator](./01-js-ternary-operator.md)
3. [Exercise: Ternary Operator](./02-exercise-ternary-operator.md)
4. [Logical Operators](./03-js-logical-operators.md)
5. [Exercise: Logical Operators](./04-exercise-logical-operators.md)
6. [Quick Quiz - Operators](./05-quick-quiz-javascript-operators.md) ← _You are here_
7. [If ... else Statements](./06-js-if-else.md)
8. [Exercise: If ... else Statements](./07-exercise-for-if.md)
9. [Exercise: BMI Calculator 2.0](./08-exercise-bmi-calculator-2.md)
10. [ssignment: ATM Machine - Version 1.0](./09-assignment-atm-v1.md)

---

# Quick Quiz - JavaScript Operators & Data Types

20 questions to test your knowledge of JavaScript operators, data types, and expressions.

## Instructions:

**1. Raise your hand if you know the answer**

-   If you raise your hand, be ready to share your answer.

**2. If you don't know the answer, keep your hand down**

-   Be honest - it's okay not to know everything yet!

**3. Don't worry if you're unsure**

-   We'll discuss every answer together!

---

## Quiz Questions with Answers

### Primitive Data Types

**Question 1:** Which of the following are falsy values in JavaScript?

-   a) `0`, `""`, `null`, `undefined`, `false`, `NaN`
-   b) `0`, `"0"`, `null`, `undefined`, `false`
-   c) `""`, `null`, `undefined`, `false`, `[]`
-   d) `0`, `""`, `null`, `undefined`, `true`

**Answer: a) `0`, `""`, `null`, `undefined`, `false`, `NaN`**

**Explanation:** JavaScript has exactly 6 falsy values: `false`, `0`, `""` (empty string), `null`, `undefined`, and `NaN`. Everything else is truthy, including `"0"` (string with zero), `[]` (empty array), and `{}` (empty object).

---

**Question 2:** What will be the result of this code?

```javascript
let value = 5;
let result = value + "3";
console.log(result);
console.log(typeof result);
```

-   a) `8` and `"number"`
-   b) `"53"` and `"string"`
-   c) `8` and `"string"`
-   d) `"53"` and `"number"`

**Answer: b) `"53"` and `"string"`**

**Explanation:** When using the `+` operator with a number and a string, JavaScript performs string concatenation. The number `5` is converted to a string and concatenated with `"3"`, resulting in `"53"`. The type is `"string"`.

---

### Arithmetic Operators

**Question 3:** What is the result of `17 % 5`?

-   a) 3
-   b) 2
-   c) 3.4
-   d) 12

**Answer: b) 2**

**Explanation:** The modulus operator `%` returns the remainder of division. `17 ÷ 5 = 3` with a remainder of `2`, so `17 % 5 = 2`.

---

**Question 4:** What will be the output of this expression following the order of operations?

```javascript
let result = 2 + 3 * 4 ** 2;
console.log(result);
```

-   a) 100
-   b) 50
-   c) 32
-   d) 20

**Answer: b) 50**

**Explanation:** Following PEMDAS: First `4 ** 2 = 16`, then `3 * 16 = 48`, finally `2 + 48 = 50`. Exponentiation has higher precedence than multiplication, which has higher precedence than addition.

---

### Assignment Operators

**Question 5:** What will be the value of `x` after this code executes?

```javascript
let x = 10;
x += 5;
x *= 2;
x -= 8;
```

-   a) 12
-   b) 22
-   c) 27
-   d) 32

**Answer: b) 22**

**Explanation:** Step by step: `x = 10`, then `x = 10 + 5 = 15`, then `x = 15 * 2 = 30`, finally `x = 30 - 8 = 22`.

---

**Question 6:** What's the difference between `x = x + 5` and `x += 5`?

-   a) They produce different results
-   b) `+=` is faster
-   c) They are functionally identical
-   d) `+=` only works with numbers

**Answer: c) They are functionally identical**

**Explanation:** `x += 5` is just shorthand for `x = x + 5`. Both perform the same operation and produce the same result. The assignment operator is simply more concise to write.

---

### Comparison Operators

**Question 7:** What is the difference between `==` and `===`?

-   a) `==` compares values, `===` compares references
-   b) `==` allows type coercion, `===` requires same type and value
-   c) `===` is faster than `==`
-   d) There is no difference

**Answer: b) `==` allows type coercion, `===` requires same type and value**

**Explanation:** `==` (loose equality) converts types if needed before comparing, while `===` (strict equality) checks both type and value without conversion. For example: `5 == "5"` is `true`, but `5 === "5"` is `false`.

---

**Question 8:** What will this code output?

```javascript
console.log("10" > 5);
console.log("10" > "5");
```

-   a) `true`, `true`
-   b) `true`, `false`
-   c) `false`, `true`
-   d) `false`, `false`

**Answer: b) `true`, `false`**

**Explanation:** In the first comparison, `"10"` is converted to a number (10) and compared with 5, so `true`. In the second comparison, both are strings, so JavaScript compares them alphabetically: "1" comes before "5", making "10" < "5", so `false`.

---

### Ternary Operator

**Question 9:** What will be the value of `message`?

```
let age = 16;
let hasPermission = true;
let message = age >= 18 ? "Access granted" : hasPermission ? "Access granted with permission" : "Access denied";
```

-   a) "Access granted"
-   b) "Access granted with permission"
-   c) "Access denied"
-   d) Error

**Answer: b) "Access granted with permission"**

**Explanation:** Since `age >= 18` is `false` (16 < 18), we move to the second part. `hasPermission` is `true`, so the result is "Access granted with permission".

---

**Question 10:** Which ternary operator expression is equivalent to this if-else statement?

```javascript
let discount;
if (isMember) {
    discount = 0.1;
} else {
    discount = 0;
}
```

-   a) `let discount = isMember ? 0 : 0.1;`
-   b) `let discount = isMember ? 0.1 : 0;`
-   c) `let discount = isMember && 0.1 || 0;`
-   d) `let discount = !isMember ? 0.1 : 0;`

**Answer: b) `let discount = isMember ? 0.1 : 0;`**

**Explanation:** The ternary operator follows the pattern `condition ? valueIfTrue : valueIfFalse`. If `isMember` is true, assign 0.1; otherwise, assign 0.

---

### Logical Operators

**Question 11:** What will be the result of this expression?

```javascript
let result = (true && false) || true;
console.log(result);
```

-   a) `true`
-   b) `false`
-   c) `undefined`
-   d) Error

**Answer: a) `true`**

**Explanation:** Due to operator precedence, this evaluates as `(true && false) || true`. First, `true && false = false`, then `false || true = true`.

---

**Question 12:** What will be logged to the console?

```javascript
let name = "";
let displayName = name || "Anonymous";
console.log(displayName);
```

-   a) `""`
-   b) `"Anonymous"`
-   c) `undefined`
-   d) `null`

**Answer: b) `"Anonymous"`**

**Explanation:** Since `name` is an empty string (falsy), the `||` operator returns the second operand, "Anonymous". This is a common pattern for setting default values.

---

**Question 13:** What is the result of this logical expression?

```javascript
let result = (!true && false) || !false;
console.log(result);
```

-   a) `true`
-   b) `false`
-   c) `undefined`
-   d) Error

**Answer: a) `true`**

**Explanation:** Step by step: `!true = false`, `!false = true`, so we have `false && false || true`. Due to precedence: `(false && false) || true = false || true = true`.

---

### Mixed Concepts

**Question 14:** What will this code output?

```javascript
let x = 5;
let y = "5";
let result = x === y ? x + y : x * 2;
console.log(result);
```

-   a) `"55"`
-   b) `10`
-   c) `25`
-   d) `"10"`

**Answer: b) `10`**

**Explanation:** `x === y` is `false` because `5 !== "5"` (different types). So we execute the false case: `x * 2 = 5 * 2 = 10`.

---

**Question 15:** What will be the final value of `score`?

```javascript
let score = 0;
let bonus = 10;
let multiplier = 2;

score += bonus;
score *= multiplier;
let finalScore = score > 15 ? score + 5 : score - 5;
```

-   a) 15
-   b) 20
-   c) 25
-   d) 5

**Answer: c) 25**

**Explanation:** `score = 0 + 10 = 10`, then `score = 10 * 2 = 20`. Since `20 > 15` is `true`, `finalScore = 20 + 5 = 25`.

---

**Question 16:** What is the result of this complex expression?

```javascript
let a = 10;
let b = 0;
let c = 5;
let result = (a > b && c) || (b && a);
console.log(result);
```

-   a) `true`
-   b) `false`
-   c) `5`
-   d) `10`

**Answer: c) `5`**

**Explanation:** Due to operator precedence: `((a > b) && c) || (b && a)`. First: `(10 > 0) && 5 = true && 5 = 5`. Since `5` is truthy, the OR operator returns `5` without evaluating the second part.

---

**Question 17:** What will this code output?

```javascript
let user = null;
let name = (user && user.name) || "Guest";
console.log(name);
```

-   a) `null`
-   b) `undefined`
-   c) `"Guest"`
-   d) Error

**Answer: c) `"Guest"`**

**Explanation:** `user && user.name` evaluates to `null` (because `user` is falsy, short-circuit evaluation stops). Then `null || "Guest"` returns `"Guest"`. This is safe property access using logical operators.

---

**Question 18:** What is the type and value of this expression?

```javascript
let result = 5 + 3 + "2" + 1;
console.log(result, typeof result);
```

-   a) `"5321"`, `"string"`
-   b) `11`, `"number"`
-   c) `"821"`, `"string"`
-   d) `"5312"`, `"string"`

**Answer: c) `"821"`, `"string"`**

**Explanation:** Left-to-right evaluation: `5 + 3 = 8`, then `8 + "2" = "82"` (string concatenation), then `"82" + 1 = "821"` (string concatenation). Once a string is involved, all subsequent operations become string concatenation.

---

## Challenge Questions (Bonus)

**Question 19:** What will be logged?

```javascript
let a = 3;
let b = 4;
let c = 5;
let result = a < b < c;
console.log(result);
```

-   a) `true`
-   b) `false`
-   c) `undefined`
-   d) Error

**Answer: a) `true`**

**Explanation:** This evaluates left-to-right: `(a < b) < c` becomes `(3 < 4) < 5`, which is `true < 5`. Since `true` converts to `1`, we get `1 < 5`, which is `true`.

---

**Question 20:** What will this advanced expression return?

```javascript
let x = 0;
let y = 1;
let z = 2;
let result = ++x || (y++ && ++z);
console.log(result, x, y, z);
```

-   a) `1, 1, 1, 2`
-   b) `1, 1, 2, 3`
-   c) `3, 1, 1, 3`
-   d) `1, 1, 1, 3`

**Answer: a) `1, 1, 1, 2`**

**Explanation:** `++x` increments `x` to 1 and returns 1 (truthy). Due to short-circuit evaluation in OR, `y++ && ++z` is not evaluated, so `y` remains 1 and `z` remains 2. The result is 1.

---

## Summary

This quiz covers:

-   **Primitive Data Types**: Falsy values, type coercion, typeof operator
-   **Arithmetic Operators**: Basic math operations, modulus, order of operations
-   **Assignment Operators**: Shorthand operators and their equivalents
-   **Comparison Operators**: Loose vs strict equality, type coercion in comparisons
-   **Ternary Operator**: Conditional assignments, nested ternary expressions
-   **Logical Operators**: AND, OR, NOT, short-circuit evaluation, default values

**Key Takeaways:**

1. Understanding type coercion is crucial for avoiding bugs
2. Use strict equality (`===`) most of the time
3. Logical operators can be used for more than just boolean logic
4. Operator precedence matters in complex expressions
5. Short-circuit evaluation can be used for safe operations and default values

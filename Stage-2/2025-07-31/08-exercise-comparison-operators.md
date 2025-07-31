# Exercise: Comparison Operators

## Setup

### Step 1: Create Project Structure

1. Create a new folder called `comparison-operators-practice`
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
        <title>Comparison Operators Practice</title>
    </head>
    <body>
        <h1>JavaScript Comparison Operators Practice</h1>
        <p>Open the Developer Tools Console to see the results!</p>

        <script src="js/scripts.js"></script>
    </body>
</html>
```

## Exercise Tasks

Complete each task by writing JavaScript code in your `scripts.js` file. Use `console.log()` to display the results.

### Task 1: Equal to (==)

Practice using the equal operator with type coercion:

```javascript
// Your code here
let num1 = 5;
let str1 = "5";
let num2 = 10;
let str2 = "hello";

console.log("5 == '5':", num1 == str1);
console.log("5 == 10:", num1 == num2);
console.log("'5' == '5':", str1 == str1);
console.log("5 == 'hello':", num1 == str2);

// More examples
let isTrue = true;
let isOne = 1;
let isFalse = false;
let isZero = 0;

console.log("true == 1:", isTrue == isOne);
console.log("false == 0:", isFalse == isZero);
console.log("true == 'true':", isTrue == "true");
```

**Expected Output:**

```
5 == '5': true
5 == 10: false
'5' == '5': true
5 == 'hello': false
true == 1: true
false == 0: true
true == 'true': false
```

### Task 2: Strict Equal to (===)

Practice using strict equality without type coercion:

```javascript
// Your code here
let num1 = 5;
let str1 = "5";
let num2 = 5;
let bool1 = true;
let bool2 = false;

console.log("5 === '5':", num1 === str1);
console.log("5 === 5:", num1 === num2);
console.log("true === 1:", bool1 === 1);
console.log("false === 0:", bool2 === 0);

// Same type comparisons
console.log("'hello' === 'hello':", "hello" === "hello");
console.log("'hello' === 'world':", "hello" === "world");
console.log("true === true:", true === true);
console.log("null === null:", null === null);
console.log("undefined === undefined:", undefined === undefined);
```

**Expected Output:**

```
5 === '5': false
5 === 5: true
true === 1: false
false === 0: false
'hello' === 'hello': true
'hello' === 'world': false
true === true: true
null === null: true
undefined === undefined: true
```

### Task 3: Not Equal to (!=)

Practice using the not equal operator:

```javascript
// Your code here
let age1 = 25;
let age2 = 30;
let ageStr = "25";

console.log("25 != 30:", age1 != age2);
console.log("25 != '25':", age1 != ageStr);
console.log("25 != 25:", age1 != age1);

// Boolean comparisons
let isActive = true;
let isInactive = false;

console.log("true != false:", isActive != isInactive);
console.log("true != 1:", isActive != 1);
console.log("false != 0:", isInactive != 0);

// Null and undefined
console.log("null != undefined:", null != undefined);
console.log("null != 0:", null != 0);
```

**Expected Output:**

```
25 != 30: true
25 != '25': false
25 != 25: false
true != false: true
true != 1: false
false != 0: false
null != undefined: false
null != 0: true
```

### Task 4: Strict Not Equal to (!==)

Practice using strict not equal operator:

```javascript
// Your code here
let number = 42;
let string = "42";
let boolean = true;
let one = 1;

console.log("42 !== '42':", number !== string);
console.log("42 !== 42:", number !== number);
console.log("true !== 1:", boolean !== one);
console.log("'hello' !== 'Hello':", "hello" !== "Hello");

// Null and undefined strict comparison
let nullValue = null;
let undefinedValue = undefined;

console.log("null !== undefined:", nullValue !== undefinedValue);
console.log("null !== 0:", nullValue !== 0);
console.log("undefined !== '':", undefinedValue !== "");
```

**Expected Output:**

```
42 !== '42': true
42 !== 42: false
true !== 1: true
'hello' !== 'Hello': true
null !== undefined: true
null !== 0: true
undefined !== '': true
```

### Task 5: Greater Than (>)

Practice using greater than comparisons:

```javascript
// Your code here
let score1 = 85;
let score2 = 92;
let score3 = 85;

console.log("92 > 85:", score2 > score1);
console.log("85 > 92:", score1 > score2);
console.log("85 > 85:", score1 > score3);

// String comparisons (alphabetical)
let nameA = "Alice";
let nameB = "Bob";
let nameC = "Charlie";

console.log("'Bob' > 'Alice':", nameB > nameA);
console.log("'Alice' > 'Charlie':", nameA > nameC);

// Mixed type comparisons
console.log("'10' > 5:", "10" > 5);
console.log("'5' > 10:", "5" > 10);
```

**$Note$:** JavaScript compares strings based on their Unicode values, so "Bob" is greater than "Alice" because "B" comes after "A".

**Expected Output:**

```
92 > 85: true
85 > 92: false
85 > 85: false
'Bob' > 'Alice': true
'Alice' > 'Charlie': false
'10' > 5: true
'5' > 10: false
```

### Task 6: Less Than (<)

Practice using less than comparisons:

```javascript
// Your code here
let temperature1 = 20;
let temperature2 = 15;
let temperature3 = 25;

console.log("15 < 20:", temperature2 < temperature1);
console.log("20 < 15:", temperature1 < temperature2);
console.log("25 < 20:", temperature3 < temperature1);

// Price comparisons
let price1 = 19.99;
let price2 = 24.5;
let price3 = 19.99;

console.log("19.99 < 24.50:", price1 < price2);
console.log("24.50 < 19.99:", price2 < price1);
console.log("19.99 < 19.99:", price1 < price3);

// Date strings (YYYY-MM-DD format)
console.log("'2024-01-15' < '2024-01-20':", "2024-01-15" < "2024-01-20");
console.log("'2024-01-20' < '2024-01-15':", "2024-01-20" < "2024-01-15");
```

**Expected Output:**

```
15 < 20: true
20 < 15: false
25 < 20: false
19.99 < 24.50: true
24.50 < 19.99: false
19.99 < 19.99: false
'2024-01-15' < '2024-01-20': true
'2024-01-20' < '2024-01-15': false
```

### Task 7: Greater Than or Equal to (>=)

Practice using greater than or equal comparisons:

```javascript
// Your code here
let minAge = 18;
let userAge1 = 20;
let userAge2 = 17;
let userAge3 = 18;

console.log("20 >= 18:", userAge1 >= minAge);
console.log("17 >= 18:", userAge2 >= minAge);
console.log("18 >= 18:", userAge3 >= minAge);

// Grade comparisons
let passingGrade = 60;
let studentGrade1 = 75;
let studentGrade2 = 55;
let studentGrade3 = 60;

console.log("75 >= 60 (Pass):", studentGrade1 >= passingGrade);
console.log("55 >= 60 (Pass):", studentGrade2 >= passingGrade);
console.log("60 >= 60 (Pass):", studentGrade3 >= passingGrade);
```

**Expected Output:**

```
20 >= 18: true
17 >= 18: false
18 >= 18: true
75 >= 60 (Pass): true
55 >= 60 (Pass): false
60 >= 60 (Pass): true
```

### Task 8: Less Than or Equal to (<=)

Practice using less than or equal comparisons:

```javascript
// Your code here
let maxCapacity = 50;
let currentCount1 = 45;
let currentCount2 = 55;
let currentCount3 = 50;

console.log("45 <= 50:", currentCount1 <= maxCapacity);
console.log("55 <= 50:", currentCount2 <= maxCapacity);
console.log("50 <= 50:", currentCount3 <= maxCapacity);

// Budget comparisons
let budget = 1000;
let expense1 = 750;
let expense2 = 1200;
let expense3 = 1000;

console.log("750 <= 1000 (Within budget):", expense1 <= budget);
console.log("1200 <= 1000 (Within budget):", expense2 <= budget);
console.log("1000 <= 1000 (Within budget):", expense3 <= budget);
```

**Expected Output:**

```
45 <= 50: true
55 <= 50: false
50 <= 50: true
750 <= 1000 (Within budget): true
1200 <= 1000 (Within budget): false
1000 <= 1000 (Within budget): true
```

### Task 9: Comparing Different Data Types

Explore how JavaScript compares different data types:

```javascript
// Your code here
console.log("=== Type Coercion Examples ===");

// Numbers and strings
console.log("'10' > 5:", "10" > 5);
console.log("'10' == 10:", "10" == 10);
console.log("'10' === 10:", "10" === 10);

// Booleans and numbers
console.log("true > 0:", true > 0);
console.log("false < 1:", false < 1);
console.log("true == 1:", true == 1);
console.log("true === 1:", true === 1);

// Special cases
console.log("null == 0:", null == 0);
console.log("null < 1:", null < 1);
console.log("undefined == null:", undefined == null);
console.log("undefined === null:", undefined === null);

// Empty string
console.log("'' == 0:", "" == 0);
console.log("'' === 0:", "" === 0);
console.log("'' < 1:", "" < 1);
```

**Expected Output:**

```
=== Type Coercion Examples ===
'10' > 5: true
'10' == 10: true
'10' === 10: false
true > 0: true
false < 1: true
true == 1: true
true === 1: false
null == 0: false
null < 1: true
undefined == null: true
undefined === null: false
'' == 0: true
'' === 0: false
'' < 1: true
```

## Challenge Tasks

### Challenge 1: Age Verification System

Create an age verification system using comparison operators:

```javascript
// Your code here
let minimumAge = 18;
let user1Age = 16;
let user2Age = 18;
let user3Age = 25;
let user4Age = "20"; // String age

// Check if each user can access the system
// Display results with user-friendly messages
```

### Challenge 2: Price Comparison Shopping

Create a price comparison system:

```javascript
// Your code here
let product1Price = 29.99;
let product2Price = "25.50"; // String price
let product3Price = 32.0;
let budget = 30;

// Compare prices and determine:
// - Which products are within budget
```

## Testing Your Work

1. Open your HTML file in a web browser
2. Open Developer Tools (F12 or right-click → Inspect)
3. Go to the Console tab
4. You should see all your console.log outputs
5. Compare your results with the expected outputs

## Key Learning Points

After completing this exercise, you should understand:

-   **Equal (==)**: Compares values with type coercion
-   **Strict Equal (===)**: Compares values and types without coercion
-   **Not Equal (!=)**: Returns true if values are different (with coercion)
-   **Strict Not Equal (!==)**: Returns true if values or types are different
-   **Greater Than (>)**: Checks if left value is greater than right
-   **Less Than (<)**: Checks if left value is less than right
-   **Greater Than or Equal (>=)**: Checks if left value is greater than or equal to right
-   **Less Than or Equal (<=)**: Checks if left value is less than or equal to right
-   **Type Coercion**: How JavaScript converts types during comparison

## Best Practices

1. **Use strict equality (===) most of the time**

    ```javascript
    // Preferred
    if (userAge === 18) {
        /* ... */
    }

    // Be careful with
    if (userAge == 18) {
        /* ... */
    }
    ```

2. **Be aware of type coercion**

    ```javascript
    console.log("5" == 5); // true (coercion)
    console.log("5" === 5); // false (no coercion)
    ```

3. **Comparing strings is alphabetical**
    ```javascript
    console.log("apple" < "banana"); // true
    console.log("10" < "2"); // true (string comparison)
    ```

## Common Mistakes to Avoid

1. **Confusing == and ===**

    ```javascript
    let result1 = 5 == "5"; // true
    let result2 = 5 === "5"; // false
    ```

2. **Unexpected type coercion**

    ```javascript
    console.log(true == 1); // true
    console.log(false == 0); // true
    console.log("" == 0); // true
    ```

3. **String number comparisons**

    ```javascript
    console.log("10" > "2"); // false (string comparison)
    console.log("10" > 2); // true (number comparison)
    ```

4. **null and undefined quirks**
    ```javascript
    console.log(null == undefined); // true
    console.log(null === undefined); // false
    ```

Remember: Comparison operators are essential for making decisions in your code. Understanding the difference between loose (\=\=) and strict (\=\=\=) equality is crucial for writing reliable JavaScript!

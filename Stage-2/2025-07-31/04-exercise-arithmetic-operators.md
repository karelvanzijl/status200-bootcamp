## Navigation

1. [Overview](readme.md)
2. [Primitive Data Types](./01-js-primitive-data-types.md)
3. [Exercise: Primitive Data Types](./02-exercise-primitive-data-types.md)
4. [Arithmetic Operators](./03-js-arithmetic-operators.md)
5. [Exercise: Arithmetic Operators](./04-exercise-arithmetic-operators.md) ← _You are here_
6. [Assignment Operators](./05-js-assignment-operators.md)
7. [Exercise: Assignment Operators](./06-exercise-assignment-operators.md)
8. [Comparison Operators](./07-js-comparison-operators.md)
9. [Exercise: Comparison Operators](./08-exercise-comparison-operators.md)

---

# Exercise: Arithmetic Operators

## Setup

### Step 1: Create Project Structure

1. Create a new folder called `arithmetic-operators-practice`
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
        <title>Arithmetic Operators Practice</title>
    </head>
    <body>
        <h1>JavaScript Arithmetic Operators Practice</h1>
        <p>Open the Developer Tools Console to see the results!</p>

        <script src="js/scripts.js"></script>
    </body>
</html>
```

## Exercise Tasks

Complete each task by writing JavaScript code in your `scripts.js` file. Use `console.log()` to display the results.

### Task 1: Addition (+)

Create variables and perform addition operations:

```javascript
// Your code here
let price1 = 25.5;
let price2 = 14.75;
let total = price1 + price2;

console.log("Price 1:", price1);
console.log("Price 2:", price2);
console.log("Total:", total);

// More addition examples
let score1 = 85;
let score2 = 92;
let averageScore = (score1 + score2) / 2;

console.log("Score 1:", score1);
console.log("Score 2:", score2);
console.log("Average Score:", averageScore);
```

**Expected Output:**

```
Price 1: 25.5
Price 2: 14.75
Total: 40.25
Score 1: 85
Score 2: 92
Average Score: 88.5
```

### Task 2: Subtraction (-)

Create variables and perform subtraction operations:

```javascript
// Your code here
let budget = 1000;
let expenses = 750;
let remaining = budget - expenses;

console.log("Budget:", budget);
console.log("Expenses:", expenses);
console.log("Remaining:", remaining);

// Temperature difference
let todayTemp = 22;
let yesterdayTemp = 18;
let tempDifference = todayTemp - yesterdayTemp;

console.log("Today's Temperature:", todayTemp);
console.log("Yesterday's Temperature:", yesterdayTemp);
console.log("Temperature Difference:", tempDifference);
```

**Expected Output:**

```
Budget: 1000
Expenses: 750
Remaining: 250
Today's Temperature: 22
Yesterday's Temperature: 18
Temperature Difference: 4
```

### Task 3: Multiplication (\*)

Create variables and perform multiplication operations:

```javascript
// Your code here
let itemPrice = 15.99;
let quantity = 3;
let totalCost = itemPrice * quantity;

console.log("Item Price:", itemPrice);
console.log("Quantity:", quantity);
console.log("Total Cost:", totalCost);

// Area calculation
let length = 8;
let width = 6;
let area = length * width;

console.log("Length:", length);
console.log("Width:", width);
console.log("Area:", area);
```

**Expected Output:**

```
Item Price: 15.99
Quantity: 3
Total Cost: 47.97
Length: 8
Width: 6
Area: 48
```

### Task 4: Division (/)

Create variables and perform division operations:

```javascript
// Your code here
let totalDistance = 120;
let time = 2;
let speed = totalDistance / time;

console.log("Total Distance:", totalDistance);
console.log("Time:", time);
console.log("Speed:", speed);

// Splitting costs
let billAmount = 85.5;
let people = 3;
let costPerPerson = billAmount / people;

console.log("Bill Amount:", billAmount);
console.log("Number of People:", people);
console.log("Cost Per Person:", costPerPerson);
```

**Expected Output:**

```
Total Distance: 120
Time: 2
Speed: 60
Bill Amount: 85.5
Number of People: 3
Cost Per Person: 28.5
```

### Task 5: Modulus (%)

Create variables and use the modulus operator to find remainders:

```javascript
// Your code here
let dividend = 17;
let divisor = 5;
let remainder = dividend % divisor;

console.log(dividend + " divided by " + divisor + " has remainder:", remainder);

// Check if a number is even or odd
let number1 = 12;
let number2 = 15;

console.log(number1 + " % 2 =", number1 % 2);
console.log(number2 + " % 2 =", number2 % 2);

// Minutes to hours and minutes
let totalMinutes = 150;
let hours = Math.floor(totalMinutes / 60);
let minutes = totalMinutes % 60;

console.log("Total minutes:", totalMinutes);
console.log("Hours:", hours);
console.log("Remaining minutes:", minutes);
```

**Expected Output:**

```
17 divided by 5 has remainder: 2
12 % 2 = 0
15 % 2 = 1
Total minutes: 150
Hours: 2
Remaining minutes: 30
```

### Task 6: Exponentiation (\*\*)

Create variables and perform exponentiation operations:

```javascript
// Your code here
let base = 2;
let exponent = 3;
let result = base ** exponent;

console.log(base + " to the power of " + exponent + " =", result);

// Square and cube calculations
let side = 4;
let square = side ** 2;
let cube = side ** 3;

console.log("Side length:", side);
console.log("Square (area):", square);
console.log("Cube (volume):", cube);

// Compound interest example
let principal = 1000;
let rate = 1.05; // 5% interest
let years = 3;
let finalAmount = principal * rate ** years;

console.log("Principal:", principal);
console.log("Rate:", rate);
console.log("Years:", years);
console.log("Final Amount:", finalAmount);
```

**Expected Output:**

```
2 to the power of 3 = 8
Side length: 4
Square (area): 16
Cube (volume): 64
Principal: 1000
Rate: 1.05
Years: 3
Final Amount: 1157.625
```

### Task 7: Order of Operations

Demonstrate how JavaScript follows the order of operations (PEMDAS):

```javascript
// Your code here
let result1 = 5 + 3 * 2;
let result2 = (5 + 3) * 2;
let result3 = 10 / 2 + 3 * 4;
let result4 = (10 / 2 + 3) * 4;

console.log("5 + 3 * 2 =", result1);
console.log("(5 + 3) * 2 =", result2);
console.log("10 / 2 + 3 * 4 =", result3);
console.log("(10 / 2 + 3) * 4 =", result4);

// Complex calculation
let complexResult = 2 ** 3 + 4 * 5 - 6 / 2;
console.log("2 ** 3 + 4 * 5 - 6 / 2 =", complexResult);
```

**Expected Output:**

```
5 + 3 * 2 = 11
(5 + 3) * 2 = 16
10 / 2 + 3 * 4 = 17
(10 / 2 + 3) * 4 = 32
2 ** 3 + 4 * 5 - 6 / 2 = 25
```

## Challenge Tasks

### Challenge 1: Calculator Functions

Create variables for a simple calculator operation:

```javascript
// Your code here - create a simple calculator
let num1 = 15;
let num2 = 4;

// Perform all operations and display results
// Addition, subtraction, multiplication, division, modulus, exponentiation
```

### Challenge 2: Real-World Calculations

Create a program that calculates:

1. The area of a circle (π \* radius²)
2. The volume of a cylinder (π \* radius² \* height)
3. The distance traveled (speed \* time)

```javascript
// Your code here
let pi = 3.14159;
let radius = 5;
let height = 10;
let speed = 65; // km/h
let time = 2.5; // hours

// Calculate and display all results
```

### Challenge 3: Number Patterns

Use arithmetic operators to create interesting number patterns:

```javascript
// Create patterns like:
// Powers of 2: 1, 2, 4, 8, 16, 32...
// Fibonacci-like: 0, 1, 1, 2, 3, 5, 8, 13...
// Square numbers: 1, 4, 9, 16, 25...
```

> Fibonacci sequence works like this: start with 0 and 1, then each next number is the sum of the previous two.

## Testing Your Work

1. Open your HTML file in a web browser
2. Open Developer Tools (F12 or right-click > Inspect)
3. Go to the Console tab
4. You should see all your console.log outputs
5. Compare your results with the expected outputs

## Key Learning Points

After completing this exercise, you should understand:

-   **Addition (+)**: Combines numbers or concatenates strings
-   **Subtraction (-)**: Finds the difference between numbers
-   **Multiplication (\*)**: Multiplies numbers together
-   **Division (/)**: Divides one number by another
-   **Modulus (%)**: Finds the remainder of division
-   **Exponentiation (**)\*\*: Raises a number to a power
-   **Order of operations**: JavaScript follows [PEMDAS rules](https://en.wikipedia.org/wiki/Order_of_operations)
-   **Parentheses**: Can change the order of operations

## Common Mistakes to Avoid

1. **Confusing addition with concatenation**

    ```javascript
    let result = 5 + "3"; // "53" (string concatenation)
    let result = 5 + 3; // 8 (addition)
    ```

2. **Forgetting order of operations**

    ```javascript
    let wrong = 5 + 3 * 2; // 11 (not 16)
    let correct = (5 + 3) * 2; // 16
    ```

3. **Division by zero**

    ```javascript
    let result = 10 / 0; // Infinity
    ```

4. **Modulus with decimals**
    ```javascript
    let result = 5.5 % 2; // 1.5 (works, but be careful)
    ```

Remember: Arithmetic operators are fundamental to many calculations in programming. Practice with real-world examples to better understand their applications!

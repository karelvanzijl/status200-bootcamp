# Exercise: Assignment Operators

## Setup

### Step 1: Create Project Structure

1. Create a new folder called `assignment-operators-practice`
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
        <title>Assignment Operators Practice</title>
    </head>
    <body>
        <h1>JavaScript Assignment Operators Practice</h1>
        <p>Open the Developer Tools Console to see the results!</p>

        <script src="js/scripts.js"></script>
    </body>
</html>
```

## Exercise Tasks

Complete each task by writing JavaScript code in your `scripts.js` file. Use `console.log()` to display the results.

### Task 1: Simple Assignment (=)

Create variables using simple assignment:

```javascript
// Your code here
let studentName = "Alice";
let age = 20;
let isEnrolled = true;
let gpa = 3.8;

console.log("Student Name:", studentName);
console.log("Age:", age);
console.log("Is Enrolled:", isEnrolled);
console.log("GPA:", gpa);

// Reassigning values
studentName = "Bob";
age = 22;

console.log("Updated Student Name:", studentName);
console.log("Updated Age:", age);
```

**Expected Output:**

```
Student Name: Alice
Age: 20
Is Enrolled: true
GPA: 3.8
Updated Student Name: Bob
Updated Age: 22
```

### Task 2: Addition Assignment (+=)

Use addition assignment to modify variables:

```javascript
// Your code here
let score = 50;
console.log("Initial score:", score);

score += 25;
console.log("After adding 25:", score);

score += 15;
console.log("After adding 15:", score);

// String concatenation with +=
let message = "Hello";
console.log("Initial message:", message);

message += " World";
console.log("After adding ' World':", message);

message += "!";
console.log("After adding '!':", message);
```

**Expected Output:**

```
Initial score: 50
After adding 25: 75
After adding 15: 90
Initial message: Hello
After adding ' World': Hello World
After adding '!': Hello World!
```

### Task 3: Subtraction Assignment (-=)

Use subtraction assignment to modify variables:

```javascript
// Your code here
let bankBalance = 1000;
console.log("Initial balance:", bankBalance);

bankBalance -= 250;
console.log("After spending 250:", bankBalance);

bankBalance -= 100;
console.log("After spending 100:", bankBalance);

// Temperature example
let temperature = 25;
console.log("Initial temperature:", temperature);

temperature -= 8;
console.log("After dropping 8 degrees:", temperature);
```

**Expected Output:**

```
Initial balance: 1000
After spending 250: 750
After spending 100: 650
Initial temperature: 25
After dropping 8 degrees: 17
```

### Task 4: Multiplication Assignment (\*=)

Use multiplication assignment to modify variables:

```javascript
// Your code here
let investment = 100;
console.log("Initial investment:", investment);

investment *= 2;
console.log("After doubling:", investment);

investment *= 1.5;
console.log("After multiplying by 1.5:", investment);

// Area scaling example
let side = 4;
console.log("Initial side length:", side);

side *= 3;
console.log("After scaling by 3:", side);

let area = side * side;
console.log("New area:", area);
```

**Expected Output:**

```
Initial investment: 100
After doubling: 200
After multiplying by 1.5: 300
Initial side length: 4
After scaling by 3: 12
New area: 144
```

### Task 5: Division Assignment (/=)

Use division assignment to modify variables:

```javascript
// Your code here
let total = 240;
console.log("Initial total:", total);

total /= 2;
console.log("After dividing by 2:", total);

total /= 3;
console.log("After dividing by 3:", total);

// Sharing pizza slices
let pizzaSlices = 16;
let people = 4;

console.log("Total pizza slices:", pizzaSlices);
console.log("Number of people:", people);

pizzaSlices /= people;
console.log("Slices per person:", pizzaSlices);
```

**Expected Output:**

```
Initial total: 240
After dividing by 2: 120
After dividing by 3: 40
Total pizza slices: 16
Number of people: 4
Slices per person: 4
```

### Task 6: Modulus Assignment (%=)

Use modulus assignment to modify variables:

```javascript
// Your code here
let number = 17;
console.log("Initial number:", number);

number %= 5;
console.log("After number %= 5:", number);

// Clock example (hours in 12-hour format)
let hours = 25;
console.log("Hours (24-hour format):", hours);

hours %= 12;
console.log("Hours (12-hour format):", hours);

// Day of week calculation
let dayNumber = 15;
console.log("Day number:", dayNumber);

dayNumber %= 7;
console.log("Day of week (0=Sunday):", dayNumber);
```

**Expected Output:**

```
Initial number: 17
After number %= 5: 2
Hours (24-hour format): 25
Hours (12-hour format): 1
Day number: 15
Day of week (0=Sunday): 1
```

### Task 7: Exponentiation Assignment (\*\*=)

Use exponentiation assignment to modify variables:

```javascript
// Your code here
let base = 2;
console.log("Initial base:", base);

base **= 3;
console.log("After base **= 3:", base);

base **= 2;
console.log("After base **= 2:", base);

// Population growth example
let population = 1000;
let growthRate = 1.02; // 2% growth

console.log("Initial population:", population);

population **= 1; // No change (any number to power 1 = itself)
console.log("After 1 year (no compound growth):", population);

// Simulate compound growth manually
population *= growthRate;
console.log("After applying 2% growth:", population);
```

**Expected Output:**

```
Initial base: 2
After base **= 3: 8
After base **= 2: 64
Initial population: 1000
After 1 year (no compound growth): 1000
After applying 2% growth: 1020
```

### Task 8: Combining Assignment Operators

Use multiple assignment operators together:

```javascript
// Your code here - Game score system
let playerScore = 0;
let lives = 3;
let level = 1;

console.log("=== Game Start ===");
console.log("Score:", playerScore);
console.log("Lives:", lives);
console.log("Level:", level);

// Player collects coins
playerScore += 100;
console.log("After collecting coins - Score:", playerScore);

// Player loses a life
lives -= 1;
console.log("After losing a life - Lives:", lives);

// Bonus multiplier
playerScore *= 2;
console.log("After bonus multiplier - Score:", playerScore);

// Level up
level += 1;
console.log("After leveling up - Level:", level);

// Final calculation
let finalScore = playerScore;
finalScore += level * 50;
console.log("Final Score (with level bonus):", finalScore);
```

**Expected Output:**

```
=== Game Start ===
Score: 0
Lives: 3
Level: 1
After collecting coins - Score: 100
After losing a life - Lives: 2
After bonus multiplier - Score: 200
After leveling up - Level: 2
Final Score (with level bonus): 250
```

## Challenge Tasks

### Challenge 1: Shopping Cart Calculator

Create a shopping cart system using assignment operators:

```javascript
// Your code here
let cartTotal = 0;
let taxRate = 0.08; // 8% tax
let discount = 0;

// Add items to cart
// Use += to add item prices
// Use -= to apply discounts
// Use *= to apply tax
// Display running totals
```

### Challenge 2: Fitness Tracker

Create a fitness tracking system:

```javascript
// Your code here
let dailySteps = 0;
let weeklySteps = 0;
let caloriesBurned = 0;

// Simulate daily activity using assignment operators
// Each 1000 steps burns approximately 40 calories
// Track progress throughout the week
```

### Challenge 3: Bank Account Simulator

Create a simple bank account with assignment operators:

```javascript
// Your code here
let balance = 1000;
let interestRate = 1.02; // 2% interest

// Perform various transactions:
// - Deposits (+=)
// - Withdrawals (-=)
// - Interest calculation (*=)
// - Fee calculations (-=)
```

## Testing Your Work

1. Open your HTML file in a web browser
2. Open Developer Tools (F12 or right-click → Inspect)
3. Go to the Console tab
4. You should see all your console.log outputs
5. Compare your results with the expected outputs

## Key Learning Points

After completing this exercise, you should understand:

-   **Simple Assignment (=)**: Assigns a value to a variable
-   **Addition Assignment (+=)**: Adds and assigns in one operation
-   **Subtraction Assignment (-=)**: Subtracts and assigns in one operation
-   **Multiplication Assignment (\*=)**: Multiplies and assigns in one operation
-   **Division Assignment (/=)**: Divides and assigns in one operation
-   **Modulus Assignment (%=)**: Finds remainder and assigns in one operation
-   **Exponentiation Assignment (\*\*=)**: Raises to power and assigns in one operation

## Comparison: Long Form vs Assignment Operators

```javascript
// Long form
let x = 10;
x = x + 5; // x is now 15

// Short form (assignment operator)
let y = 10;
y += 5; // y is now 15 (same result, shorter code)
```

## Common Mistakes to Avoid

1. **Forgetting the variable already has a value**

    ```javascript
    let score = 50;
    score += 25; // score is now 75, not 25
    ```

2. **Using assignment operators on undefined variables**

    ```javascript
    let total;
    total += 10; // Result: NaN (Not a Number)
    ```

3. **Mixing data types unexpectedly**

    ```javascript
    let value = "5";
    value += 3; // "53" (string concatenation, not addition)
    value *= 2; // 106 (now becomes multiplication)
    ```

4. **Order of operations with assignment operators**
    ```javascript
    let x = 5;
    x += 2 * 3; // x becomes 11 (5 + 6), not 21
    ```

Remember: Assignment operators are shortcuts that make your code more concise and easier to read. They're especially useful when you need to update variables based on their current values!

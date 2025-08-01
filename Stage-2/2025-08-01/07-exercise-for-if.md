## Navigation

1. [Overview](readme.md)
2. [Ternary Operator](./01-js-ternary-operator.md)
3. [Exercise: Ternary Operator](./02-exercise-ternary-operator.md)
4. [Logical Operators](./03-js-logical-operators.md)
5. [Exercise: Logical Operators](./04-exercise-logical-operators.md)
6. [Quick Quiz - Operators](./05-quick-quiz-javascript-operators.md)
7. [If ... else Statements](./06-js-if-else.md)
8. [Exercise: If ... else Statements](./07-exercise-for-if.md) ← _You are here_
9. [Exercise: BMI Calculator 2.0](./08-exercise-bmi-calculator-2.md)
10. [ssignment: ATM Machine - Version 1.0](./09-assignment-atm-v1.md)

---

# Exercise: If and Else Statements

Remember: If-else statements are the foundation of decision-making in programming. Master these concepts and you'll be able to create dynamic, responsive applications!

## Setup

### Step 1: Create Project Structure

1. Create a new folder called `if-else-practice`
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
        <title>If Else Practice</title>
    </head>
    <body>
        <h1>JavaScript If Else Practice</h1>
        <p>Open the Developer Tools Console to see the results!</p>

        <script src="js/scripts.js"></script>
    </body>
</html>
```

## Exercise Tasks

Complete each task by writing JavaScript code in your `scripts.js` file. Use `console.log()` to display the results.

### Task 1: Basic If Statement

Practice using simple if statements:

```javascript
// Your code here
let age = 20;
let temperature = 25;
let isRaining = false;

if (age >= 18) {
    console.log("You are an adult.");
}

if (temperature > 30) {
    console.log("It's hot outside!");
}

if (isRaining) {
    console.log("Don't forget your umbrella!");
}

console.log("Temperature check complete.");
```

**Expected Output:**

```
You are an adult.
Temperature check complete.
```

### Task 2: If-Else Statement

Practice using if-else statements:

```javascript
// Your code here
let score = 85;
let speed = 45;
let account = "premium";

if (score >= 80) {
    console.log("Great job! You passed with a high score.");
} else {
    console.log("You need to study more.");
}

if (speed > 50) {
    console.log("You're speeding! Slow down.");
} else {
    console.log("You're driving at a safe speed.");
}

if (account === "premium") {
    console.log("Welcome, premium member!");
} else {
    console.log("Consider upgrading to premium.");
}
```

**Expected Output:**

```
Great job! You passed with a high score.
You're driving at a safe speed.
Welcome, premium member!
```

### Task 3: If-Else If-Else Chain

Practice using multiple conditions:

```javascript
// Your code here
let grade = 78;
let weather = "sunny";
let dayOfWeek = "saturday";

if (grade >= 90) {
    console.log("Grade: A - Excellent!");
} else if (grade >= 80) {
    console.log("Grade: B - Good job!");
} else if (grade >= 70) {
    console.log("Grade: C - Not bad!");
} else if (grade >= 60) {
    console.log("Grade: D - You can do better!");
} else {
    console.log("Grade: F - Time to study harder!");
}

if (weather === "sunny") {
    console.log("Perfect day for outdoor activities!");
} else if (weather === "rainy") {
    console.log("Good day to stay indoors and read.");
} else if (weather === "cloudy") {
    console.log("Might rain later, bring an umbrella.");
} else {
    console.log("Check the weather forecast.");
}

if (dayOfWeek === "monday") {
    console.log("Start of the work week!");
} else if (dayOfWeek === "friday") {
    console.log("TGIF! Weekend is almost here!");
} else if (dayOfWeek === "saturday" || dayOfWeek === "sunday") {
    console.log("Enjoy your weekend!");
} else {
    console.log("Regular weekday - keep working!");
}
```

**Expected Output:**

```
Grade: C - Not bad!
Perfect day for outdoor activities!
Enjoy your weekend!
```

### Task 4: Age Category System

Create an age categorization system:

```javascript
// Your code here
let person1Age = 5;
let person2Age = 14;
let person3Age = 19;
let person4Age = 35;
let person5Age = 67;

function categorizeAge(age) {
    if (age < 2) {
        return "Baby";
    } else if (age < 13) {
        return "Child";
    } else if (age < 20) {
        return "Teenager";
    } else if (age < 65) {
        return "Adult";
    } else {
        return "Senior";
    }
}

console.log("Age " + person1Age + ": " + categorizeAge(person1Age));
console.log("Age " + person2Age + ": " + categorizeAge(person2Age));
console.log("Age " + person3Age + ": " + categorizeAge(person3Age));
console.log("Age " + person4Age + ": " + categorizeAge(person4Age));
console.log("Age " + person5Age + ": " + categorizeAge(person5Age));
```

**Expected Output:**

```
Age 5: Child
Age 14: Teenager
Age 19: Teenager
Age 35: Adult
Age 67: Senior
```

### Task 5: Simple Calculator

Create a basic calculator using if-else statements:

```javascript
// Your code here
function calculate(num1, operator, num2) {
    let result;

    if (operator === "+") {
        result = num1 + num2;
    } else if (operator === "-") {
        result = num1 - num2;
    } else if (operator === "*") {
        result = num1 * num2;
    } else if (operator === "/") {
        if (num2 === 0) {
            return "Error: Cannot divide by zero";
        }
        result = num1 / num2;
    } else {
        return "Error: Invalid operator";
    }

    return result;
}

console.log("10 + 5 = " + calculate(10, "+", 5));
console.log("15 - 7 = " + calculate(15, "-", 7));
console.log("6 * 4 = " + calculate(6, "*", 4));
console.log("20 / 4 = " + calculate(20, "/", 4));
console.log("10 / 0 = " + calculate(10, "/", 0));
console.log("8 % 3 = " + calculate(8, "%", 3));
```

**Expected Output:**

```
10 + 5 = 15
15 - 7 = 8
6 * 4 = 24
20 / 4 = 5
10 / 0 = Error: Cannot divide by zero
8 % 3 = Error: Invalid operator
```

## Challenge Tasks

### Challenge 1: Season Detector

Create a function that determines the season based on month:

```javascript
// Your code here
function getSeason(month) {
    // Convert to lowercase for case-insensitive comparison
    // Handle both month names and numbers
    // Return the season and a descriptive message
}
```

Test with different inputs

-   "January",
-   "april",
-   "JULY",
-   "October",
-   1,
-   6,
-   12

Expected output:

-   Winter,
-   Spring,
-   Summer,
-   Fall,
-   Winter,
-   Summer,
-   Winter

### Challenge 2: Shipping Cost Calculator

Create a shipping calculator with multiple factors:

```javascript
// Your code here
function calculateShipping(weight, distance, isPriority, membershipLevel) {
    // Base rates:
    // - Weight: $2 per kg for first 5kg, $1.5 per kg after
    // - Distance: $0.50 per km for first 100km, $0.30 per km after
    // - Priority shipping: +50% of base cost
    // - Membership discounts: bronze 5%, silver 10%, gold 15%
    // - Free shipping for gold members on orders over $50
}

// Test different scenarios
```

---

## Best Practices

1. **Use descriptive conditions**

    ```javascript
    // Good
    if (age >= 18) {
        console.log("Can vote");
    }

    // Avoid
    if (a >= 18) {
        console.log("Can vote");
    }
    ```

2. **Always use curly braces**

    ```javascript
    // Preferred
    if (condition) {
        doSomething();
    }

    // Works but avoid
    if (condition) doSomething();
    ```

3. **Handle edge cases**

    ```javascript
    if (score >= 0 && score <= 100) {
        // Valid score
    } else {
        console.log("Invalid score!");
    }
    ```

## Common Mistakes to Avoid

1. **Using assignment instead of comparison**

    ```javascript
    // Wrong
    if ((score = 100)) {
    }

    // Correct
    if (score === 100) {
    }
    ```

2. **Forgetting else if**

    ```javascript
    // Inefficient - all conditions checked
    if (score >= 90) {
        grade = "A";
    }
    if (score >= 80) {
        grade = "B";
    }
    if (score >= 70) {
        grade = "C";
    }

    // Better - stops at first match
    if (score >= 90) {
        grade = "A";
    } else if (score >= 80) {
        grade = "B";
    } else if (score >= 70) {
        grade = "C";
    }
    ```

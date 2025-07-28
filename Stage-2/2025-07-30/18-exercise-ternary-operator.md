# Exercise: Ternary Operator

## Setup

### Step 1: Create Project Structure

1. Create a new folder called `ternary-operator-practice`
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
        <title>Ternary Operator Practice</title>
    </head>
    <body>
        <h1>JavaScript Ternary Operator Practice</h1>
        <p>Open the Developer Tools Console to see the results!</p>

        <script src="js/scripts.js"></script>
    </body>
</html>
```

## Exercise Tasks

Complete each task by writing JavaScript code in your `scripts.js` file. Use `console.log()` to display the results.

### Task 1: Basic Ternary Operator

Practice the basic syntax of the ternary operator:

```javascript
// Your code here
let age = 20;
let canVote = age >= 18 ? "You can vote" : "You cannot vote";
console.log("Age:", age);
console.log("Voting status:", canVote);

let temperature = 15;
let clothing = temperature > 20 ? "Wear light clothes" : "Wear warm clothes";
console.log("Temperature:", temperature + "�C");
console.log("Clothing advice:", clothing);

let score = 75;
let result = score >= 60 ? "Pass" : "Fail";
console.log("Score:", score);
console.log("Result:", result);
```

**Expected Output:**

```
Age: 20
Voting status: You can vote
Temperature: 15�C
Clothing advice: Wear warm clothes
Score: 75
Result: Pass
```

### Task 2: Ternary with Numbers

Use ternary operators to work with numeric values:

```javascript
// Your code here
let balance = 1000;
let purchase = 250;
let canAfford =
    balance >= purchase ? "Purchase approved" : "Insufficient funds";
console.log("Balance: $" + balance);
console.log("Purchase: $" + purchase);
console.log("Status:", canAfford);

let speed = 65;
let speedLimit = 60;
let penalty =
    speed > speedLimit
        ? "Speeding ticket: $" + (speed - speedLimit) * 10
        : "No penalty";
console.log("Speed:", speed + " mph");
console.log("Speed limit:", speedLimit + " mph");
console.log("Penalty:", penalty);

let x = 10;
let y = 15;
let larger = x > y ? x : y;
console.log("x:", x);
console.log("y:", y);
console.log("Larger number:", larger);
```

**Expected Output:**

```
Balance: $1000
Purchase: $250
Status: Purchase approved
Speed: 65 mph
Speed limit: 60 mph
Penalty: Speeding ticket: $50
x: 10
y: 15
Larger number: 15
```

### Task 3: Ternary with Strings

Use ternary operators to work with string comparisons:

```javascript
// Your code here
let username = "admin";
let accessLevel = username === "admin" ? "Full access" : "Limited access";
console.log("Username:", username);
console.log("Access level:", accessLevel);

let password = "password123";
let minLength = 8;
let passwordStrength =
    password.length >= minLength
        ? "Password is strong"
        : "Password is too short";
console.log("Password length:", password.length);
console.log("Minimum length:", minLength);
console.log("Strength:", passwordStrength);

let day = "Saturday";
let dayType = day === "Saturday" || day === "Sunday" ? "Weekend" : "Weekday";
console.log("Day:", day);
console.log("Day type:", dayType);
```

**Expected Output:**

```
Username: admin
Access level: Full access
Password length: 11
Minimum length: 8
Strength: Password is strong
Day: Saturday
Day type: Weekend
```

### Task 4: Ternary with Booleans

Use ternary operators with boolean values:

```javascript
// Your code here
let isLoggedIn = true;
let welcomeMessage = isLoggedIn ? "Welcome back!" : "Please log in";
console.log("Logged in:", isLoggedIn);
console.log("Message:", welcomeMessage);

let hasPermission = false;
let actionAllowed = hasPermission ? "Action permitted" : "Access denied";
console.log("Has permission:", hasPermission);
console.log("Action status:", actionAllowed);

let isOnline = true;
let isPremium = false;
let features = isOnline
    ? isPremium
        ? "All features available"
        : "Basic features only"
    : "Offline mode";
console.log("Online:", isOnline);
console.log("Premium:", isPremium);
console.log("Features:", features);
```

**Expected Output:**

```
Logged in: true
Message: Welcome back!
Has permission: false
Action status: Access denied
Online: true
Premium: false
Features: Basic features only
```

### Task 5: Nested Ternary Operators

Practice using nested ternary operators (use sparingly!):

```javascript
// Your code here
let score = 85;
let grade =
    score >= 90
        ? "A"
        : score >= 80
        ? "B"
        : score >= 70
        ? "C"
        : score >= 60
        ? "D"
        : "F";
console.log("Score:", score);
console.log("Grade:", grade);

let hour = 14; // 2 PM in 24-hour format
let timeOfDay = hour < 12 ? "Morning" : hour < 18 ? "Afternoon" : "Evening";
console.log("Hour:", hour);
console.log("Time of day:", timeOfDay);

let weather = "sunny";
let temperature2 = 25;
let activity =
    weather === "sunny"
        ? temperature2 > 20
            ? "Go to the beach"
            : "Take a walk"
        : "Stay indoors";
console.log("Weather:", weather);
console.log("Temperature:", temperature2 + "�C");
console.log("Suggested activity:", activity);
```

**Expected Output:**

```
Score: 85
Grade: B
Hour: 14
Time of day: Afternoon
Weather: sunny
Temperature: 25�C
Suggested activity: Go to the beach
```

### Task 6: Ternary for Default Values

Use ternary operators to set default values:

```javascript
// Your code here
let userAge = null;
let displayAge = userAge !== null ? userAge : "Age not provided";
console.log("User age:", displayAge);

let userName = "";
let displayName = userName !== "" ? userName : "Anonymous";
console.log("Display name:", displayName);

let userInput = undefined;
let processedInput =
    userInput !== undefined ? userInput.toUpperCase() : "NO INPUT";
console.log("Processed input:", processedInput);

// Setting default configurations
let theme = "dark";
let backgroundColor = theme === "dark" ? "#333333" : "#ffffff";
let textColor = theme === "dark" ? "#ffffff" : "#000000";
console.log("Theme:", theme);
console.log("Background color:", backgroundColor);
console.log("Text color:", textColor);
```

**Expected Output:**

```
User age: Age not provided
Display name: Anonymous
Processed input: NO INPUT
Theme: dark
Background color: #333333
Text color: #ffffff
```

### Task 7: Ternary in Calculations

Use ternary operators within mathematical calculations:

```javascript
// Your code here
let isMember = true;
let basePrice = 100;
let finalPrice = isMember ? basePrice * 0.9 : basePrice; // 10% discount for members
console.log("Member:", isMember);
console.log("Base price: $" + basePrice);
console.log("Final price: $" + finalPrice);

let orderAmount = 75;
let freeShippingThreshold = 50;
let shippingCost = orderAmount >= freeShippingThreshold ? 0 : 10;
let totalCost = orderAmount + shippingCost;
console.log("Order amount: $" + orderAmount);
console.log("Shipping cost: $" + shippingCost);
console.log("Total cost: $" + totalCost);

let workHours = 45;
let regularHours = 40;
let hourlyRate = 20;
let overtime = workHours > regularHours ? workHours - regularHours : 0;
let overtimePay = overtime * hourlyRate * 1.5; // 1.5x rate for overtime
let regularPay =
    (workHours > regularHours ? regularHours : workHours) * hourlyRate;
let totalPay = regularPay + overtimePay;
console.log("Work hours:", workHours);
console.log("Overtime hours:", overtime);
console.log("Total pay: $" + totalPay);
```

**Expected Output:**

```
Member: true
Base price: $100
Final price: $90
Order amount: $75
Shipping cost: $0
Total cost: $75
Work hours: 45
Overtime hours: 5
Total pay: $950
```

### Task 8: Multiple Conditions

Use ternary operators with multiple conditions:

```javascript
// Your code here
let studentAge = 16;
let hasParentConsent = true;
let canParticipate =
    studentAge >= 18 ? "Yes" : hasParentConsent ? "Yes, with consent" : "No";
console.log("Student age:", studentAge);
console.log("Has parent consent:", hasParentConsent);
console.log("Can participate:", canParticipate);

let accountBalance = 500;
let attemptedWithdrawal = 300;
let hasOverdraftProtection = true;
let withdrawalStatus =
    accountBalance >= attemptedWithdrawal
        ? "Withdrawal successful"
        : hasOverdraftProtection
        ? "Withdrawal successful (overdraft applied)"
        : "Insufficient funds";
console.log("Account balance: $" + accountBalance);
console.log("Attempted withdrawal: $" + attemptedWithdrawal);
console.log("Overdraft protection:", hasOverdraftProtection);
console.log("Status:", withdrawalStatus);
```

**Expected Output:**

```
Student age: 16
Has parent consent: true
Can participate: Yes, with consent
Account balance: $500
Attempted withdrawal: $300
Overdraft protection: true
Status: Withdrawal successful
```

## Challenge Tasks

### Challenge 1: Shopping Cart Discount System

Create a discount system using ternary operators:

```javascript
// Your code here
let cartTotal = 150;
let isFirstTime = false;
let hasPromoCode = true;
let isMember = true;

// Apply discounts based on multiple conditions:
// - First time customers: 15% off
// - Promo code: 10% off
// - Members: 5% off
// - Orders over $100: Free shipping (save $15)
// Apply the best discount available
```

### Challenge 2: Weather Clothing Advisor

Create a clothing recommendation system:

```javascript
// Your code here
let temperature = 22;
let isRaining = true;
let isWindy = false;

// Recommend clothing based on conditions:
// Temperature: Hot (>25), Warm (15-25), Cool (5-15), Cold (<5)
// Consider rain and wind in recommendations
```

### Challenge 3: Game Scoring System

Create a game scoring system with multiple conditions:

```javascript
// Your code here
let playerScore = 1250;
let timeBonus = 50;
let livesRemaining = 2;
let difficultyLevel = "hard";

// Calculate final score with bonuses:
// - Time bonus if completed quickly
// - Life bonus: 100 points per remaining life
// - Difficulty multiplier: easy (1x), medium (1.2x), hard (1.5x)
// - Achievement unlock if final score > 2000
```

## Testing Your Work

1. Open your HTML file in a web browser
2. Open Developer Tools (F12 or right-click → Inspect)
3. Go to the Console tab
4. You should see all your console.log outputs
5. Compare your results with the expected outputs

## Key Learning Points

After completing this exercise, you should understand:

-   **Basic Syntax**: `condition ? expressionIfTrue : expressionIfFalse`
-   **Conditional Assignment**: Assigning values based on conditions
-   **Alternative to if-else**: More concise for simple conditions
-   **Nested Ternary**: Chaining multiple conditions (use carefully)
-   **Default Values**: Providing fallback values for variables
-   **Inline Calculations**: Using ternary within mathematical expressions

## Comparison: Ternary vs If-Else

```javascript
// Using if-else
let age = 20;
let message;
if (age >= 18) {
    message = "You can vote";
} else {
    message = "You cannot vote";
}

// Using ternary operator
let age = 20;
let message = age >= 18 ? "You can vote" : "You cannot vote";
```

## Best Practices

1. **Use for simple conditions**

    ```javascript
    // Good
    let status = isActive ? "Online" : "Offline";

    // Avoid for complex logic
    let result = condition1
        ? condition2
            ? value1
            : value2
        : condition3
        ? value3
        : value4;
    ```

2. **Keep expressions short and readable**

    ```javascript
    // Good
    let discount = isMember ? 0.1 : 0;

    // Less readable
    let discount = isMember ? (isPremium ? 0.2 : 0.1) : isFirstTime ? 0.05 : 0;
    ```

3. **Use parentheses for complex conditions**
    ```javascript
    let result = age >= 18 && hasLicense ? "Can drive" : "Cannot drive";
    ```

## Common Mistakes to Avoid

1. **Overusing nested ternary operators**

    ```javascript
    // Hard to read
    let grade = score >= 90 ? "A" : score >= 80 ? "B" : score >= 70 ? "C" : "F";

    // Better with if-else for multiple conditions
    ```

2. **Forgetting the false case**

    ```javascript
    // This will cause an error
    let message = isLoggedIn ? "Welcome" ; // Missing : and false case
    ```

3. **Using for side effects instead of values**

    ```javascript
    // Don't do this
    isLoggedIn ? console.log("Logged in") : console.log("Not logged in");

    // Better
    console.log(isLoggedIn ? "Logged in" : "Not logged in");
    ```

4. **Complex expressions without parentheses**

    ```javascript
    // Confusing
    let result = a > b ? c + d : e * f;

    // Clearer
    let result = a > b ? c + d : e * f;
    ```

Remember: The ternary operator is great for simple conditional assignments, but don't sacrifice readability for brevity. When in doubt, use if-else statements for complex logic!

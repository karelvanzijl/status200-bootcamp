# Exercise: Logical Operators

## Setup

### Step 1: Create Project Structure

1. Create a new folder called `logical-operators-practice`
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
        <title>Logical Operators Practice</title>
    </head>
    <body>
        <h1>JavaScript Logical Operators Practice</h1>
        <p>Open the Developer Tools Console to see the results!</p>

        <script src="js/scripts.js"></script>
    </body>
</html>
```

## Exercise Tasks

Complete each task by writing JavaScript code in your `scripts.js` file. Use `console.log()` to display the results.

### Task 1: Logical AND (&&)

Practice using the logical AND operator:

```javascript
// Your code here
let isLoggedIn = true;
let hasPermission = true;
let canAccess = isLoggedIn && hasPermission;
console.log("Logged in:", isLoggedIn);
console.log("Has permission:", hasPermission);
console.log("Can access:", canAccess);

// More AND examples
let age = 25;
let hasLicense = true;
let canDrive = age >= 18 && hasLicense;
console.log("Age:", age);
console.log("Has license:", hasLicense);
console.log("Can drive:", canDrive);

// Multiple conditions
let temperature = 22;
let isSunny = true;
let hasTime = false;
let perfectForPicnic = temperature > 20 && isSunny && hasTime;
console.log("Temperature > 20:", temperature > 20);
console.log("Is sunny:", isSunny);
console.log("Has time:", hasTime);
console.log("Perfect for picnic:", perfectForPicnic);
```

**Expected Output:**

```
Logged in: true
Has permission: true
Can access: true
Age: 25
Has license: true
Can drive: true
Temperature > 20: true
Is sunny: true
Has time: false
Perfect for picnic: false
```

### Task 2: Logical OR (||)

Practice using the logical OR operator:

```javascript
// Your code here
let isWeekend = false;
let isHoliday = true;
let canSleepIn = isWeekend || isHoliday;
console.log("Is weekend:", isWeekend);
console.log("Is holiday:", isHoliday);
console.log("Can sleep in:", canSleepIn);

// Payment methods
let hasCash = false;
let hasCard = true;
let hasPayPal = false;
let canPay = hasCash || hasCard || hasPayPal;
console.log("Has cash:", hasCash);
console.log("Has card:", hasCard);
console.log("Has PayPal:", hasPayPal);
console.log("Can pay:", canPay);

// Access levels
let isAdmin = false;
let isModerator = false;
let isOwner = true;
let hasAdminAccess = isAdmin || isModerator || isOwner;
console.log("Is admin:", isAdmin);
console.log("Is moderator:", isModerator);
console.log("Is owner:", isOwner);
console.log("Has admin access:", hasAdminAccess);
```

**Expected Output:**

```
Is weekend: false
Is holiday: true
Can sleep in: true
Has cash: false
Has card: true
Has PayPal: false
Can pay: true
Is admin: false
Is moderator: false
Is owner: true
Has admin access: true
```

### Task 3: Logical NOT (!)

Practice using the logical NOT operator:

```javascript
// Your code here
let isOnline = true;
let isOffline = !isOnline;
console.log("Is online:", isOnline);
console.log("Is offline:", isOffline);

let hasErrors = false;
let isValid = !hasErrors;
console.log("Has errors:", hasErrors);
console.log("Is valid:", isValid);

// Double negation
let userInput = "Hello";
let isEmpty = !userInput;
let isNotEmpty = !!userInput; // Double negation converts to boolean
console.log("User input:", userInput);
console.log("Is empty:", isEmpty);
console.log("Is not empty:", isNotEmpty);

// Inverting conditions
let isRaining = true;
let canGoOutside = !isRaining;
let shouldTakeUmbrella = isRaining;
console.log("Is raining:", isRaining);
console.log("Can go outside:", canGoOutside);
console.log("Should take umbrella:", shouldTakeUmbrella);
```

**Expected Output:**

```
Is online: true
Is offline: false
Has errors: false
Is valid: true
User input: Hello
Is empty: false
Is not empty: true
Is raining: true
Can go outside: false
Should take umbrella: true
```

### Task 4: Combining Logical Operators

Practice combining different logical operators:

```javascript
// Your code here
let age = 25;
let hasJob = true;
let creditScore = 750;

// Loan approval logic
let isEligibleForLoan = age >= 18 && hasJob && creditScore >= 600;
console.log("Age >= 18:", age >= 18);
console.log("Has job:", hasJob);
console.log("Credit score >= 600:", creditScore >= 600);
console.log("Eligible for loan:", isEligibleForLoan);

// Store access logic
let isWeekday = true;
let isBefore5PM = false;
let isEmergency = true;
let storeIsOpen = (isWeekday && isBefore5PM) || isEmergency;
console.log("Is weekday:", isWeekday);
console.log("Is before 5PM:", isBefore5PM);
console.log("Is emergency:", isEmergency);
console.log("Store is open:", storeIsOpen);

// User permissions
let isUser = true;
let isGuest = false;
let isBlocked = false;
let canViewContent = (isUser || isGuest) && !isBlocked;
console.log("Is user:", isUser);
console.log("Is guest:", isGuest);
console.log("Is blocked:", isBlocked);
console.log("Can view content:", canViewContent);
```

**Expected Output:**

```
Age >= 18: true
Has job: true
Credit score >= 600: true
Eligible for loan: true
Is weekday: true
Is before 5PM: false
Is emergency: true
Store is open: true
Is user: true
Is guest: false
Is blocked: false
Can view content: true
```

### Task 5: Default Values with OR Operator

Use the OR operator to set default values:

```javascript
// Your code here
let userName = "";
let displayName = userName || "Anonymous";
console.log("User name:", userName);
console.log("Display name:", displayName);

let userAge = null;
let defaultAge = userAge || 18;
console.log("User age:", userAge);
console.log("Default age:", defaultAge);

// Configuration defaults
let userTheme = undefined;
let backgroundColor = null;
let fontSize = 0;

let theme = userTheme || "light";
let bgColor = backgroundColor || "#ffffff";
let textSize = fontSize || 16;

console.log("Theme:", theme);
console.log("Background color:", bgColor);
console.log("Font size:", textSize);

// Function parameter defaults (simulated)
function greetUser(name, greeting) {
    name = name || "Friend";
    greeting = greeting || "Hello";
    let message = greeting + ", " + name + "!";
    console.log("Greeting message:", message);
}

greetUser("Alice", "Hi");
greetUser("Bob");
greetUser();
```

**Expected Output:**

```
User name:
Display name: Anonymous
User age: null
Default age: 18
Theme: light
Background color: #ffffff
Font size: 16
Greeting message: Hi, Alice!
Greeting message: Hello, Bob!
Greeting message: Hello, Friend!
```

### Task : Complex Logical Expressions

Practice with complex logical expressions:

```javascript
// Your code here
// E-commerce system
let isLoggedIn = true;
let hasItems = true;
let hasPaymentMethod = false;
let hasShippingAddress = true;
let isInventoryAvailable = true;

let canCheckout =
    isLoggedIn &&
    hasItems &&
    (hasPaymentMethod || hasShippingAddress) &&
    isInventoryAvailable;
console.log("Can checkout:", canCheckout);

// Access control system
let userRole = "editor";
let isActive = true;
let hasSubscription = false;
let isTrialPeriod = true;

let canEdit =
    isActive &&
    (userRole === "admin" || userRole === "editor") &&
    (hasSubscription || isTrialPeriod);
console.log("Can edit:", canEdit);

// Game logic
let playerLevel = 15;
let hasKey = true;
let isNightTime = false;
let hasPotion = false;

let canEnterDungeon =
    playerLevel >= 10 && hasKey && (!isNightTime || hasPotion);
console.log("Player level >= 10:", playerLevel >= 10);
console.log("Has key:", hasKey);
console.log("Is night time:", isNightTime);
console.log("Has potion:", hasPotion);
console.log("Can enter dungeon:", canEnterDungeon);

// Complex validation
let email = "user@example.com";
let password = "password123";
let agreeToTerms = true;
let isOver18 = true;

let isValidRegistration =
    email.includes("@") &&
    email.includes(".") &&
    password.length >= 8 &&
    agreeToTerms &&
    isOver18;
console.log("Valid email format:", email.includes("@") && email.includes("."));
console.log("Password length >= 8:", password.length >= 8);
console.log("Agrees to terms:", agreeToTerms);
console.log("Is over 18:", isOver18);
console.log("Valid registration:", isValidRegistration);
```

**Expected Output:**

```
Can checkout: false
Can edit: true
Player level >= 10: true
Has key: true
Is night time: false
Has potion: false
Can enter dungeon: true
Valid email format: true
Password length >= 8: true
Agrees to terms: true
Is over 18: true
Valid registration: true
```

## Challenge Tasks

### Challenge 1: User Authentication System

Create a comprehensive authentication system:

```javascript
// Your code here
let username = "admin";
let password = "admin123";
let isAccountLocked = false;
let failedAttempts = 2;
let maxAttempts = 3;
let lastLoginTime = Date.now() - 3600000; // 1 hour ago
let sessionTimeout = 7200000; // 2 hours

// Implement login logic considering:
// - Username and password must be correct
// - Account must not be locked
// - Failed attempts must be less than max
// - Session must not be expired
```

### Challenge 2: Content Filtering System

Create a content filtering system:

```javascript
// Your code here
let userAge = 16;
let contentRating = "PG-13";
let hasParentalConsent = true;
let isSubscriber = false;
let contentType = "movie";
let userCountry = "US";

// Determine if user can view content based on:
// - Age restrictions for different ratings
// - Parental consent for minors
// - Subscription requirements for premium content
// - Geographic restrictions
```

### Challenge 3: Smart Home Automation

Create a smart home automation system:

```javascript
// Your code here
let currentTime = 14; // 2 PM
let isWeekend = false;
let outsideTemperature = 25;
let insideTemperature = 22;
let isAnyoneHome = true;
let energySaverMode = false;

// Control various systems:
// - Heating/cooling based on temperature and occupancy
// - Lighting based on time and presence
// - Security system activation
// - Energy optimization
```

## Testing Your Work

1. Open your HTML file in a web browser
2. Open Developer Tools (F12 or right-click → Inspect)
3. Go to the Console tab
4. You should see all your console.log outputs
5. Compare your results with the expected outputs

## Key Learning Points

After completing this exercise, you should understand:

-   **Logical AND (&&)**: Returns true only if both operands are true
-   **Logical OR (||)**: Returns true if at least one operand is true
-   **Logical NOT (!)**: Inverts the boolean value
-   **Short-Circuit Evaluation**: Operators stop evaluating when result is determined
-   **Truthy/Falsy Values**: How non-boolean values are evaluated in logical contexts
-   **Default Values**: Using OR operator to provide fallback values
-   **Complex Expressions**: Combining multiple logical operators

## Truth Tables

### AND (&&) Operator

```
A     | B     | A && B
------|-------|-------
true  | true  | true
true  | false | false
false | true  | false
false | false | false
```

### OR (||) Operator

```
A     | B     | A || B
------|-------|-------
true  | true  | true
true  | false | true
false | true  | true
false | false | false
```

### NOT (!) Operator

```
A     | !A
------|------
true  | false
false | true
```

## Falsy Values in JavaScript

Remember these 6 falsy values:

-   `false`
-   `0` (zero)
-   `""` or `''` (empty string)
-   `null`
-   `undefined`
-   `NaN`

Everything else is truthy!

## Best Practices

1. **Use parentheses for clarity**

    ```javascript
    // Clearer
    let result = age >= 18 && (hasLicense || hasPermit);

    // Less clear
    let result = (age >= 18 && hasLicense) || hasPermit;
    ```

2. **Use logical operators for default values**

    ```javascript
    let name = userName || "Anonymous";
    let theme = userTheme || "light";
    ```

3. **Use short-circuit evaluation for conditional execution**
    ```javascript
    isLoggedIn && showWelcomeMessage();
    hasError || continueProcessing();
    ```

## Common Mistakes to Avoid

1. **Confusing assignment (=) with equality (==)**

    ```javascript
    // Wrong
    if ((isActive = true)) {
    } // Assignment, not comparison

    // Correct
    if (isActive === true) {
    } // Comparison
    ```

2. **Not understanding operator precedence**

    ```javascript
    // This might not work as expected
    let result = (age >= 18 && hasJob) || isStudent;

    // Clearer with parentheses
    let result = (age >= 18 && hasJob) || isStudent;
    ```

3. **Forgetting about falsy values**

    ```javascript
    let count = 0;
    if (count) {
        // This won't execute because 0 is falsy
        console.log("Count exists");
    }

    // Better
    if (count !== undefined) {
        console.log("Count exists");
    }
    ```

Remember: Logical operators are powerful tools for creating complex conditions and controlling program flow. Master them to write more sophisticated and efficient JavaScript code!

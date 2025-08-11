# Morning Practice Exercises

## Overview

These exercises are designed to bridge the gap between ATM 2.0 and ATM 3.0 by strengthening your understanding of arrays, objects, loops, return statements, and basic DOM manipulation.

---

## Exercise 1: User Object Creation

**Focus**: Object properties, accessing values

Create a user object and practice working with its properties.

### Task:

1. Create an object called `user` with these properties:

    - `name`: your name
    - `accountNumber`: "ACC001"
    - `balance`: 1500
    - `pin`: "1234"
    - `isActive`: true

2. Write code to:
    - Print the user's name and balance
    - Add a new property `lastTransaction` with value "deposit"
    - Update the balance to 2000
    - Print the complete user object

### Expected Output:

```
User: John Doe, Balance: 1500
{name: "John Doe", accountNumber: "ACC001", balance: 2000, pin: "1234", isActive: true, lastTransaction: "deposit"}
```

### Solution:

```javascript
const user = {
    name: "John Doe",
    accountNumber: "ACC001",
    balance: 1500,
    pin: "1234",
    isActive: true,
};

// Print the user's name and balance
console.log("User: " + user.name + ", Balance: " + user.balance);

// Add a new property lastTransaction with value "deposit"
user.lastTransaction = "deposit";

// Update the balance to 2000
user.balance = 2000;

// Print the complete user object
console.log("Complete User Object:", user);
```

---

## Exercise 2: Array of Users

**Focus**: Array of objects, accessing nested data

Work with multiple user objects in an array.

### Task:

1. Create an array called `users` with 3 user objects:

    ```javascript
    const users = [
        { name: "Alice", accountNumber: "ACC001", balance: 1000 },
        { name: "Bob", accountNumber: "ACC002", balance: 1500 },
        { name: "Charlie", accountNumber: "ACC003", balance: 800 },
    ];
    ```

2. Write code to:
    - Print each user's name and balance using a for loop
    - Find and print the user with account number "ACC002"
    - Calculate and print the total balance of all users

### Expected Output:

```
Alice: 1000
Bob: 1500
Charlie: 800
Found user: Bob
Total balance: 3300
```

### Solution:

```javascript
const users = [
    { name: "Alice", accountNumber: "ACC001", balance: 1000 },
    { name: "Bob", accountNumber: "ACC002", balance: 1500 },
    { name: "Charlie", accountNumber: "ACC003", balance: 800 },
];

// Initialize total balance. We're going to sum up the balances of all users.
let totalBalance = 0;

// Loop through each user and log their name and balance, while calculating the total balance.
for (let i = 0; i < users.length; i++) {
    // Log the current user's name and balance.
    console.logusers[i].name + ": " + users[i].balance);

    // Add the current user's balance to the total balance.
    totalBalance += users[i].balance;

    // Check if current user accountNumber is "ACC002"
    if (users[i].accountNumber === "ACC002") {
        // Log user object if accountNumber matches "ACC002"
        console.log("Found user:", users[i].name);
    }
}

// After the loop, log the total balance of all users.
console.log("Total balance:", totalBalance);
```

---

## Exercise 3: User Authentication Function

**Focus**: Functions with return statements, conditional logic

Create a simple login system.

### Task:

1. Use this users array:

    ```javascript
    const users = [
        { name: "Alice", pin: "1234", balance: 1000 },
        { name: "Bob", pin: "5678", balance: 1500 },
        { name: "Charlie", pin: "9999", balance: 800 },
    ];
    ```

2. Create a function `authenticateUser(name, pin)` that:

    - Takes a name and pin as parameters
    - Uses a for loop to check if the user exists
    - Returns the user object if credentials match
    - Returns `null` if no match is found

3. Test your function with:
    - `authenticateUser("Alice", "1234")` (should succeed)
    - `authenticateUser("Bob", "0000")` (should fail)
    - `authenticateUser("David", "1111")` (should fail)

### Solution:

```javascript
const users = [
    { name: "Alice", pin: "1234", balance: 1000 },
    { name: "Bob", pin: "5678", balance: 1500 },
    { name: "Charlie", pin: "9999", balance: 800 },
];

function authenticateUser(name, pin) {
    // Iterate through the users array to find a match
    for (let i = 0; i < users.length; i++) {
        // Check if the current user's name and pin match the provided credentials
        if (users[i].name === name && users[i].pin === pin) {
            // If a match is found, return the user object
            return users[i];
        }
    }

    // Return null if no match is found
    return null;
}

// Testing the function
console.log(authenticateUser("Alice", "1234")); // Should succeed, returns Alice's object
console.log(authenticateUser("Bob", "0000")); // Should fail, returns null
console.log(authenticateUser("David", "1111")); // Should fail, returns null
```

---

## Exercise 4: Balance Checker with Early Returns

**Focus**: Return statements, validation logic

Create a function that validates withdrawal amounts.

### Task:

1. Create a function `canWithdraw(userBalance, amount)` that:

    - Returns `"Amount must be positive"` if amount ≤ 0
    - Returns `"Insufficient funds"` if amount > userBalance
    - Returns `"Valid withdrawal"` if all checks pass

2. Test with:
    - `canWithdraw(1000, -50)`
    - `canWithdraw(1000, 1500)`
    - `canWithdraw(1000, 500)`

### Expected Output:

```
Amount must be positive
Insufficient funds
Valid withdrawal
```

### Solution:

```javascript
function canWithdraw(userBalance, amount) {
    if (amount <= 0) {
        return "Amount must be positive";
    }
    if (amount > userBalance) {
        return "Insufficient funds";
    }
    return "Valid withdrawal";
}

// Test cases
console.log(canWithdraw(1000, -50)); // Output: Amount must be positive
console.log(canWithdraw(1000, 1500)); // Output: Insufficient funds
console.log(canWithdraw(1000, 500)); // Output: Valid withdrawal
```

---

## Exercise 5: Element Visibility Toggle

**Focus**: DOM manipulation, CSS display property

Practice showing/hiding elements dynamically.

### Task:

1. Create an HTML file with:

    - A button with text "Toggle Info"
    - A div with id "userInfo" containing some user information
    - A paragraph with id "status" for messages

2. Create a JavaScript function `toggleUserInfo()` that:

    - Gets the userInfo element
    - Checks if it's currently visible
    - Toggles between `display: "block"` and `display: "none"`
    - Updates the status paragraph with "Info shown" or "Info hidden"

3. Connect the button to call this function

### HTML Structure:

```html
<button onclick="toggleUserInfo()">Toggle Info</button>
<div id="userInfo">
    <p>Name: John Doe</p>
    <p>Balance: $1500</p>
</div>
<p id="status">Info shown</p>
```

### Solution:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
    </head>
    <body>
        <button onclick="toggleUserInfo()">Toggle Info</button>
        <div id="userInfo">
            <p>Name: John Doe</p>
            <p>Balance: $1500</p>
        </div>
        <p id="status">Info shown</p>
        <script>
            function toggleUserInfo() {
                function toggleUserInfo() {
                    const userInfo = document.getElementById("userInfo");
                    const status = document.getElementById("status");

                    if (userInfo.style.display === "none") {
                        userInfo.style.display = "block";
                        status.textContent = "Info shown";
                    } else {
                        userInfo.style.display = "none";
                        status.textContent = "Info hidden";
                    }
                }
            }
        </script>
    </body>
</html>
```

---

## Exercise 6: Find User by Account Number

**Focus**: Array searching, return statements

Create a search function for user accounts.

### Task:

1. Use this users array:

    ```javascript
    const bankUsers = [
        { name: "Emma", accountNumber: "12345", balance: 2500 },
        { name: "James", accountNumber: "67890", balance: 1200 },
        { name: "Sophia", accountNumber: "11111", balance: 3000 },
    ];
    ```

2. Create a function `findUserByAccount(accountNumber)` that:

    - Uses a for loop to search through the array
    - Returns the user object if found
    - Returns `null` if not found

3. Create another function `displayUserInfo(accountNumber)` that:

    - Calls `findUserByAccount`
    - If user found: prints "Found: [name] with balance $[balance]"
    - If not found: prints "Account [accountNumber] not found"

4. Test with accounts "67890" and "99999"

### Solution:

```javascript
const bankUsers = [
    { name: "Emma", accountNumber: "12345", balance: 2500 },
    { name: "James", accountNumber: "67890", balance: 1200 },
    { name: "Sophia", accountNumber: "11111", balance: 3000 },
];

function findUserByAccount(accountNumber) {
    //  Loop through the bankUsers array
    for (let i = 0; i < bankUsers.length; i++) {
        // Check if the current user's account number matches the provided account number
        if (bankUsers[i].accountNumber === accountNumber) {
            // Return the user object if a match is found
            return bankUsers[i];
        }
    }

    // If no match is found, return null
    return null;
}

function displayUserInfo(accountNumber) {
    // Call the findUserByAccount function to get the user
    let user = findUserByAccount(accountNumber);

    // Check if the user was found or not
    if (user) {
        // If user is found, display their information
        console.log("Found: " + user.name + " with balance " + user.balance);
    } else {
        // If user is not found, display an error message
        console.log("Account " + accountNumber + " not found.");
    }
}

// Example usage
displayUserInfo("67890"); // Should display: Found: James with balance 1200
displayUserInfo("99999"); // Should display: Account 99999 not found.
```

---

## Exercise 7: Simple Transaction History

**Focus**: Objects with arrays, adding elements

Work with transaction data stored in objects.

### Task:

1. Create a user object with a transactions array:

    ```javascript
    const user = {
        name: "Alex",
        balance: 1000,
        transactions: ["deposit $500", "withdraw $200"],
    };
    ```

2. Create functions:

    - `addTransaction(user, transaction)` - adds a transaction to the array
    - `showTransactionHistory(user)` - loops through and prints all transactions
    - `getLastTransaction(user)` - returns the most recent transaction

3. Test by:
    - Adding a new transaction "deposit $300"
    - Showing the complete history
    - Getting the last transaction

### Expected Output:

```
Transaction 1: deposit $500
Transaction 2: withdraw $200
Transaction 3: deposit $300
Last transaction: deposit $300
```

### Solution:

```javascript
const user = {
    name: "Alex",
    balance: 1000,
    transactions: ["deposit $500", "withdraw $200"],
};

function addTransaction(user, transaction) {
    // Add new transaction to user's transactions array
    user.transactions.push(transaction);
}

function showTransactionHistory(user) {
    // Loop through user's transactions
    for (let i = 0; i < user.transactions.length; i++) {
        // Print each transaction
        console.log("Transaction " + (i + 1) + ": " + user.transactions[i]);
    }
}

function getLastTransaction(user) {
    // Get length of transactions array
    let lastTransactionIndex = user.transactions.length - 1;

    // Check if there are any transactions
    if (lastTransactionIndex >= 0) {
        // Return the last transaction
        return user.transactions[lastTransactionIndex];
    } else {
        // If no transactions, return a message
        return "No transaction found.";
    }
}

// Adding a new transaction
addTransaction(user, "deposit $300");

// Displaying transaction history
showTransactionHistory(user);

// Getting the last transaction and printing it
console.log(getLastTransaction(user));
```

---

## Exercise 8: Screen Manager

**Focus**: Multiple element visibility, state management

Practice managing different screens like in ATM 3.0.

### Task:

1. Create HTML with two sections:

    - Login screen with id "loginScreen"
    - Main screen with id "mainScreen"

2. Create functions:

    - `showLogin()` - shows login screen, hides main screen
    - `showMain()` - shows main screen, hides login screen
    - `getCurrentScreen()` - returns which screen is currently visible

3. Add buttons to switch between screens

### HTML Structure:

```html
<div id="loginScreen">
    <h2>Login</h2>
    <button onclick="showMain()">Login</button>
</div>
<div id="mainScreen" style="display: none;">
    <h2>Welcome!</h2>
    <button onclick="showLogin()">Logout</button>
</div>
```

### Solution:

```html
<!DOCTYPE html>
<html>
    <body>
        <div id="loginScreen">
            <h2>Login</h2>
            <button onclick="showMain()">Login</button>
        </div>
        <div id="mainScreen" style="display: none">
            <h2>Welcome!</h2>
            <button onclick="showLogin()">Logout</button>
        </div>
        <script>
            // Get the elements
            const mainScreen = document.getElementById("mainScreen");
            const loginScreen = document.getElementById("loginScreen");

            function showLogin() {
                // Switch to login screen
                mainScreen.style.display = "none";
                loginScreen.style.display = "block";

                // Log the current screen (test function)
                console.log(getCurrentScreen());
            }

            function showMain() {
                // Switch to main screen
                mainScreen.style.display = "block";
                loginScreen.style.display = "none";

                // Log the current screen (test function)
                console.log(getCurrentScreen());
            }

            function getCurrentScreen() {
                if (mainScreen.style.display == "none") {
                    return "Login Screen is active";
                }
                return "Main screen is active";
            }
        </script>
    </body>
</html>
```

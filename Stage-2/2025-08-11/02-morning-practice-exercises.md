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

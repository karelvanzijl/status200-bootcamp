# ATM Machine v2 to v3 Upgrade Assignment

## Overview

Your task is to upgrade the ATM Machine from version 2 to version 3 by implementing a multi-user authentication system. You'll transform a single-user ATM into a secure, multi-user system with login/logout functionality and role-based permissions.

## Starting Point

You can use the code provided at the bottom of this document as a starting point. It contains the basic structure and functionality of an ATM machine, which you will enhance to meet the requirements of version 3.

Begin with the **atm-machine-v2** codebase, which contains:

-   Basic ATM functionality (withdraw, deposit, refill)
-   Single user with hardcoded balance
-   Simple transaction validation
-   Basic UI components

## Your Mission

Transform the v2 codebase to match the functionality demonstrated in **atm-machine-v3**.

## Required Features to Implement

### 1. User Database System

Create a multi-user system by implementing:

-   `atmUsers` array containing user objects with properties:
    -   `name` - User's display name
    -   `pin` - 4-digit authentication PIN
    -   `accountNumber` - Account identifier
    -   `balance` - User's account balance
    -   `canRefill` - Boolean permission for ATM refill access

**Sample Users to Include:**

```javascript
{
    name: "Karel",
    pin: "1234",
    accountNumber: "4321",
    balance: 2000,
    canRefill: true,
},
{
    name: "John",
    pin: "2345",
    accountNumber: "5432",
    balance: 1000,
    canRefill: false,
},
{
    name: "Jane",
    pin: "3456",
    accountNumber: "6543",
    balance: 3000,
    canRefill: true,
}
```

### 2. Authentication System

Implement login/logout functionality:

#### HTML Updates Required:

-   Add login section with account number and PIN input fields
-   Add logout button to the transaction section
-   Ensure proper form structure and styling

#### JavaScript Functions to Create:

-   `login()` - Validate user credentials and initialize session
-   `logout()` - End user session and return to login screen
-   `toggleScreens()` - Manage UI visibility based on authentication state

### 3. Session Management

Implement proper state tracking:

-   Use variable to track the current user
-   Screen visibility management (login vs transaction views)
-   Input field clearing and reset functionality

### 4. Permission-Based Features

Add role-based access control:

-   Show/hide refill button based on user's `canRefill` permission
-   Ensure only authorized users can access ATM maintenance functions

### 5. Updated Transaction Logic

Modify existing functions to work with the current user:

-   Update balance references to use `atmUsers[loggedInUserIndex].balance`
-   Ensure all transactions affect the correct user's account
-   Maintain existing validation rules and error handling

### 6. UI Enhancements

Update the interface to support the new functionality:

-   Initially hide transaction and balance sections
-   Show login form on page load
-   Implement smooth transitions between login and transaction views
-   Update CSS for responsive button layouts

_**Checkout** [CSS Display Property](./05-css-display-property.md) for more information on how to use the `display` property to show/hide elements. At the bottom of this document, you can find an example script that toggles the display of a paragraph element._

## Technical Requirements

### JavaScript Best Practices:

-   Maintain existing code organization and naming conventions
-   Keep all validation logic intact
-   Use proper error handling and user feedback
-   Clear input fields after successful operations

## Success Criteria

Your implementation should:

-   [ ] Allow multiple users to login with unique credentials
-   [ ] Maintain separate balances for each user
-   [ ] Show/hide refill functionality based on permissions
-   [ ] Provide smooth transitions between login and transaction screens
-   [ ] Maintain all existing ATM validation rules
-   [ ] Display personalized welcome messages
-   [ ] Handle invalid login attempts gracefully
-   [ ] Allow users to logout and switch accounts

## Testing Your Implementation

Verify your solution by:

1. Testing login with each provided user account
2. Confirming balance persistence per user
3. Verifying refill button visibility based on permissions
4. Testing logout and re-login functionality
5. Ensuring all transaction validations still work
6. Confirming error handling for invalid credentials

## Hints

-   Start by creating the user database array
-   Implement the login system before modifying existing functions
-   Use the browser's developer tools to debug authentication issues
-   Test with one user first, then expand to multiple users
-   Pay attention to when and how you update the UI displays

## Difficulty Level

**Intermediate** - Requires understanding of arrays, objects, conditional logic, DOM manipulation, and state management.

## Estimated Time

2-4 hours depending on experience level.

Good luck! 🚀

---

## ATM Machine v2 Code Snippets

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>ATM Machine v2.0</title>
        <link rel="stylesheet" href="css/atm.css" />
    </head>
    <body>
        <main class="atm-container">
            <h1>ATM Machine</h1>
            <section id="balance-display">
                <div class="balance-item">
                    <div>ATM Balance:</div>
                    <div id="atm-balance"></div>
                </div>
                <div class="balance-item">
                    <div>Your Balance:</div>
                    <div id="user-balance"></div>
                </div>
                <div class="balance-item">
                    <div>Transaction Limit:</div>
                    <div id="transaction-limit"></div>
                </div>
            </section>

            <section id="transaction-section">
                <label for="amount">Enter Amount:</label>
                <input type="number" id="amount" placeholder="0" />

                <div class="button-group">
                    <button id="withdraw-btn" onclick="withdraw()">
                        Withdraw
                    </button>
                    <button id="deposit-btn" onclick="deposit()">
                        Deposit
                    </button>
                    <button id="refill-btn" onclick="refill()">Refill</button>
                </div>
            </section>

            <section class="result-section">
                <p id="result-message">
                    Enter an amount and select a transaction.
                </p>
            </section>
        </main>

        <script src="js/atm.js"></script>
    </body>
</html>
```

```javascript
// js/atm.js
// Initializing ATM and User Balances
let atmBalance = 5000;
let userBalance = 2000;
let transactionLimit = 1500;

// Store HTML elements we will interact with throughout the code
// Instead of using `document.getElementById` multiple times, we store them in variables for:
// - better performance
// - better readability
const atmBalanceElement = document.getElementById("atm-balance");
const userBalanceElement = document.getElementById("user-balance");
const transactionLimitElement = document.getElementById("transaction-limit");
const amountInput = document.getElementById("amount");
const resultMessage = document.getElementById("result-message");

// Initialize the ATM and user balance displays
displayBalances();

function displayBalances() {
    // Update ATM balance display
    atmBalanceElement.textContent = "MYR " + atmBalance;

    // Update user balance display
    userBalanceElement.textContent = "MYR " + userBalance;

    // Update transaction limit display
    transactionLimitElement.textContent = "MYR " + transactionLimit;
}

function displayMessage(message) {
    // Display result message
    resultMessage.textContent = message;
}

function clearInput() {
    // Clear the input field
    amountInput.value = "";
}

function getValidatedAmount() {
    // Get the amount to withdraw from the input field
    let amount = amountInput.value;

    // Try to convert the input to an integer
    amount = parseInt(amount);

    // Is the amount a number?
    if (isNaN(amount)) {
        displayMessage("Please enter a valid number.");
        return;
    }

    // Is the amount > 0?
    if (amount <= 0) {
        displayMessage("Amount must be greater than 0.");
        return;
    }

    // Is the amount a factor of 10?
    if (amount % 10 !== 0) {
        displayMessage("Amount must be a multiple of 10.");
        return;
    }

    // Return the validated amount if all checks pass
    return amount;
}

function withdraw() {
    // Get the amout and validate it
    let amount = getValidatedAmount();

    // If the amount is not valid, exit the function
    if (!amount) {
        return;
    }

    // Does the user have enough balance?
    if (amount > userBalance) {
        displayMessage("Insufficient funds in your account.");
        return;
    }

    // Does the ATM have enough balance?
    if (amount > atmBalance) {
        displayMessage("ATM has insufficient funds.");
        return;
    }

    // Is the amount within the transaction limit?
    if (amount > transactionLimit) {
        displayMessage("Amount exceeds limit of MYR " + transactionLimit + ".");
        return;
    }

    // If all validations pass, proceed with the withdrawal
    userBalance -= amount;
    atmBalance -= amount;

    // Reset the input field
    clearInput();

    // Update ATM balances display
    displayBalances();

    // Display the message
    displayMessage("Successfully withdrew MYR " + amount);
}

function deposit() {
    // Get the amout and validate it
    let amount = getValidatedAmount();

    // If the amount is not valid, exit the function
    if (!amount) {
        return;
    }

    // Is the amount within the transaction limit?
    if (amount > transactionLimit) {
        displayMessage("Amount exceeds limit of MYR " + transactionLimit + ".");
        return;
    }

    // If all validations pass, proceed with the withdrawal
    userBalance += amount;
    atmBalance += amount;

    // Reset the input field
    clearInput();

    // Update ATM balances display
    displayBalances();

    // Display the message
    displayMessage("Successfully deposited MYR " + amount + ".");
}

function refill() {
    // Get the amout and validate it
    let amount = getValidatedAmount();

    // If the amount is not valid, exit the function
    if (!amount) {
        return;
    }

    // If all validations pass, proceed with the withdrawal
    atmBalance += amount;

    // Reset the input field
    clearInput();

    // Update ATM balances display
    displayBalances();

    // Display the message
    displayMessage("Successfully added MYR " + amount + ".");
}
```

```css
/* css/atm.css */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    padding: 20px;
}

main {
    background-color: #f5f5f5;
    border: 1px solid #ccc;
    padding: 20px;
    max-width: 400px;
    width: 100%;
    display: flex;
    flex-direction: column;
    gap: 20px;
}

h1 {
    text-align: center;
    margin-bottom: 5px;
}

section {
    border: 1px solid #ccc;
    padding: 20px;
}

#balance-display {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

.balance-item {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.balance-item div:first-child {
    font-weight: bold;
}

#login-section {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

#transaction-section {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
}

input {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    font-size: 16px;
}

.login-input {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 15px;
}

.button-group {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    gap: 15px;
}

button {
    padding: 15px;
    border: 1px solid #ccc;
    font-size: 16px;
    cursor: pointer;
    background-color: white;
}

.result-section {
    padding: 15px;
    text-align: center;
}
```

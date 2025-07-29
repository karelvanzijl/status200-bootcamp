# Assignment: ATM Machine 1.0

## Setup

### Step 1: Create Project Structure

1. Create a new folder called `atm-machine-1`
2. Create a subfolder called `js`
3. Create `index.html` in the main folder
4. Create `scripts.js` in the `js` folder
5. Open the project folder in VS Code

### Step 2: Use this HTML & JavaScript

**HTML (`index.html`):**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>ATM Machine</title>
    </head>
    <body>
        <h1>ATM Machine</h1>
        <p id="message">Welcome to the ATM!</p>
        <input type="number" id="amount" placeholder="Enter amount" />
        <button id="withdrawButton" onclick="withdraw()">Withdraw</button>
        <button id="depositButton" onclick="deposit()">Deposit</button>
        <button id="checkBalanceButton" onclick="checkBalance()">
            Check Balance
        </button>
        <p id="balance">Your balance is: $0</p>
        <script src="js/scripts.js"></script>
    </body>
</html>
```

**JavaScript (`js/scripts.js`):**

```javascript
let balance = 0;
```

### Step 3: Implement the ATM Functionality

Create a simple ATM machine simulation using `if ... else` statements. The ATM should allow users to:

1. Withdraw money
2. Deposit money
3. Check their balance

### Hints and Tips

-   When you withdraw money:
    -   Check if the amount is valid (greater than 0).
    -   Ensure the user has enough balance.
    -   If the withdrawal is successful, update the balance and display a success message.
    -   If not, display an error message.
-   When you deposit money:
    -   Check if the amount is valid (greater than 0).
    -   If valid, add the amount to the balance and display a success message.
    -   If not, display an error message.
-   When checking the balance:
    -   Simply display the current balance.

## Bonus Task: Validation

Add validation to ensure that the user inputs a positive integer. If the input is invalid, display an error message instead of the results.

-   Is the input a number? Remember the `NaN` data type?
-   Is the input an integer? Remember the `%` modulus operator?
-   Is the number positive?

Show an error message if the input is invalid.

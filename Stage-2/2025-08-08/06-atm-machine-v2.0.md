# ATM Machine v2.0

### Setup (optional)

If you want you can copy the follwing HTML, CSS and JS code into your own folder as a starting point.

You can also use your own ATM Machine code as a starting point and work from there.

Just be aware of the fact we'll be improving and adding new features to our ATM machine, based on the code we provide here. It's your responsibility to make sure your code is ends up with the same functionality as the code we provide here.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>ATM Machine v1.0</title>
        <link rel="stylesheet" href="css/atm.css" />
    </head>
    <body>
        <main class="atm-container">
            <h1>ATM Machine v1.0</h1>

            <section class="balance-display">
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
                    <div id="tranaction-limit"></div>
                </div>
            </section>

            <section class="transaction-section">
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

Copy the following CSS code into a file named `style.css`:

```css
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

.balance-display {
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

.transaction-section {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
}

#amount {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    font-size: 16px;
}

.button-group {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
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

Copy the following JavaScript code into a file named `script.js`:

```javascript
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
const transactionLimitElement = document.getElementById("tranaction-limit");
const amountInput = document.getElementById("amount");
const resultMessage = document.getElementById("result-message");

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

## Lets improve our ATM machine together!

### Optimizing our ATM machine code

Maybe you haven't noticed, but our ATM machine code has quite a bit duplicate code. Let's optimize it by creating a function that handles some common tasks which our functions share.

1. Display the current balances
2. Display result messages
3. Get the amount and validate it (our 3 functions share have some of the same validation code)

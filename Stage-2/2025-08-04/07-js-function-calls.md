# Function calls

We already know how to create a function and call it. But did you ever think about the posibilities of calling a function inside another function?

## Function definition

This is how we defined a function:

> A function is a block of code designed to perform a specific task. It can take inputs (parameters) and can return a value.

### Question

Wouldn't it make sense to call a function inside another function to perform a specific task that, for example, now happens in you code multiple times at different places?

**ATM Example:**

-   Aren't we checking the same conditions multiple times?
    -   Validate if the amount is:
        -   a number
        -   positive
        -   a multiple of 10
        -   less than 1500
-   Aren't we displaying the same messages multiple times?
    -   ATM balance
    -   User balance
    -   Result messages

**Question:** Wouldn't it be better to create one or more functions to handle these tasks? And by doing so:

-   Getting rid of duplicate code
-   Making our code more readable
-   Making our code easier to maintain

## Calling Functions Inside Functions

You can call a function inside another function.

### Example:

The example below refers to our ATM project. We will create a function to validate the amount and another function to display messages.

```javascript
function displayMessage(message, status) {
    document.getElementById("output").textContent = message;

    if (status === "error") {
        document.getElementById("output").style.color = "red";
    } else {
        document.getElementById("output").style.color = "green";
    }
}

function getAmount(amount) {
    if (isNaN(amount)) {
        displayMessage("Not a number", "error");
        return null;
    } else if (amount <= 0) {
        displayMessage("Invalid amount", "error");
        return null;
    } else if (amount % 10 !== 0) {
        displayMessage("Must be a multiple of 10", "error");
        return null;
    }
    return "Valid number";
}

// Get the amount from user input
const amount = getAmount();

// Were there any errors?
if (amount === null) {
    return; // Stop execution if validation failed
}

// Perform remaining function logic
// ...

// Display success message
displayMessage("Transaction successful", "success");
```

Now all our functions `deposit()`, `withdraw()`, and `refill()` can:

-   Use the getAmount() function to validate the amount
-   Use the displayMessage() function to show messages

We now have a cleaner codebase with less duplication.

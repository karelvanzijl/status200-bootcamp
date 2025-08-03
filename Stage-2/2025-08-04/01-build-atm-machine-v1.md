# ATM v1.0

Let build the ATM machine together, step by step.

## Step 1: HTML

### 1.1 Minimum HTML requirements

What are the minimum HTML requirements for the ATM application?

-   Input field for the amount the user is going to withdraw or deposit
-   Button to submit a withdrawal
-   Button to submit a deposit
-   Area to display current ATM balance
-   Area to display current User balance
-   Area to display result message (success or error)

### 1.2 Targetable HTML Elements

Which HTML elements do I need to access in the JavaScript code?

-   Input field for the amount
-   Area to display ATM balance
-   Area to display User balance
-   Result message area

## Step 2: JavaScript Setup

### 2.1 Which functions do I need?

What functions do I need to implement my JavaScript code for the ATM application?

-   A withdraw function
-   A deposit function

### 2.2 Calling the functions

When a user clicks the withdraw or deposit button, what should happen?

-   Add onclick to the withdraw button to call the withdraw function
-   Add onclick to the deposit button to call the deposit function
-   Check if it works
    -   Does the withdraw button call the withdraw function?
    -   Does the deposit button call the deposit function?

### 2.3 Initial Balances

**Question:** Where do we set initial balances? In the JavaScript code or directly in the HTML?

#### 2.3.1 Setting initial balances

When the ATM application starts, there should be a certain amount of money in the ATM and in the User's account.

-   Set the ATM balance to a starting value (e.g., 5000)
-   Set the User balance to a starting value (e.g., 2000)

#### 2.3.2 Displaying initial balances

How do I show these balances in the HTML?

-   Display the ATM balance in the designated area
-   Display the User balance in the designated area

#### 2.3.3 Check if it works

-   Does the ATM balance display correctly?
-   Does the User balance display correctly?

## Step 3. Deposit Function

Full description of the deposit function.

-   Retrieve the amount from the input field
-   Validate that the amount is a positive number
-   Validate that the amount is numeric
-   Update the ATM balance
-   Update the User balance
-   Display new ATM balance
-   Display new User balance
-   Display a result message in the result area

Let's break down the deposit function into smaller tasks.

### 3.1 Minimum Deposit Function

What are the minimum requirements for the deposit function?

-   Retrieve the amount from the input field
-   Add the amount to the ATM balance
-   Add the amount to the User balance
-   Check if it works
    -   Do my balances update correctly?

### 3.2 Display data

What should the deposit function do after updating the balances?

-   Show the new ATM balance in the designated area
-   Show the new User balance in the designated area
-   Show a result message in the designated area
-   Check if it works
    -   ATM balance updates correctly in the HTML?
    -   User balance updates correctly in the HTML?
    -   Result message displays correctly in the HTML?

### 3.3 Validation

What validation should the deposit function perform?

-   Is the amount is a positive number?
-   Is the amount numeric?

#### 3.3.1 Positive Number

What should happen?

-   Logic:
    -   If the amount is not a positive number:
        -   Don't update the balances
        -   Display an error message in the result area
    -   Else
        -   Update the balances
        -   Display a success message in the result area
-   Check if it works
    -   Does the validation work correctly?
    -   Does the error message display correctly?
    -   Does the success message display correctly?
    -   If success
        -   Does the ATM balance update correctly?
        -   Does the User balance update correctly?

#### 3.3.2 Numeric Check

See what happens if we enter a non-numeric value in the input field. Do we need to add a extra validation step?

Lets pretent we do, would you do this?

1. `1 * amount === amount` is a way to check if the amount is numeric.
2. `isNaN(amount)` is another way to check if the amount is not a number.

The first option is something you might have been able to figure out on your own based on the subject covered so far in this course.

The second option is a more explicit way to check if the value is not a number, which can be clearer for someone reading the code. But you didn't know about it yet. You could have found out about it by searching online.

-   Logic:
    -   If the amount is not numeric:
        -   Don't update the balances
        -   Display an error message in the result area
    -   Else
        -   Update the balances
        -   Display a success message in the result area
-   Check if it works
    -   Does the numeric validation work correctly?
    -   Does the error message display correctly for non-numeric input?
    -   Does the success message display correctly for numeric input?
    -   If success
        -   Does the ATM balance update correctly?
        -   Does the User balance update correctly?

## Step 4. Withdraw Function

Full description of the withdraw function.

-   Retrieve the amount from the input field
-   Validate that the amount is a positive number
-   Validate that the amount is numeric
-   Check if the ATM has enough balance
-   Check if the User has enough balance
-   Update the ATM balance
-   Update the User balance
-   Display new ATM balance
-   Display new User balance
-   Display a result message in the result area

Let's break down the withdraw function into smaller tasks.

### 4.1 Minimum Withdraw Function

What are the minimum requirements for the withdraw function?

-   Retrieve the amount from the input field
-   Subtract the amount from the ATM balance
-   Subtract the amount from the User balance
-   Check if it works
    -   Do my balances update correctly?

### 4.2 Display data

What should the withdraw function do after updating the balances?

-   Show the new ATM balance in the designated area
-   Show the new User balance in the designated area
-   Show a result message in the designated area
-   Check if it works
    -   ATM balance updates correctly in the HTML?
    -   User balance updates correctly in the HTML?
    -   Result message displays correctly in the HTML?

### 4.3 Validation

What validation should the withdraw function perform?

-   Is the amount a positive number?
-   Is the amount numeric?
-   Does the ATM have enough balance?
-   Does the User have enough balance?

#### 4.3.1 Positive Number

We already did something similar in the deposit function.

#### 4.3.2 Numeric Check

We already did something similar in the deposit function.

#### 4.3.3 ATM Balance Check

Is there enough money in the ATM to withdraw the requested amount?

-   Logic:
    -   If the ATM balance is less than the amount:
        -   Don't update the balances
        -   Display an error message in the result area
    -   Else
        -   Update the balances
        -   Display a success message in the result area
-   Check if it works
    -   Does the ATM balance check work correctly?
    -   Does the error message display correctly if the ATM doesn't have enough balance?
    -   Does the success message display correctly if the ATM has enough balance?
    -   If success
        -   Does the ATM balance update correctly?
        -   Does the User balance update correctly?

## Awesome! We're done 🎉

Once you have completed all the steps, you should have a fully functional ATM application that allows users to deposit and withdraw money while handling various validation scenarios.

> Now would be a good time to start working on the layout and styling of the application to make it more user-friendly and visually appealing.

---

# Bonus Assignments

Lets add the bonus assignments to the ATM application:

-   Transaction limit
-   Amount must be a multiple of 10
-   Add refill logic do the bank can add money to the ATM

## Step 6: Transaction Limit

What does the transaction limit do? The transaction limit restricts the maximum amount a user can withdraw / deposit in a single transaction.

What do we need for this?

-   Set the transaction limit in our application
-   Show the transaction limit in the HTML
-   Validate the withdrawal / deposit amount against the limit
-   Display an error message if the amount exceeds the limit

All of our existing validation logic will still apply, so we will add the withdrawal limit to the existing validation checks.

### 6.1 Setting the Transaction Limit

-   Set a transaction limit (e.g., 1500) in our application
-   Display the transaction limit in the HTML
-   Check if it works
    -   Does the transaction limit display correctly in the HTML?

### 6.2 Validate Against Transaction Limit

**Note:** This validation needs be added to both the withdraw and deposit functions.

-   Logic:
    -   If the amount exceeds the transaction limit:
        -   Don't update the balances
        -   Display an error message in the result area
    -   Else
        -   Update the balances
        -   Display a success message in the result area
-   Check if it works
    -   Does the transaction limit validation work correctly?
    -   Does the error message display correctly if the amount exceeds the limit?
    -   Does the success message display correctly if the amount is within the limit?
    -   If success
        -   Does the ATM balance update correctly?
        -   Does the User balance update correctly?

## Step 7: Amount Must Be a Multiple of 10

In a normal ATM, you can't withdraw or deposit any amount you want. You can only withdraw or deposit amounts that are multiples of 10.

What do we need for this?

-   Validate that the amount is a multiple of 10
-   Display an error message if the amount is not a multiple of 10

### 7.1 Validate Amount is a Multiple of 10

How can we check if the amount is a multiple of 10?

Remember the `%` operator? It gives us the remainder of a division. If the amount divided by 10 has no remainder, then it is a multiple of 10.

-   Logic:
    -   If the amount is not a multiple of 10:
        -   Don't update the balances
        -   Display an error message in the result area
    -   Else
        -   Update the balances
        -   Display a success message in the result area
-   Check if it works
    -   Does the multiple of 10 validation work correctly?
    -   Does the error message display correctly if the amount is not a multiple of 10?
    -   Does the success message display correctly if the amount is a multiple of 10?
    -   If success
        -   Does the ATM balance update correctly?
        -   Does the User balance update correctly?

## Step 8: Refill ATM

In a real ATM, the bank can refill the ATM with money. Let's add this functionality to our application.

What do we need for this?

-   Add a refill button to the HTML
-   Add a refill function in JavaScript
-   Validate the refill amount
-   Update the ATM balance with the refill amount
-   Update the ATM balance display
-   Display success / error messages

### 8.1 HTML requirements

Do we need to add another input field?

Do we need to add another display area?

Do we need to add another button?

### 8.2 JavaScript Setup

Do we need to add a new function in JavaScript?

When the refill button is clicked, what should happen?

### 8.3 Refill Function

What are the minimum requirements for the refill function?

-   Retrieve the refill amount from the input field
-   Validate that the refill amount is a positive number
-   Validate that the refill amount is numeric
-   Validate that the refill amount is a multiple of 10
-   Update the ATM balance with the refill amount
-   Display the new ATM balance
-   Display a success message in the result area
-   Display an error message if the refill amount is invalid

#### 8.3.1 Minimum Refill Function

What are the minimum requirements for the refill function?

-   Retrieve the refill amount from the input field
-   Add the refill amount to the ATM balance
-   Check if it works
    -   Does the ATM balance update correctly?

#### 8.3.2 Validation

What validation should the refill function perform?

-   Is the refill amount a positive number?
-   Is the refill amount numeric?
-   Is the refill amount a multiple of 10?

Logic:

-   If the refill amount is not a positive number:
    -   Don't update the ATM balance
    -   Display an error message in the result area
-   Else If the refill amount is not numeric:
    -   Don't update the ATM balance
    -   Display an error message in the result area
-   Else If the refill amount is not a multiple of 10:
    -   Don't update the ATM balance
    -   Display an error message in the result area
-   Else:
    -   Update the ATM balance with the refill amount
    -   Display the new ATM balance
    -   Display a success message in the result area

## OMG! We did it 🎉

---

# Improvements

Lets look at our code and see if there is room for improvements. For example:

-   Are there any improvements we can make to the user experience?
-   Is there any code duplication? If so, could we create a function to handle that?
-   Are the any other parts of the code that could be simplified or made more readable?
-   Does it make sense the refill functionality is offered in the same screen as the deposit and withdraw functionality? Or should we create a separate screen for it?

## Step 9: User Experience Improvements

What user experience improvements can we make to the ATM application?

-   Reset the input field after a successful transaction
-   Set the result message to its initial state after 3 seconds

## Step 10: Code Duplication

Are there any parts of the code that are duplicated? If so, we can create a function to handle that.

-   Create a function to update balance displays
-   Create a function to display the result message
    -   Besides showing the message, could we add some styling to the message, like changing the text color based on success, error or initial state?
-   Create a function to:
    -   Get the amount from the input field
    -   Apply validation used in all functions
        -   Check if the amount is a positive number
        -   Check if the amount is numeric
        -   Check if the amount is a multiple of 10

## Step 11: Simplifying Code

Are there any other parts of the code that could be simplified or made more readable?

## Step 12: Separate Refill Screen

How do we create a separate screen for the refill functionality?

### Step 12.1: Create Refill Screen

-   New HTML file? Does that actually wordk?
-   `display: none`

To be continued...

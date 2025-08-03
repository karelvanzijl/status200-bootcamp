# ATM v1.0

Let build the ATM machine together, step by step.

## Step 1: HTML

### 1.1 Minimum HTML requirements

What are the minimum HTML requirements for the ATM application?

### 1.2 Targetable HTML Elements

Which HTML elements do I need to access in the JavaScript code?

## Step 2: JavaScript Setup

### 2.1 Which functions do I need?

What functions do I need to implement my JavaScript code for the ATM application?

### 2.2 Calling the functions

When a user clicks the withdraw or deposit button, what should happen?

### 2.3 Initial Balances

**Question:** Where do we set initial balances? In the JavaScript code or directly in the HTML?

#### 2.3.1 Setting initial balances

When the ATM application starts, there should be a certain amount of money in the ATM and in the User's account.)

#### 2.3.2 Displaying initial balances

How do I show these balances in the HTML?

#### 2.3.3 Check if it works

Does everthing work correctly?

## Step 3. Deposit Function

Full description of the deposit function.

### 3.1 Minimum Deposit Function

What are the minimum requirements for the deposit function?

### 3.2 Display data

What should the deposit function do after updating the balances?

### 3.3 Validation

What validation should the deposit function perform?

#### 3.3.1 Positive Number

What should happen?

#### 3.3.2 Numeric Check

See what happens if we enter a non-numeric value in the input field. Do we need to add a extra validation step?

Lets pretent we do, would you do this?

1. `1 * amount === amount` is a way to check if the amount is numeric.
2. `isNaN(amount)` is another way to check if the amount is not a number.

The first option is something you might have been able to figure out on your own based on the subject covered so far in this course.

The second option is a more explicit way to check if the value is not a number, which can be clearer for someone reading the code. But you didn't know about it yet. You could have found out about it by searching online.

## Step 4. Withdraw Function

Full description of the withdraw function.

### 4.1 Minimum Withdraw Function

What are the minimum requirements for the withdraw function?

### 4.2 Display data

What should the withdraw function do after updating the balances?

### 4.3 Validation

What validation should the withdraw function perform?

#### 4.3.1 Positive Number

We already did something similar in the deposit function.

#### 4.3.2 Numeric Check

We already did something similar in the deposit function.

#### 4.3.3 ATM Balance Check

Is there enough money in the ATM to withdraw the requested amount?

## Awesome! We're done 🎉

Once you have completed all the steps, you should have a fully functional ATM application that allows users to deposit and withdraw money while handling various validation scenarios.

> Now would be a good time to start working on the layout and styling of the application to make it more user-friendly and visually appealing.

---

# Bonus Assignments

Lets add the bonus assignments to the ATM application:

## Step 6: Transaction Limit

What does the transaction limit do? The transaction limit restricts the maximum amount a user can withdraw / deposit in a single transaction.

What do we need for this?

### 6.1 Setting the Transaction Limit

What do we do?

### 6.2 Validate Against Transaction Limit

Does this validation need be added to both the withdraw and deposit functions.

## Step 7: Amount Must Be a Multiple of 10

In a normal ATM, you can't withdraw or deposit any amount you want. You can only withdraw or deposit amounts that are multiples of 10.

What do we need for this?

### 7.1 Validate Amount is a Multiple of 10

How can we check if the amount is a multiple of 10?

Remember the `%` operator? It gives us the remainder of a division. If the amount divided by 10 has no remainder, then it is a multiple of 10.

## Step 8: Refill ATM

In a real ATM, the bank can refill the ATM with money. Let's add this functionality to our application.

What do we need for this?

### 8.1 HTML requirements

Do we need to add another input field?

Do we need to add another display area?

Do we need to add another button?

### 8.2 JavaScript Setup

Do we need to add a new function in JavaScript?

When the refill button is clicked, what should happen?

### 8.3 Refill Function

What are the minimum requirements for the refill function?

#### 8.3.1 Minimum Refill Function

What are the minimum requirements for the refill function?

#### 8.3.2 Validation

What validation should the refill function perform?

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

## Step 10: Code Duplication

Are there any parts of the code that are duplicated? If so, we can create a function to handle that.

## Step 11: Simplifying Code

Are there any other parts of the code that could be simplified or made more readable?

## Step 12: Separate Refill Screen

How do we create a separate screen for the refill functionality?

### Step 12.1: Create Refill Screen

-   New HTML file? Does that actually work?
-   `display: none`

To be continued...

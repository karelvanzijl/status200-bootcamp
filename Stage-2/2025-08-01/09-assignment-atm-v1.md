## Navigation

1. [Overview](readme.md)
2. [Ternary Operator](./01-js-ternary-operator.md)
3. [Exercise: Ternary Operator](./02-exercise-ternary-operator.md)
4. [Logical Operators](./03-js-logical-operators.md)
5. [Exercise: Logical Operators](./04-exercise-logical-operators.md)
6. [Quick Quiz - Operators](./05-quick-quiz-javascript-operators.md)
7. [If ... else Statements](./06-js-if-else.md)
8. [Exercise: If ... else Statements](./07-exercise-for-if.md)
9. [Exercise: BMI Calculator 2.0](./08-exercise-bmi-calculator-2.md)
10. [ssignment: ATM Machine - Version 1.0](./09-assignment-atm-v1.md) ← _You are here_

---

# Assignment: ATM Machine - Version 1.0

## Overview

Build the first version of an ATM machine simulator! This assignment focuses on basic deposit and withdrawal operations with balance validation. This is the foundation that we'll build upon in future versions.

## Learning Objectives

-   Apply JavaScript operators and conditional logic
-   Manage multiple variables and their relationships
-   Implement user input validation
-   Create interactive web applications with real-world scenarios

## Assignment Requirements

### ATM Machine v1.0 Specifications

#### Initial Setup

-   **ATM Machine Balance**: 5000 MYR (total money inside the machine)
-   **User Account Balance**: 1000 MYR (user's starting balance)
-   **No login required** for this version.

#### Features Required

1. **HTML Interface**

    - Input field for amount
    - "Deposit" button
    - "Withdraw" button
    - Display areas for:
        - Current user balance
        - ATM machine balance
        - Transaction messages

2. **Deposit Functionality**

    - User can deposit any positive amount
    - User balance increases by deposit amount
    - ATM machine balance increases by deposit amount
    - Display success message with updated balances

3. **Withdrawal Functionality**

    - User can request withdrawal of any amount
    - **Validation checks:**
        - User must have sufficient balance
        - ATM machine must have sufficient cash
    - If valid:
        - User balance decreases by withdrawal amount
        - ATM machine balance decreases by withdrawal amount
        - Display success message with updated balances
    - If invalid:
        - Display appropriate error message
        - No balance changes occur

4. **Real-time Display**
    - Show current balances after each transaction
    - Clear, user-friendly success and error messages
    - Reset input field after each transaction

## Example Scenarios

### Scenario 1: Successful Withdrawal

-   **Before:** User balance: 1000 MYR, ATM balance: 5000 MYR
-   **Action:** Withdraw 200 MYR
-   **Result:** ✅ Success
-   **After:** User balance: 800 MYR, ATM balance: 4800 MYR
-   **Message:** "Withdrawal successful! You withdrew 200 MYR."

### Scenario 2: Insufficient User Balance

-   **Before:** User balance: 100 MYR, ATM balance: 5000 MYR
-   **Action:** Withdraw 200 MYR
-   **Result:** ❌ Error
-   **After:** No changes to balances
-   **Message:** "Insufficient balance in your account. Your balance: 100 MYR"

### Scenario 3: Insufficient ATM Cash

-   **Before:** User balance: 1000 MYR, ATM balance: 50 MYR
-   **Action:** Withdraw 100 MYR
-   **Result:** ❌ Error
-   **After:** No changes to balances
-   **Message:** "ATM has insufficient cash. Available: 50 MYR"

### Scenario 4: Successful Deposit

-   **Before:** User balance: 1000 MYR, ATM balance: 5000 MYR
-   **Action:** Deposit 300 MYR
-   **Result:** ✅ Success
-   **After:** User balance: 1300 MYR, ATM balance: 5300 MYR
-   **Message:** "Deposit successful! You deposited 300 MYR."

## Technical Requirements

1. **HTML Structure**

    - Semantic HTML elements with proper labels
    - Clear instructions for users
    - Accessible form controls

2. **JavaScript Logic**

    - Use appropriate operators (arithmetic, comparison, logical)
    - Implement proper conditional statements (if-else)
    - Validate all user inputs (positive numbers only)
    - Handle edge cases gracefully

3. **User Experience**
    - Clear success and error messages
    - Real-time balance updates
    - Intuitive interface design
    - Input field clears after transactions

## Input Validation Requirements

-   Reject negative amounts
-   Reject zero amounts
-   Handle non-numeric inputs gracefully
-   Provide helpful error messages for invalid inputs

## Bonus Challenges (Optional)

**Validation Enhancements**

-   Add a deposit / withdrawal limit (e.g., 1500 MYR)
-   Prevent withdrawal an deposits of amounts not divisible by 10 MYR
-   Ensure values entered by the user are integer numbers
-   Ensure values entered by the user are greater than 0

**Bank Operations**

-   Add "Refill ATM" button that allows the bank to add extra money to the ATM machine balance
-   Bank can add any positive amount divisible by 10 MYR to increase ATM cash availability
-   Validate that refill amount is divisible by 10 MYR
-   Display confirmation message when ATM is successfully refilled

## Submission Guidelines

1. **File Structure**

    ```
    atm-v1/
    ├── index.html
    ├── style.css (optional)
    └── script.js (if using external JS)
    ```

2. **Testing Checklist**

    - [ ] Successful withdrawal with sufficient funds
    - [ ] Withdrawal rejected due to insufficient user balance
    - [ ] Withdrawal rejected due to insufficient ATM cash
    - [ ] Successful deposit
    - [ ] Invalid input handling (negative, zero, non-numeric)
    - [ ] Balance displays update correctly
    - [ ] Messages are clear and helpful

3. **Code Quality**
    - Well-commented code explaining logic
    - Clean, readable variable names
    - Consistent formatting and indentation

## Assessment Criteria

-   **Functionality** (60%): All features work as specified
-   **Code Quality** (25%): Clean, readable, well-organized code
-   **User Experience** (15%): Clear interface and helpful messages

## Getting Started Tips

1. **Start Simple**: Begin with basic HTML structure and one function
2. **Test Frequently**: Check each feature before moving to the next
3. **Use Console**: `console.log()` your variables to debug
4. **Follow the Flow**: INPUT → RETRIEVE → PROCESS → OUTPUT → DISPLAY

## Next Steps

After completing ATM v1.0, you'll build ATM v2.0 which will include:

-   Bill denominations (100, 50, 10 MYR notes)
-   Smart withdrawal algorithms
-   Denomination-specific deposits
-   More complex validation logic

Good luck building your first ATM machine! 🏧

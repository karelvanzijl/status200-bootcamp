# JavaScript Fundamentals Quiz

## Instructions
- Answer all questions
- For code questions, write the complete code
- For multiple choice, select the best answer
- Some questions may have multiple correct answers

---

## Question 1: Array Basics (2 points)
Create an array called `fruits` containing "apple", "banana", and "orange". Then write code to:
- Add "grape" to the end of the array
- Print the length of the array
- Access and print the second item

```javascript
// Your code here
```

---

## Question 2: Function with Return Statement (3 points)
Write a function called `calculateArea` that takes two parameters (`width` and `height`) and returns their product. Include validation to return "Invalid input" if either parameter is not a number or is less than or equal to 0.

```javascript
// Your code here
```

---

## Question 3: For Loop Array Processing (3 points)
Given this array: `let numbers = [5, 12, 8, 20, 3]`

Write a for loop that:
- Finds and prints all numbers greater than 10
- Calculates and prints the sum of all numbers

```javascript
// Your code here
```

---

## Question 4: Object Creation and Manipulation (3 points)
Create an object called `student` with properties: name, age, grade, and isActive (boolean). Then:
- Add a new property `email`
- Update the `grade` property to "A+"
- Print the complete object

```javascript
// Your code here
```

---

## Question 5: Function Parameters and Arguments (2 points)
What will be printed by this code? Explain your answer.

```javascript
function greet(firstName, lastName) {
    console.log("Hello " + firstName + " " + lastName);
}

greet("John");
```

**Answer:** 

---

## Question 6: Array Methods (2 points)
Multiple Choice: Which method would you use to remove the last item from an array?

A) `array.remove()`
B) `array.pop()`
C) `array.delete()`
D) `array.removeLast()`

**Answer:** 

---

## Question 7: DOM Manipulation (3 points)
Write JavaScript code that:
- Gets an element with ID "message"
- Changes its display property to "none" if it's currently visible, or to "block" if it's hidden
- Updates a paragraph with ID "status" to show "Hidden" or "Shown" accordingly

```javascript
// Your code here
```

---

## Question 8: Array of Objects (4 points)
Given this array:
```javascript
const users = [
    { name: "Alice", age: 25, balance: 1500 },
    { name: "Bob", age: 30, balance: 2000 },
    { name: "Charlie", age: 22, balance: 800 }
];
```

Write code to:
- Print each user's name and balance using a for loop
- Find and return the user object with the name "Bob"

```javascript
// Your code here
```

---

## Question 9: Early Return Pattern (3 points)
Write a function called `validatePassword` that takes a password string and:
- Returns "Password required" if empty
- Returns "Too short" if less than 6 characters
- Returns "Valid password" if all checks pass

```javascript
// Your code here
```

---

## Question 10: Array indexOf Method (2 points)
What does `array.indexOf()` return when the item is not found in the array?

A) `0`
B) `-1`
C) `null`
D) `undefined`

**Answer:** 

---

## Question 11: Authentication Function (4 points)
Create a function `authenticateUser(username, pin)` that:
- Takes a username and pin as parameters
- Uses these arrays: `users = ["alice", "bob", "charlie"]` and `pins = ["1234", "5678", "9999"]`
- Returns the user object `{name: username, authenticated: true}` if credentials match
- Returns `{authenticated: false, error: "Invalid credentials"}` if no match

```javascript
// Your code here
```

---

## Question 12: CSS Display Property (2 points)
True or False: Setting an element's display property to "none" will hide the element but it will still take up space in the layout.

**Answer:** 

---

## Question 13: Nested Array Access (2 points)
Given: `let data = [["red", "green"], ["blue", "yellow"]];`

What code would access "yellow"?

A) `data[1][1]`
B) `data[2][2]`
C) `data[1][2]`
D) `data[0][1]`

**Answer:** 

---

## Question 14: Function Scope and Return (3 points)
What will this code output? Explain what happens after the return statement.

```javascript
function example() {
    console.log("Before return");
    return "Hello";
    console.log("After return");
    return "Goodbye";
}

console.log(example());
```

**Answer:** 

---

## Question 15: Array Length and Indices (2 points)
If an array has a length of 5, what are the valid indices to access its elements?

A) 1, 2, 3, 4, 5
B) 0, 1, 2, 3, 4
C) 1, 2, 3, 4
D) 0, 1, 2, 3, 4, 5

**Answer:** 

---

## Question 16: Transaction History System (4 points)
Create a user object with properties: name, balance, and transactions (empty array). Write functions:
- `addTransaction(user, type, amount)` - adds a transaction string like "deposit $500"
- `getBalance(user)` - returns the current balance
- `getLastTransaction(user)` - returns the most recent transaction

```javascript
// Your code here
```

---

## Question 17: Loop Conditions (2 points)
Which for loop will correctly iterate through an array called `items`?

A) `for (let i = 1; i <= items.length; i++)`
B) `for (let i = 0; i < items.length; i++)`
C) `for (let i = 0; i <= items.length; i++)`
D) `for (let i = 1; i < items.length; i++)`

**Answer:** 

---

## Question 18: Object Property Access (2 points)
Given: `let person = {name: "John", age: 30};`

Which are valid ways to access the name property? (Select all that apply)

A) `person.name`
B) `person["name"]`
C) `person[name]`
D) `person.["name"]`

**Answer:** 

---

## Question 19: Screen Management (4 points)
Write functions to manage two div elements with IDs "loginScreen" and "mainScreen":
- `showLogin()` - shows login screen, hides main screen
- `showMain()` - shows main screen, hides login screen
- Both functions should update a paragraph with ID "currentScreen" to show which screen is active

```javascript
// Your code here
```

---

## Question 20: Array Search and Validation (3 points)
Write a function `findUserByAccount(accountNumber)` that searches this array:
```javascript
const bankUsers = [
    { name: "Emma", accountNumber: "12345", balance: 2500 },
    { name: "James", accountNumber: "67890", balance: 1200 }
];
```

Return the user object if found, or null if not found.

```javascript
// Your code here
```

---

## Question 21: Multiple Conditions (3 points)
Write a function `canWithdraw(balance, amount)` that returns:
- "Amount must be positive" if amount ≤ 0
- "Insufficient funds" if amount > balance  
- "Valid withdrawal" if all checks pass

```javascript
// Your code here
```

---

## Question 22: Complex Array Operations (4 points)
Given arrays `menuItems = ["Pizza", "Burger", "Salad"]` and `prices = [12.99, 8.99, 7.50]`:

Write code to:
- Display a formatted menu with item numbers (1. Pizza - $12.99)
- Calculate and display the total cost of all items
- Find the most expensive item and display it

```javascript
// Your code here
```

---

## Bonus Question: Integration Challenge (5 points)
Create a simple banking system that combines multiple concepts:
- User object with name, balance, pin, and transactions array
- Function to validate pin and authenticate user
- Function to withdraw money (with validation)  
- Function to display transaction history
- Use proper return statements and error handling

```javascript
// Your code here
```

---

**Total Points: 65 points (+ 5 bonus points)**

### Grading Scale:
- A: 58-65 points (90%+)
- B: 52-57 points (80-89%)
- C: 45-51 points (70-79%)
- D: 39-44 points (60-69%)
- F: Below 39 points (<60%)
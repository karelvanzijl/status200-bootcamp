# For Loops in JavaScript

We learned about arrays and how they can store multiple values. We learned how to access individual items, but what if we want to do something with ALL items in an array? Writing code for each item manually would be inefficient.

This is where **loops** come in! Loops allow us to repeat code multiple times automatically.

## What is a For Loop?

A **for loop** is a control structure that allows you to repeat a block of code a specific number of times. It's perfect for working with arrays because you can loop through each item automatically.

### Real-World Metaphor

Imagine you have a drawer with 5 compartments (like our array metaphor), and you want to check what's in each compartment:

```
My Drawer (5 compartments)
+---------------------+
| Item 1: Book        | <-- Check this (step 1)
+---------------------+
| Item 2: Pen         | <-- Check this (step 2)
+---------------------+
| Item 3: Notebook    | <-- Check this (step 3)
+---------------------+
| Item 4: Eraser      | <-- Check this (step 4)
+---------------------+
| Item 5: Sticky Notes| <-- Check this (step 5)
+---------------------+
```

Instead of manually checking each compartment one by one, you could:

1. Start at compartment 0 (first one)
2. Check the item in that compartment
3. Move to the next compartment
4. Repeat until you've checked all 5 compartments

**This is exactly what a for loop does with arrays!**

## Basic For Loop Structure

```javascript
for (initialization; condition; increment) {
    // Code to repeat
}
```

**Breakdown:**

-   **Initialization**: Set up a counter variable (usually `i = 0`)
-   **Condition**: When should the loop continue? (usually `i < arrayLength`)
-   **Increment**: How to update the counter after each iteration (usually `i++`)

## Simple For Loop Example

```javascript
// Loop 5 times
for (let i = 0; i < 5; i++) {
    console.log("Step " + i);
}
```

**Output:**

```
Step 0
Step 1
Step 2
Step 3
Step 4
```

**What happened?**

1. `i` starts at 0
2. Check: is `i < 5`? Yes (0 < 5), so run the code
3. Print "Step 0"
4. Increment `i` to 1
5. Check: is `i < 5`? Yes (1 < 5), so run the code again
6. Print "Step 1"
7. Continue until `i` becomes 5
8. Check: is `i < 5`? No (5 is not < 5), so stop the loop

## Looping Through Arrays

This is where for loops become super powerful with arrays:

```javascript
let fruits = ["apple", "banana", "orange", "grape"];

// Loop through each item in the array
for (let i = 0; i < fruits.length; i++) {
    console.log("Fruit " + i + ": " + fruits[i]);
}
```

**Output:**

```
Fruit 0: apple
Fruit 1: banana
Fruit 2: orange
Fruit 3: grape
```

**What happened?**

-   `i` starts at 0 (first array index)
-   `fruits.length` is 4, so loop while `i < 4`
-   `fruits[i]` accesses the item at index `i`
-   Loop continues until all array items are processed

## Common For Loop Patterns

### Pattern 1: Display All Items

```javascript
let hobbies = ["reading", "gaming", "cooking"];

for (let i = 0; i < hobbies.length; i++) {
    console.log("I enjoy " + hobbies[i]);
}
```

### Pattern 2: Count Items

```javascript
let numbers = [5, 10, 15, 20, 25];
let total = 0;

for (let i = 0; i < numbers.length; i++) {
    total = total + numbers[i];
}

console.log("Total: " + total); // Output: Total: 75
```

### Pattern 3: Find Specific Items

```javascript
let ages = [25, 17, 30, 16, 40];

for (let i = 0; i < ages.length; i++) {
    if (ages[i] >= 18) {
        console.log("Person " + i + " is an adult (age: " + ages[i] + ")");
    }
}
```

### Pattern 4: Create New Array

```javascript
let prices = [10, 20, 30, 40];
let discountedPrices = [];

for (let i = 0; i < prices.length; i++) {
    let discounted = prices[i] * 0.8; // 20% discount
    discountedPrices.push(discounted);
}

console.log(discountedPrices); // [8, 16, 24, 32]
```

## Understanding the Counter Variable `i`

The variable `i` is just a name - you could use any name:

```javascript
let colors = ["red", "green", "blue"];

// These all do the same thing:
for (let i = 0; i < colors.length; i++) {
    console.log(colors[i]);
}

for (let counter = 0; counter < colors.length; counter++) {
    console.log(colors[counter]);
}

for (let index = 0; index < colors.length; index++) {
    console.log(colors[index]);
}
```

**Convention**: Most programmers use `i` (short for "index") because it's quick to type.

## Common Mistakes to Avoid

### Mistake 1: Off-by-One Error

```javascript
let fruits = ["apple", "banana", "orange"];

// WRONG - will cause an error
for (let i = 0; i <= fruits.length; i++) {
    console.log(fruits[i]); // fruits[3] doesn't exist!
}

// CORRECT
for (let i = 0; i < fruits.length; i++) {
    console.log(fruits[i]);
}
```

### Mistake 2: Infinite Loop

```javascript
// WRONG - infinite loop (never stops!)
for (let i = 0; i < 5; i--) {
    // i-- decreases i instead of increasing
    console.log(i);
}

// CORRECT
for (let i = 0; i < 5; i++) {
    console.log(i);
}
```

---

# Examples

## Example 1: Basic Counting

```javascript
console.log("Counting from 1 to 5:");
for (let i = 1; i <= 5; i++) {
    console.log(i);
}
// Output: 1, 2, 3, 4, 5
```

## Example 2: Backwards Counting

```javascript
console.log("Countdown:");
for (let i = 5; i >= 1; i--) {
    console.log(i);
}
console.log("Blast off!");
// Output: 5, 4, 3, 2, 1, Blast off!
```

## Example 3: Skip Every Other Number

```javascript
console.log("Even numbers from 0 to 10:");
for (let i = 0; i <= 10; i = i + 2) {
    console.log(i);
}
// Output: 0, 2, 4, 6, 8, 10
```

## Example 4: Shopping List

```javascript
let shoppingList = ["milk", "bread", "eggs", "cheese"];

console.log("My Shopping List:");
for (let i = 0; i < shoppingList.length; i++) {
    console.log(i + 1 + ". " + shoppingList[i]);
}
```

## Example 5: Find the Longest Name

```javascript
let names = ["Alex", "Jennifer", "Bob", "Christopher"];
let longestName = "";

for (let i = 0; i < names.length; i++) {
    if (names[i].length > longestName.length) {
        longestName = names[i];
    }
}
console.log("The longest name is: " + longestName); // Christopher
```

## Example 6: Average Grade Calculator

```javascript
let grades = [85, 92, 78, 96, 88];
let total = 0;

// Calculate total
for (let i = 0; i < grades.length; i++) {
    total = total + grades[i];
}

let average = total / grades.length;
console.log("Average grade: " + average); // 87.8
```

## Example 7: Password Checker

```javascript
let users = ["alice", "bob", "charlie"];
let passwords = ["pass123", "secret", "mypass"];

function login(username, password) {
    for (let i = 0; i < users.length; i++) {
        if (users[i] === username && passwords[i] === password) {
            console.log("Login successful for " + username);
            return;
        }
    }
    console.log("Invalid username or password");
}

login("bob", "secret"); // Login successful for bob
login("alice", "wrong"); // Invalid username or password
```

## Example 8: Build a Menu

```javascript
let menuItems = ["Pizza", "Burger", "Salad", "Pasta"];
let prices = [12.99, 8.99, 7.5, 10.99];

console.log("RESTAURANT MENU");
console.log("===============");

for (let i = 0; i < menuItems.length; i++) {
    console.log(i + 1 + ". " + menuItems[i] + " - $" + prices[i]);
}
```

---

# Exercises

## Exercise 1: Your First Loop

Write a for loop that prints "Hello" 3 times.

**Answer:**

```javascript
for (let i = 0; i < 3; i++) {
    console.log("Hello");
}
// Output: Hello, Hello, Hello
```

## Exercise 2: Number Sequence

Create a for loop that prints numbers from 1 to 10.

**Answer:**

```javascript
for (let i = 1; i < 11; i++) {
    console.log(i);
}
// Output: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
```

## Exercise 3: Your Favorite Things

Create an array with 4 of your favorite movies. Use a for loop to print each movie with its position number (1, 2, 3, 4).

**Answer:**

```javascript
let movies = ["Titanic", "Kill Bill", "Terminator", "Alien"];
for (let i = 0; i < movies.length; i++) {
    console.log(i + 1 + ". " + movies[i]);
}
// Output: 1. Titanic, 2. Kill Bill, 3. Terminator, 4. Alien
```

## Exercise 4: Sum Calculator

Create an array of 5 numbers. Use a for loop to calculate and print the sum of all numbers.

**Answer:**

```javascript
let numbers = [2, 5, 9, 6, 3];
let total = 0;
for (let i = 0; i < numbers.length; i++) {
    total += numbers[i];
}
console.log(total);
// Output: 25
```

## Exercise 5: Age Checker

Create an array with different ages: [16, 25, 17, 30, 14]. Use a for loop to check each age and print whether each person can vote (18 or older) or not.

**Asnwer:**

```javascript
let ages = [16, 25, 17, 30, 14];
for (let i = 0; i < ages.length; i++) {
    if (ages[i] >= 18) {
        console.log("Person " + (i + 1) + " can vote.");
    } else {
        console.log("Person " + (i + 1) + " can not vote.");
    }
}
// Output: Person 1 can not vote, Person 2 can vote, Person 3 can not vote, Person 4 can vote, Person 5 can not vote
```

## Exercise 6: Price Calculator

You have an array of item prices: [5.99, 12.50, 3.25, 8.75]. Use a for loop to:

-   Calculate the total cost
-   Apply a 10% tax
-   Print the final total

**Answer:**

```javascript
let prices = [5.99, 12.5, 3.25, 8.75];
let tax = 1.1;
total = 0;
for (let i = 0; i < prices.length; i++) {
    total += prices[i] * tax;
}
console.log("Total price (incl. tax): " + total);
// Output: Total price (incl. tax): 31.425
```

## Exercise 7: Inventory Manager

You have two arrays:

-   `items = ["apples", "bananas", "oranges"]`
-   `quantities = [10, 5, 8]`

Use a for loop to print inventory status like: "apples: 10 in stock"

## Exercise 8: Simple Search Engine

Create an array of website names: ["google", "facebook", "youtube", "amazon"]. Write a function that takes a search term and uses a for loop to check if any website contains that term. Print all matching websites.

---

## Exercise 9: String Length Finder

Create an array of different words. Use a for loop to find and print the word with the most characters.

## Exercise 10: Name Formatter

Create an array of names in lowercase: ["john", "mary", "david"]. Use a for loop to create a new array where each name starts with a capital letter.

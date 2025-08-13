# Homework: Arrays and For Loops

Practice the concepts from today's lesson with these exercises. Work through them at your own pace and try to understand each solution before moving to the next exercise.

---

## Part 1: Basic For Loop Practice

### Exercise 1: Countdown Timer

Create a countdown from 10 to 1, then display "Blast off!".

**Expected Output:**

```
10
9
8
7
6
5
4
3
2
1
Blast off!
```

**Answer:**

```javascript
for (let i = 10; i >= 1; i--) {
    console.log(i);
}
console.log("Blast off!");
```

### Exercise 2: Custom Variable Names

Create a for loop that uses the variable name `banana` to count from 1 to 5. Display "Banana number: X" for each iteration.

**Expected Output:**

```
Banana number: 1
Banana number: 2
Banana number: 3
Banana number: 4
Banana number: 5
```

**Answer:**

```javascript
for (let banana = 1; banana <= 5; banana++) {
    console.log(`Banana number: ${banana}`);
}
```

### Exercise 3: Skip Counting

Create a for loop that displays only odd numbers from 1 to 9.

**Expected Output:**

```
1
3
5
7
9
```

**Answer:**

```javascript
for (let i = 1; i <= 9; i += 2) {
    console.log(i);
}
```

---

## Part 2: Basic Array Loops

### Exercise 4: Fruit Display

Create an array with 4 different fruits. Use a for loop to display each fruit.

```javascript
let fruits = ["apple", "banana", "orange", "grape"];
// Your code here
```

**Expected Output:**

```
apple
banana
orange
grape
```

**Answer:**

```javascript
let fruits = ["apple", "banana", "orange", "grape"];
for (let i = 0; i < fruits.length; i++) {
    console.log(fruits[i]);
}
```

### Exercise 5: Student Roll Call

Create an array of student names. Display each student with their position number (starting from 1).

```javascript
let students = ["Alice", "Bob", "Charlie", "Diana"];
// Your code here
```

**Expected Output:**

```
Student 1: Alice
Student 2: Bob
Student 3: Charlie
Student 4: Diana
```

**Answer:**

```javascript
let students = ["Alice", "Bob", "Charlie", "Diana"];
for (let i = 0; i < students.length; i++) {
    console.log("Student " + (i + 1) + ": " + students[i]);
}
```

### Exercise 6: Price Calculator

Create an array of item prices. Calculate and display the total cost.

```javascript
let prices = [12.5, 8.75, 15.0, 6.25];
// Your code here
```

**Expected Output:**

```
Total cost: $42.50
```

**Answer:**

```javascript
let prices = [12.5, 8.75, 15.0, 6.25];
let total = 0;
for (let i = 0; i < prices.length; i++) {
    total += prices[i];
}
console.log("Total cost: $" + total.toFixed(2));
```

---

## Part 3: Advanced Loop Techniques

### Exercise 7: Skip the First Item

You have an array where the first item is just a header. Display only the actual data (skip index 0).

```javascript
let data = ["HEADER", "Item1", "Item2", "Item3", "Item4"];
// Your code here
```

**Expected Output:**

```
Item1
Item2
Item3
Item4
```

**Answer:**

```javascript
let data = ["HEADER", "Item1", "Item2", "Item3", "Item4"];
for (let i = 1; i < data.length; i++) {
    console.log(data[i]);
}
```

Or

```javascript
let data = ["HEADER", "Item1", "Item2", "Item3", "Item4"];
for (let i = 0; i < data.length; i++) {
    if (data[i] !== "HEADER") {
        console.log(data[i]);
    }
}
```

### Exercise 8: Backwards Through Colors

Display an array of colors in reverse order.

```javascript
let colors = ["red", "green", "blue", "yellow"];
// Your code here
```

**Expected Output:**

```
yellow
blue
green
red
```

**Answer:**

```javascript
let colors = ["red", "green", "blue", "yellow"];
for (let i = colors.length - 1; i >= 0; i--) {
    console.log(colors[i]);
}
```

### Exercise 9: Every Other Number

Display every other number from an array (skip every second item).

```javascript
let numbers = [10, 20, 30, 40, 50, 60, 70, 80];
// Your code here
```

**Expected Output:**

```
10
30
50
70
```

**Answer:**

```javascript
let numbers = [10, 20, 30, 40, 50, 60, 70, 80];
for (let i = 0; i < numbers.length; i += 2) {
    console.log(numbers[i]);
}
```

---

## Part 4: Working with Numbers

### Exercise 10: Grade Average

Calculate the average of test scores and display each score along with how it compares to the average.

```javascript
let scores = [85, 92, 78, 88, 95];
// Calculate average first, then compare each score
```

**Expected Output:**

```
Average score: 87.6
Score 1: 85 (Below average)
Score 2: 92 (Above average)
Score 3: 78 (Below average)
Score 4: 88 (Above average)
Score 5: 95 (Above average)
```

**Answer:**

```javascript
let scores = [85, 92, 78, 88, 95];
let total = 0;
for (let i = 0; i < scores.length; i++) {
    total += scores[i];
}
let average = total / scores.length;
console.log("Average score: " + average.toFixed(1));

for (let i = 0; i < scores.length; i++) {
    if (scores[i] < average) {
        console.log(`Score ${i + 1}: ${scores[i]} (Below average)`);
    } else if (scores[i] > average) {
        console.log(`Score ${i + 1}: ${scores[i]} (Above average)`);
    } else {
        console.log(`Score ${i + 1}: ${scores[i]} (Equal to average)`);
    }
}
```

### Exercise 11: Shopping Cart Subtotals

Display each item price and show a running subtotal.

```javascript
let items = [5.99, 12.5, 8.75, 15.0];
// Your code here
```

**Expected Output:**

```
Item 1: $5.99 (Subtotal: $5.99)
Item 2: $12.50 (Subtotal: $18.49)
Item 3: $8.75 (Subtotal: $27.24)
Item 4: $15.00 (Subtotal: $42.24)
Final Total: $42.24
```

**Answer:**

```javascript
let items = [5.99, 12.5, 8.75, 15.0];
let subtotal = 0;
for (let i = 0; i < items.length; i++) {
    subtotal += items[i];
    console.log(
        "Item " +
            (i + 1) +
            ": $" +
            items[i].toFixed(2) +
            " (Subtotal: $" +
            subtotal.toFixed(2) +
            ")"
    );
}
console.log("Final Total: $" + subtotal.toFixed(2));
```

---

## Part 5: Simple Nested Loops

### Exercise 12: Color and Size Combinations

Create all possible combinations of colors and sizes.

```javascript
let colors = ["red", "blue"];
let sizes = ["small", "large"];
// Your code here
```

**Expected Output:**

```
red small
red large
blue small
blue large
```

**Answer:**

```javascript
let colors = ["red", "blue"];
let sizes = ["small", "large"];
for (let i = 0; i < colors.length; i++) {
    for (let j = 0; j < sizes.length; j++) {
        console.log(colors[i] + " " + sizes[j]);
    }
}
```

### Exercise 13: Number Multiplication Table

Create a simple multiplication table using two small arrays.

```javascript
let numbers1 = [2, 3];
let numbers2 = [4, 5];
// Your code here
```

**Expected Output:**

```
2 × 4 = 8
2 × 5 = 10
3 × 4 = 12
3 × 5 = 15
```

**Answer:**

```javascript
let numbers1 = [2, 3];
let numbers2 = [4, 5];
for (let i = 0; i < numbers1.length; i++) {
    for (let j = 0; j < numbers2.length; j++) {
        let product = numbers1[i] * numbers2[j];
        console.log(numbers1[i] + " × " + numbers2[j] + " = " + product);
    }
}
```

---

## Part 6: Array Methods Introduction

Before moving to more complex exercises, let's learn about some useful array methods:

### `push()` - Add to End of Array

The `push()` method adds one or more elements to the end of an array.

```javascript
let fruits = ["apple", "banana"];
fruits.push("orange");
console.log(fruits); // ['apple', 'banana', 'orange']

// You can add multiple items at once
fruits.push("grape", "kiwi");
console.log(fruits); // ['apple', 'banana', 'orange', 'grape', 'kiwi']
```

### `pop()` - Remove from End of Array

The `pop()` method removes the last element from an array and returns it.

```javascript
let fruits = ["apple", "banana", "orange"];
let lastFruit = fruits.pop(); // Removes 'orange'
console.log(lastFruit); // 'orange'
console.log(fruits); // ['apple', 'banana']
```

### `indexOf()` - Find Position of Item

The `indexOf()` method returns the first index where an element is found, or -1 if not found.

```javascript
let fruits = ["apple", "banana", "orange"];
let position = fruits.indexOf("banana"); // Returns 1
console.log(position); // 1

let notFound = fruits.indexOf("grape"); // Returns -1
console.log(notFound); // -1
```

---

## Part 7: Challenge Exercises (Combining Everything)

These exercises require you to combine loops with array methods and logical thinking. If you find them difficult, review the basics first.

### Exercise 14: Dynamic Array Building

Start with an empty array. Use a loop to add numbers 1 through 5 to the array, then display the final array.

```javascript
let numbers = [];
// Use a loop and push() to add numbers 1-5
// Then display the array
```

**Expected Output:**

```
Final array: [1, 2, 3, 4, 5]
```

**Answer:**

```javascript
let numbers = [];
for (let i = 1; i <= 5; i++) {
    numbers.push(i);
}
console.log("Final array", numbers);
```

### Exercise 15: Remove Last Item Repeatedly

Start with an array of colors. Use a loop to remove one item at a time until the array is empty, showing what was removed each time.

```javascript
let colors = ["red", "green", "blue", "yellow"];
// Use a loop and pop() to remove items one by one
```

**Expected Output:**

```
Removed: yellow, Remaining: [red, green, blue]
Removed: blue, Remaining: [red, green]
Removed: green, Remaining: [red]
Removed: red, Remaining: []
Array is now empty!
```

**Answer:**

```javascript
let colors = ["red", "green", "blue", "yellow"];
for (let i = colors.length - 1; i >= 0; i--) {
    let removedColor = colors.pop();
    console.log(`Removed: ${removedColor}, Remaining: [${colors.join(", ")}]`);
}
console.log("Array is now empty!");
```

### Exercise 16: Search and Report

Create an array of student names. Ask (simulate asking) for a specific name and report whether that student exists and at what position.

```javascript
let students = ["Alice", "Bob", "Charlie", "Diana", "Eve"];
let searchName = "Charlie"; // Simulate user input
// Use indexOf() to find the student
```

**Expected Output:**

```
Student 'Charlie' found at position 3 (index 2)
```

**Answer:**

```javascript
let students = ["Alice", "Bob", "Charlie", "Diana", "Eve"];
let searchName = "Charlie"; // Simulate user input
let position = students.indexOf(searchName);
if (position !== -1) {
    console.log(
        `Student '${searchName}' found at position ${
            position + 1
        } (index ${position})`
    );
} else {
    console.log(`Student '${searchName}' not found.`);
}
```

### Exercise 17: Grade Counter with Conditions

Count how many students passed (score >= 70) and failed (score < 70).

```javascript
let scores = [85, 65, 92, 45, 78, 88, 55, 91];
// Use a loop to count passed and failed students
```

**Expected Output:**

```
Checking 8 scores...
Passed: 5 students
Failed: 3 students
Pass rate: 62.5%
```

**Answer:**

```javascript
let scores = [85, 65, 92, 45, 78, 88, 55, 91];
let passedCount = 0;
let failedCount = 0;
for (let i = 0; i < scores.length; i++) {
    if (scores[i] >= 70) {
        passedCount++;
    } else {
        failedCount++;
    }
}
console.log(`Checking ${scores.length} scores...`);
console.log(`Passed: ${passedCount} students`);
console.log(`Failed: ${failedCount} students`);
let passRate = ((passedCount / scores.length) * 100).toFixed(1);
console.log(`Pass rate: ${passRate}%`);
```

### Exercise 18: Shopping Cart Manager

Start with a cart array and simulate adding items based on a list, but only add items that aren't already in the cart.

```javascript
let cart = ["apple", "bread"];
let itemsToAdd = ["milk", "apple", "cheese", "bread", "eggs"];
// Use indexOf() to check if item exists before adding
```

**Expected Output:**

```
Adding milk to cart
apple is already in cart
Adding cheese to cart
bread is already in cart
Adding eggs to cart
Final cart: [apple, bread, milk, cheese, eggs]
```

**Answer:**

```javascript
let cart = ["apple", "bread"];
let itemsToAdd = ["milk", "apple", "cheese", "bread", "eggs"];
for (let i = 0; i < itemsToAdd.length; i++) {
    if (cart.indexOf(itemsToAdd[i]) === -1) {
        cart.push(itemsToAdd[i]);
        console.log(`Adding ${itemsToAdd[i]} to cart`);
    } else {
        console.log(`${itemsToAdd[i]} is already in cart`);
    }
}
console.log("Final cart:", cart);
```

### Exercise 19: Nested Loop with Conditions

Create a seating chart where some seats are taken. Display all available seats.

```javascript
let rows = ["A", "B"];
let seats = [1, 2, 3, 4];
let taken = ["A2", "B1", "B4"]; // Format: RowSeat
// Use nested loops and indexOf() to check if seat is taken
```

**Expected Output:**

```
Available seats:
A1
A3
A4
B2
B3
```

**Answer:**

```javascript
let rows = ["A", "B"];
let seats = [1, 2, 3, 4];
let taken = ["A2", "B1", "B4"];
console.log("Available seats:");
for (let i = 0; i < rows.length; i++) {
    for (let j = 0; j < seats.length; j++) {
        let seat = rows[i] + seats[j];
        if (taken.indexOf(seat) === -1) {
            console.log(seat);
        }
    }
}
```

### Exercise 20: Advanced Pattern Challenge

Create a pattern where for each number 1-3, you display that number of stars.

**Expected Output:**

```
1: *
2: **
3: ***
```

**Answer:**

```javascript
for (let i = 1; i <= 3; i++) {
    let stars = "";
    for (let j = 0; j < i; j++) {
        stars += "*";
    }
    console.log(`${i}: ${stars}`);
}
```

---

## Homework Solutions

Try to solve all exercises before looking at the solutions. If you get stuck, review the concepts from the main lesson file.

**Remember:**

-   Start with the easier exercises and work your way up
-   If you can't solve the challenge exercises, make sure you understand all the basic ones first
-   Practice with different arrays and numbers to really master these concepts
-   The challenge exercises test whether you truly understand the fundamentals

**Good luck!** 🚀

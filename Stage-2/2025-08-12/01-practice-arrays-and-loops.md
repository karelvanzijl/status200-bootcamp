# Practice: Arrays and For Loops

Today we'll strengthen your understanding of arrays and for loops through hands-on practice exercises. These concepts are crucial for building more complex applications like the ATM system.

## Quick For Loop Refresher

Before diving into complex examples, let's review the basic for loop structure and explore some variations:

### Basic For Loop Structure

```javascript
// Basic for loop syntax
for (let i = 0; i < 5; i++) {
    console.log(i);
}

// Output: 0, 1, 2, 3, 4
```

**What's happening here?**

1. `let i = 0` - Initialize our counter variable
2. `i < 5` - Continue looping while this condition is true
3. `i++` - Increment i by 1 after each loop iteration
4. The loop runs 5 times (i = 0, 1, 2, 3, 4)

### For Loop Variations - You Have Options!

The for loop is flexible! Let's see some creative variations:

#### Using Different Variable Names

```javascript
// Using a different variable name
for (let monkey = 0; monkey < 4; monkey++) {
    console.log("Monkey number: " + monkey);
}

// Output:
// Monkey number: 0
// Monkey number: 1
// Monkey number: 2
// Monkey number: 3
```

**Fun fact:** You can use any variable name you want! `monkey`, `banana`, `counter`, `x` - it all works the same way.

#### Counting Backwards with i--

```javascript
// Counting backwards from 4 to 0
for (let i = 4; i >= 0; i--) {
    console.log("Countdown: " + i);
}

// Output:
// Countdown: 4
// Countdown: 3
// Countdown: 2
// Countdown: 1
// Countdown: 0
```

**Key points:**

-   Start with a higher number (4)
-   Use `>=` to include 0
-   Use `i--` to decrease by 1 each time

#### Jumping by 2 with i += 2

```javascript
// Looping through even numbers from 0 to 8
for (let i = 0; i < 10; i += 2) {
    console.log("Even number: " + i);
}

// Output:
// Even number: 0
// Even number: 2
// Even number: 4
// Even number: 6
// Even number: 8
```

#### Creative Variable Names in Action

```javascript
// Using a fun variable name for pizza slices
for (let pizza = 1; pizza <= 3; pizza++) {
    console.log("Eating pizza slice " + pizza);
}

// Output:
// Eating pizza slice 1
// Eating pizza slice 2
// Eating pizza slice 3
```

#### Combining Different Patterns

```javascript
// Looping with a different variable name and step size
for (let rocket = 10; rocket > 0; rocket -= 3) {
    console.log("Rocket at altitude: " + rocket);
}

// Output:
// Rocket at altitude: 10
// Rocket at altitude: 7
// Rocket at altitude: 4
// Rocket at altitude: 1
```

**Remember:** The variable name doesn't change how the loop works - it's just a label!

## Looping Through Arrays

Arrays are ordered collections of items, and for loops are the perfect tool for processing each item systematically.

### Example 1: Basic Array Iteration

```javascript
let fruits = ["apple", "banana", "orange"];

// Loop through each fruit
for (let i = 0; i < fruits.length; i++) {
    // Display the fruit at index i
    console.log(fruits[i]);
}

// Output:
// apple
// banana
// orange
```

**Key Points:**

-   `fruits.length` gives us the total number of items (3)
-   `fruits[i]` accesses the item at position i
-   The loop automatically handles all items regardless of array size

### Example 2: Combining Array Values with Text

```javascript
let animals = ["cat", "dog", "bird"];

// Loop through each animal
for (let i = 0; i < animals.length; i++) {
    // Display a message for each animal
    console.log("I have a " + animals[i]);
}

// Output:
// I have a cat
// I have a dog
// I have a bird
```

## Advanced Array Looping Techniques

Sometimes you need more control over which array elements you process. Let's explore different starting points and step patterns.

### Starting from a Specific Index

You don't always need to start from index 0. Here's how to skip elements:

#### Example 1: Skip the First Item

```javascript
let colors = ["red", "green", "blue", "yellow"];

// Loop through colors starting from index 1
for (let i = 1; i < colors.length; i++) {
    // Display the color
    console.log("Color " + i + ": " + colors[i]);
}

// Output:
// Color 1: green
// Color 2: blue
// Color 3: yellow
```

**Why start from 1?** Maybe the first item is a header or default value you want to ignore.

#### Example 2: Start from the Middle

```javascript
let students = ["Alice", "Bob", "Charlie", "Dana", "Eve"];

// Loop through students starting from index 2
for (let i = 2; i < students.length; i++) {
    // Display the student name
    console.log("Student: " + students[i]);
}

// Output:
// Student: Charlie
// Student: Dana
// Student: Eve
```

**Real-world use case:** Processing only recent entries in a log, or skipping already processed items.

### Changing the Step Size

The third part of the for loop (`i++`) controls how much i increases each time. We can modify this for different patterns.

#### Example 1: Skip Every Other Item

```javascript
let numbers = [10, 20, 30, 40, 50, 60];

// Loop through every second number
for (let i = 0; i < numbers.length; i += 2) {
    // Display the number
    console.log("Number: " + numbers[i]);
}

// Output:
// Number: 10
// Number: 30
// Number: 50
```

**Note:** `i += 2` means "increase i by 2" each time instead of 1.

#### Example 2: Looping Backwards

```javascript
let days = ["Monday", "Tuesday", "Wednesday", "Thursday"];

// Loop through the array backwards
for (let i = days.length - 1; i >= 0; i--) {
    // Display the day
    console.log("Day: " + days[i]);
}

// Output:
// Day: Thursday
// Day: Wednesday
// Day: Tuesday
// Day: Monday
```

**Breaking it down:**

-   `i = days.length - 1` starts at the last index (3)
-   `i >= 0` continues while i is 0 or greater
-   `i--` decreases i by 1 each time

## Working with Numeric Arrays

Arrays frequently contain numbers that require mathematical operations. Let's explore common patterns for processing numeric data.

### Example 1: Using the "index" to Display Scores

```javascript
let scores = [85, 92, 78, 96];

// Loop through each score
for (let i = 0; i < scores.length; i++) {
    // Display the score with its index
    console.log("Score " + (i + 1) + ": " + scores[i] + " points");
}

// Output:
// Score 1: 85 points
// Score 2: 92 points
// Score 3: 78 points
// Score 4: 96 points
```

**Note:** We use `(i + 1)` because humans count from 1, but arrays start at index 0.

### Example 2: Calculating Totals

```javascript
let prices = [15, 25, 10, 30];
let total = 0;

// Loop through each price
for (let i = 0; i < prices.length; i++) {
    // Add the current price to the total
    total += prices[i];

    // Display the current item and running total
    console.log(
        "Item " +
            (i + 1) +
            ": $" +
            prices[i] +
            " (Total so far: $" +
            total +
            ")"
    );
}

// Final total
console.log("Final total: $" + total);

// Output:
// Item 1: $15 (Total so far: $15)
// Item 2: $25 (Total so far: $40)
// Item 3: $10 (Total so far: $50)
// Item 4: $30 (Total so far: $80)
// Final total: $80
```

**Key Concept:** The `total` variable accumulates values as we loop through the array.

## Nested Loops: Working with Multiple Arrays

Nested loops allow you to combine data from different arrays or process two-dimensional data structures. This is a powerful technique for creating combinations and working with complex data.

### Understanding Nested Loops

A nested loop is simply a loop inside another loop. The inner loop completes all its iterations for each iteration of the outer loop.

### Example 1: Creating Product Combinations

```javascript
let shirts = ["red", "blue"];
let sizes = ["small", "medium", "large"];

// Go through each shirt color
for (let i = 0; i < shirts.length; i++) {
    // Go through each size
    for (let j = 0; j < sizes.length; j++) {
        // Display the shirt color and size combination
        console.log(shirts[i] + " shirt in " + sizes[j]);
    }
}

// Output:
// red shirt in small
// red shirt in medium
// red shirt in large
// blue shirt in small
// blue shirt in medium
// blue shirt in large
```

**How it works:**

1. Outer loop runs for each shirt color (red, then blue)
2. For each color, inner loop runs through all sizes
3. This creates every possible combination

### Example 2: Mixing Attributes

```javascript
let fruits = ["apple", "banana"];
let colors = ["green", "yellow", "red"];

// Go through each fruit
for (let i = 0; i < fruits.length; i++) {
    // Go through each color
    for (let j = 0; j < colors.length; j++) {
        // Display the color and fruit combination
        console.log(colors[j] + " " + fruits[i]);
    }
}

// Output:
// green apple
// yellow apple
// red apple
// green banana
// yellow banana
// red banana
```

### Example 3: Travel Planning

```javascript
let states = ["KL", "Sabah", "Sarawak"];
let activities = ["sightseeing", "dining", "shopping"];

// Go through each state
for (let i = 0; i < states.length; i++) {
    // Go through each activity
    for (let j = 0; j < activities.length; j++) {
        // Display the state and activity
        console.log("In " + states[i] + ", you can enjoy " + activities[j]);
    }
}

// Output:
// In KL, you can enjoy sightseeing
// In KL, you can enjoy dining
// In KL, you can enjoy shopping
// ... and so on for each state
```

### Example 4: Mathematical Operations

```javascript
let numbers1 = [1, 2];
let numbers2 = [10, 20];

// Go through each number in numbers1
for (let i = 0; i < numbers1.length; i++) {
    // Go through each number in numbers2
    for (let j = 0; j < numbers2.length; j++) {
        // Calculate the sum of the two numbers
        let sum = numbers1[i] + numbers2[j];
        // Display the result
        console.log(numbers1[i] + " + " + numbers2[j] + " = " + sum);
    }
}

// Output:
// 1 + 10 = 11
// 1 + 20 = 21
// 2 + 10 = 12
// 2 + 20 = 22
```

### Example 5: Multiplication Table

```javascript
let a = [2, 3];
let b = [4, 5];

// Go through each number in array a
for (let i = 0; i < a.length; i++) {
    // Go through each number in array b
    for (let j = 0; j < b.length; j++) {
        // Calculate the product of a[i] and b[j]
        let product = a[i] * b[j];

        // Display the multiplication result
        console.log(a[i] + " * " + b[j] + " = " + product);
    }
}

// Output:
// 2 * 4 = 8
// 2 * 5 = 10
// 3 * 4 = 12
// 3 * 5 = 15
```

### Example 6: Multi-Dimensional Arrays

**Arrays of Arrays**

Let's say we have a school with multiple classrooms, each containing an array of student names. We can use nested loops to process this data:

```javascript
let classrooms = [
    ["Alice", "Bob", "Charlie"], // Class 1 - classrooms[0]
    ["David", "Eva"], // Class 2  classrooms[1])
    ["Frank"], // Class 3 - classrooms[2]
    ["Grace", "Hannah", "Ian"], // Class 4 classrooms[3]
];
```

**Accessing Students in a classroom**

```javascript
classrooms[0][0] would access "Alice"
// classrooms[0] accesses the first Class in the classrooms array
// classrooms[0][0] accesses the first student in that Class

classrooms[3][2] would access "Ian"
// classrooms[3] accesses the fourth Class in the classrooms array
// classrooms[3][2] accesses the third student in that Class

classrooms[1][1] would access "Eva"
// classrooms[1] accesses the second Class in the classrooms array
// classrooms[1][1] accesses the second student in that Class
```

**Key Concept:**
`classrooms[i]` gives us an individual classroom array,
then `classrooms[i][j]` gives us a specific student.

### Example 7: Working with Multi-Dimensional Arrays

Let's process each student in our classrooms array using nested loops. Display each student's name along with their class number:

```javascript
let classrooms = [
    ["Alice", "Bob", "Charlie"], // Class 1
    ["David", "Eva"], // Class 2
    ["Frank"], // Class 3
    ["Grace", "Hannah", "Ian"], // Class 4
];

// Go through each classroom
for (let i = 0; i < classrooms.length; i++) {
    // Go through each student in that class
    for (let j = 0; j < classrooms[i].length; j++) {
        // Display the class number and student name
        console.log("Class " + (i + 1) + " student: " + classrooms[i][j]);
    }
}

// Output:
// Class 1 student: Alice
// Class 1 student: Bob
// Class 1 student: Charlie
// Class 2 student: David
// Class 2 student: Eva
// Class 3 student: Frank
// Class 4 student: Grace
// Class 4 student: Hannah
// Class 4 student: Ian
```

# Example 8: Reverse of Example 7

Console log the student names in reverse order:

```javascript
// Go through each classroom in reverse
for (let i = classrooms.length - 1; i >= 0; i--) {
    // Go through each student in that class in reverse
    for (let j = classrooms[i].length - 1; j >= 0; j--) {
        // Display the class number and student name
        console.log("Class " + (i + 1) + " student: " + classrooms[i][j]);
    }
}

// Output:
// Class 4 student: Ian
// Class 4 student: Hannah
// Class 4 student: Grace
// Class 3 student: Frank
// Class 2 student: Eva
// Class 2 student: David
// Class 1 student: Charlie
// Class 1 student: Bob
// Class 1 student: Alice
```

### Exercise 8: Search for a Student

```javascript
let classrooms = [
    ["Alice", "Bob", "Charlie"], // Class 1
    ["David", "Eva"], // Class 2
    ["Frank"], // Class 3
    ["Grace", "Hannah", "Ian"], // Class 4
];

function search(name) {
    // Go through each classroom
    for (let i = 0; i < classrooms.length; i++) {
        // Go through each student in that class
        for (let j = 0; j < classrooms[i].length; j++) {
            // Check if the student name matches
            if (classrooms[i][j] === name) {
                // If found, display the class number
                console.log(name + " found in Class " + (i + 1));

                // Exit the function after finding the student
                return;
            }
        }
    }

    // If not found, display a message
    console.log(name + " not found in any class.");
}

// Test the search function
search("Charlie"); // Output: Charlie found in Class 1
search("David"); // Output: David found in Class 2
search("Zoe"); // Output: Zoe not found in any class.
search("Karel"); // Output: Karel not found in any class.
```

---

## Summary

You've learned several powerful loop patterns:

-   **Basic iteration**: Processing each array element
-   **Custom starting points**: Skipping elements or starting from specific positions
-   **Variable step sizes**: Processing every nth element or going backwards
-   **Numeric processing**: Calculating totals and working with mathematical data
-   **Nested loops**: Creating combinations and processing multi-dimensional data

These patterns form the foundation for more complex programming tasks. Practice with different arrays and scenarios to strengthen your understanding!

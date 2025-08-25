# Array Methods: Working with Lists in JavaScript

## What Are Array Methods?

Array methods are built-in functions that help you work with arrays (lists). They let you add items, remove items, find things, and transform your data without writing complex loops.

We already learned about some array methods in previous documents, but there are many more built-in methods (functions) to work with arrays. Here we'll cover the most commonly used ones because these methods are essential in JavaScript, and it's important to get comfortable with them.

The code might seem a bit "alien" for now, but don't worry, we'll be using these methods throughout the course, and you'll get used to them quickly.

```javascript
const fruits = ["apple", "banana", "orange"];

// These are all array methods:
console.log(fruits.length); // 3 (property, not method)
fruits.push("grape"); // Add to end
console.log(fruits.join(", ")); // "apple, banana, orange, grape"
```

---

## Basic Array Information

### `.length` - Get Array Size
```javascript
const colors = ["red", "blue", "green"];
const numbers = [1, 2, 3, 4, 5];
const empty = [];

console.log(colors.length); // 3
console.log(numbers.length); // 5
console.log(empty.length); // 0

// Useful for validation
const userList = ["Alice", "Bob"];
if (userList.length === 0) {
    console.log("No users found");
} else {
    console.log("Found " + userList.length + " users"); // "Found 2 users"
}
```

---

## Adding Items to Arrays

### `.push()` - Add to the End
```javascript
const animals = ["cat", "dog"];

animals.push("bird"); // Returns new length (3)
console.log(animals); // ["cat", "dog", "bird"]

animals.push("fish", "rabbit"); // Can add multiple items
console.log(animals); // ["cat", "dog", "bird", "fish", "rabbit"]

// Common use: building lists
const shoppingCart = [];
shoppingCart.push("milk");
shoppingCart.push("bread");
console.log(shoppingCart); // ["milk", "bread"]
```

### `.unshift()` - Add to the Beginning
```javascript
const numbers = [2, 3, 4];

numbers.unshift(1); // Returns new length (4)
console.log(numbers); // [1, 2, 3, 4]

numbers.unshift(-1, 0); // Can add multiple items
console.log(numbers); // [-1, 0, 1, 2, 3, 4]

// Common use: priority lists
const tasks = ["homework", "dinner"];
tasks.unshift("urgent task"); // Add to front
console.log(tasks); // ["urgent task", "homework", "dinner"]
```

---

## Removing Items from Arrays

### `.pop()` - Remove from the End
```javascript
const fruits = ["apple", "banana", "orange"];

const lastFruit = fruits.pop(); // Returns the removed item
console.log(lastFruit); // "orange"
console.log(fruits); // ["apple", "banana"]

// What happens with empty arrays?
const empty = [];
console.log(empty.pop()); // undefined (no error)
```

### `.shift()` - Remove from the Beginning
```javascript
const colors = ["red", "blue", "green"];

const firstColor = colors.shift(); // Returns the removed item
console.log(firstColor); // "red"
console.log(colors); // ["blue", "green"]

// Common pattern: processing queues
const queue = ["first", "second", "third"];
while (queue.length > 0) {
    const next = queue.shift();
    console.log("Processing: " + next);
}
// Output:
// Processing: first
// Processing: second  
// Processing: third
```

---

## Advanced Adding/Removing

### `.splice()` - Add/Remove from Anywhere
```javascript
const letters = ["a", "b", "c", "d", "e"];

// Remove items: splice(startIndex, howMany)
const removed = letters.splice(1, 2); // Remove 2 items starting at index 1
console.log(removed); // ["b", "c"] (what was removed)
console.log(letters); // ["a", "d", "e"] (what's left)

// Add items: splice(startIndex, 0, newItems...)
const numbers = [1, 2, 5, 6];
numbers.splice(2, 0, 3, 4); // Add 3,4 at index 2, remove 0 items
console.log(numbers); // [1, 2, 3, 4, 5, 6]

// Replace items: splice(startIndex, howMany, newItems...)
const names = ["Alice", "Bob", "Charlie"];
names.splice(1, 1, "Betty"); // Replace 1 item at index 1 with "Betty"
console.log(names); // ["Alice", "Betty", "Charlie"]
```

---

## Converting Arrays to Strings

### `.join()` - Combine into String
```javascript
const words = ["Hello", "World", "JavaScript"];
const fruits = ["apple", "banana", "orange"];

console.log(words.join(" ")); // "Hello World JavaScript"
console.log(fruits.join(", ")); // "apple, banana, orange"  
console.log(fruits.join(" - ")); // "apple - banana - orange"
console.log(fruits.join("")); // "applebananaorange"

// Default separator is comma
console.log(fruits.join()); // "apple,banana,orange"

// Common use: creating sentences
const adjectives = ["big", "red", "fast"];
const sentence = "The " + adjectives.join(", ") + " car.";
console.log(sentence); // "The big, red, fast car."
```

---

## Getting Parts of Arrays

### `.slice()` - Copy Part of Array
```javascript
const numbers = [1, 2, 3, 4, 5, 6, 7];

console.log(numbers.slice(2, 5)); // [3, 4, 5] (from index 2 to 5, not including 5)
console.log(numbers.slice(3)); // [4, 5, 6, 7] (from index 3 to end)
console.log(numbers.slice(-3)); // [5, 6, 7] (last 3 items)
console.log(numbers.slice(-5, -2)); // [3, 4, 5] (negative indices)

// Original array is unchanged!
console.log(numbers); // [1, 2, 3, 4, 5, 6, 7]

// Common use: pagination
const allItems = ["item1", "item2", "item3", "item4", "item5"];
const page1 = allItems.slice(0, 2); // First 2 items
const page2 = allItems.slice(2, 4); // Next 2 items
console.log(page1); // ["item1", "item2"]
console.log(page2); // ["item3", "item4"]
```

---

## Finding Items in Arrays

### `.indexOf()` - Find Position of Item
```javascript
const colors = ["red", "blue", "green", "blue"];

console.log(colors.indexOf("blue")); // 1 (first occurrence)
console.log(colors.indexOf("green")); // 2
console.log(colors.indexOf("yellow")); // -1 (not found)

// Check if item exists
const fruits = ["apple", "banana", "orange"];
if (fruits.indexOf("apple") !== -1) {
    console.log("Apple is in the list!"); // This will run
}

// Find starting from a position
console.log(colors.indexOf("blue", 2)); // 3 (start searching from index 2)
```

### `.includes()` - Check if Item Exists (True/False)
```javascript
const animals = ["cat", "dog", "bird", "fish"];

console.log(animals.includes("dog")); // true
console.log(animals.includes("elephant")); // false

// More readable than indexOf
const userPermissions = ["read", "write", "delete"];
if (userPermissions.includes("write")) {
    console.log("User can write files"); // This will run
}

// Case sensitive!
const names = ["Alice", "Bob", "Charlie"];
console.log(names.includes("alice")); // false (lowercase 'a')
console.log(names.includes("Alice")); // true
```

---

## Advanced Array Methods with Arrow Functions

### `.forEach()` - Execute Function for Each Element
Executes a provided function once for each array element.

```javascript
const fruits = ["apple", "banana", "cherry"];
fruits.forEach((fruit) => {
    console.log(fruit);
});
// Output:
// apple
// banana
// cherry

// With index
const colors = ["red", "blue", "green"];
colors.forEach((color, index) => {
    console.log(index + ": " + color);
});
// Output:
// 0: red
// 1: blue
// 2: green
```

### `.map()` - Transform Each Element
Creates a new array populated with the results of calling a provided function on every element in the calling array.

```javascript
const numbers = [1, 2, 3, 4];
const doubled = numbers.map((num) => num * 2);
console.log(doubled); // [2, 4, 6, 8]

// Transform strings
const names = ["alice", "bob", "charlie"];
const upperNames = names.map((name) => name.toUpperCase());
console.log(upperNames); // ["ALICE", "BOB", "CHARLIE"]
```

### `.filter()` - Keep Only Elements That Pass a Test
Creates a new array with all elements that pass the test implemented by the provided function.

```javascript
const numbers = [1, 2, 3, 4, 5];
const evenNumbers = numbers.filter((num) => num % 2 === 0);
console.log(evenNumbers); // [2, 4]

// Filter objects
const people = [
    { name: "Alice", age: 25 },
    { name: "Bob", age: 17 },
    { name: "Charlie", age: 30 }
];
const adults = people.filter((person) => person.age >= 18);
console.log(adults); // [{ name: "Alice", age: 25 }, { name: "Charlie", age: 30 }]
```

### `.find()` - Find First Element That Matches
Returns the value of the first element in the array that satisfies the provided testing function. Otherwise, it returns `undefined`.

```javascript
const numbers = [1, 2, 3, 4, 5];
const firstEven = numbers.find((num) => num % 2 === 0);
console.log(firstEven); // 2

// Find object
const users = [
    { name: "Alice", id: 1 },
    { name: "Bob", id: 2 },
    { name: "Charlie", id: 3 }
];
const user = users.find((user) => user.name === "Bob");
console.log(user); // { name: "Bob", id: 2 }
```

### `.reduce()` - Reduce Array to Single Value
Executes a reducer function on each element of the array, resulting in a single output value.

```javascript
const numbers = [1, 2, 3, 4];
const sum = numbers.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
console.log(sum); // 10

// Find maximum
const scores = [85, 92, 78, 96, 88];
const highest = scores.reduce((max, current) => current > max ? current : max, 0);
console.log(highest); // 96
```

---

## Array Sorting and Ordering

### `.sort()` - Sort Elements
Sorts the elements of an array in place and returns the sorted array.

```javascript
const fruits = ["banana", "apple", "cherry"];
fruits.sort();
console.log(fruits); // ["apple", "banana", "cherry"]

// Sort numbers (need custom function)
const numbers = [10, 5, 40, 25, 1000, 1];
numbers.sort((a, b) => a - b); // Ascending order
console.log(numbers); // [1, 5, 10, 25, 40, 1000]
```

### `.reverse()` - Reverse Array Order
Reverses the elements of an array in place.

```javascript
const fruits = ["apple", "banana", "cherry"];
fruits.reverse();
console.log(fruits); // ["cherry", "banana", "apple"]

// Combine with sort for descending order
const numbers = [3, 1, 4, 1, 5];
numbers.sort((a, b) => a - b).reverse();
console.log(numbers); // [5, 4, 3, 1, 1]
```

---

## Real-World Examples

### Example 1: Shopping Cart
```javascript
const cart = [];

// Adding items
cart.push("laptop");
cart.push("mouse");  
cart.push("keyboard");
console.log("Cart: " + cart.join(", ")); // "Cart: laptop, mouse, keyboard"

// Removing last item (user changed mind)
const removed = cart.pop();
console.log("Removed: " + removed); // "Removed: keyboard"
console.log("Cart: " + cart.join(", ")); // "Cart: laptop, mouse"

// Check if item already in cart
if (!cart.includes("webcam")) {
    cart.push("webcam");
}
console.log("Final cart: " + cart.join(", ")); // "Final cart: laptop, mouse, webcam"
```

### Example 2: Student Grade Processing
```javascript
const students = [
    { name: "Alice", grade: 85 },
    { name: "Bob", grade: 92 },
    { name: "Charlie", grade: 78 },
    { name: "Diana", grade: 96 }
];

// Find all students with grade > 80
const topStudents = students.filter(student => student.grade > 80);
console.log("Top students:", topStudents);

// Get just the names of top students
const topNames = topStudents.map(student => student.name);
console.log("Top student names: " + topNames.join(", "));

// Calculate average grade
const average = students.reduce((sum, student) => sum + student.grade, 0) / students.length;
console.log("Average grade:", average); // 87.75
```

### Example 3: Data Processing
```javascript
const csvData = "John,25,Engineer;Mary,30,Designer;Bob,28,Developer";

// Split into individual records
const records = csvData.split(";"); // ["John,25,Engineer", "Mary,30,Designer", "Bob,28,Developer"]

// Process each record
const people = [];
records.forEach(record => {
    const parts = record.split(","); // ["John", "25", "Engineer"]
    people.push({
        name: parts[0],
        age: parseInt(parts[1]), 
        job: parts[2]
    });
});

// Sort by age
people.sort((a, b) => a.age - b.age);
console.log("People sorted by age:", people);
```

---

## Array Methods vs Loops

Many array methods can replace common loops:

```javascript
const numbers = [1, 2, 3, 4, 5];

// OLD WAY: Using for loop to join
let result = "";
for (let i = 0; i < numbers.length; i++) {
    result += numbers[i];
    if (i < numbers.length - 1) {
        result += ", ";
    }
}
console.log(result); // "1, 2, 3, 4, 5"

// NEW WAY: Using join()
console.log(numbers.join(", ")); // "1, 2, 3, 4, 5"

// OLD WAY: Using for loop to double numbers
const doubled = [];
for (let i = 0; i < numbers.length; i++) {
    doubled.push(numbers[i] * 2);
}

// NEW WAY: Using map()
const doubled2 = numbers.map(num => num * 2);
```

---

## Methods That Change vs Don't Change Arrays

**Methods that CHANGE the original array:**
- `.push()` - adds to end
- `.pop()` - removes from end  
- `.unshift()` - adds to beginning
- `.shift()` - removes from beginning
- `.splice()` - adds/removes anywhere
- `.sort()` - sorts in place
- `.reverse()` - reverses in place

**Methods that DON'T change the original array:**
- `.slice()` - returns new array with copied parts
- `.join()` - returns string
- `.indexOf()` - returns number
- `.includes()` - returns true/false
- `.map()` - returns new transformed array
- `.filter()` - returns new filtered array
- `.find()` - returns found element
- `.reduce()` - returns single value

```javascript
const original = [1, 2, 3];

// These change original:
original.push(4); // original is now [1, 2, 3, 4]
original.sort(); // original is now sorted

// These don't change original:
const copy = original.slice(1, 3); // [2, 3]
const doubled = original.map(x => x * 2); // [2, 4, 6, 8]
console.log(original); // Still [1, 2, 3, 4]
```

---

## Most Useful Array Methods Summary

**Basic Methods:**
1. **`.length`** - Get array size (property)
2. **`.push()`** - Add to end
3. **`.pop()`** - Remove from end
4. **`.unshift()`** - Add to beginning
5. **`.shift()`** - Remove from beginning
6. **`.splice()`** - Add/remove from anywhere
7. **`.slice()`** - Copy part of array
8. **`.join()`** - Convert to string
9. **`.indexOf()`** - Find position of item
10. **`.includes()`** - Check if item exists

**Advanced Methods:**
11. **`.forEach()`** - Execute function for each element
12. **`.map()`** - Transform each element
13. **`.filter()`** - Keep elements that pass test
14. **`.find()`** - Find first element that matches
15. **`.reduce()`** - Reduce to single value
16. **`.sort()`** - Sort elements
17. **`.reverse()`** - Reverse order

---

## When to Use Each Method

### Use basic methods when:
- **`.push()`** - Adding items to the end of lists
- **`.pop()`** - Implementing undo functionality
- **`.shift()/.unshift()`** - Processing queues or priority lists
- **`.splice()`** - Removing specific items by position
- **`.slice()`** - Creating copies of parts of arrays
- **`.join()`** - Converting arrays to strings for display

### Use advanced methods when:
- **`.forEach()`** - Need to do something with each item (no return value needed)
- **`.map()`** - Transforming every element in an array
- **`.filter()`** - Keeping only items that meet certain criteria
- **`.find()`** - Looking for the first item that matches
- **`.reduce()`** - Calculating totals, averages, or combining data
- **`.sort()`** - Ordering data alphabetically or numerically

Remember: Some methods change the original array, others create new arrays!
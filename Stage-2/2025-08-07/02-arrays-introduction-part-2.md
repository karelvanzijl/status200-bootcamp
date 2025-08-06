# Arrays Introduction Part 2

Yesterday we learned about arrays and how they can hold multiple items in a single variable.

We learned how to:

-   Create an array
-   Access items in an array
-   Add items to an array, `push()`
-   Remove the last item from an array, `pop()`
-   Find the length of an array, `length`
-   Change an item in an array

Today, we're going to add a bit more to our knowledge of arrays.

## Quick Reminder

> **$Note$:** In JavaScript we can store **any type of variable** in an array. This means you can have an array that holds _strings_, _numbers_, _booleans_, or even other _arrays_.

For example, the following arays are all valid:

```javascript
// Array of strings
let myArray1 = ["apple", "banana", "cherry"];

// Array of numbers
let myArray2 = [1, 2, 3, 4, 5]; // Array of numbers

// Array of booleans
let myArray3 = [true, false, true];

// Mixed array with different types
let myArray4 = [1, "apple", true];

// Array of arrays (2D array)
let myArray5 = [
    [1, 2],
    [3, 4],
    [5, 6],
];

// Array with mixed types including another array
let myArray6 = ["apple", 1, true, [2, 3]];

// See it yourself by logging them to the console
console.log("Array of strings", myArray1);
console.log("Array of numbers", myArray2);
console.log("Array of booleans", myArray3);
console.log("Mixed array", myArray4);
console.log("Array of arrays", myArray5);
console.log("Mixed types including another array", myArray6);
```

##### How cool is that? 😎

## Array Methods

JavaScript provides many built-in methods (functions) to work with arrays. These methods allow you to manipulate arrays in various ways, such as adding, removing, or searching for items. We've already seen a few methods like `push()` and `pop()`, but there are many more to explore.

Here are some commonly used array methods:

-   **`push()`**: Adds one or more items to the end of an array.
-   **`pop()`**: Removes the last item from an array and returns it.
-   **`indexOf()`**: Returns the index of the first occurrence of a specified item in an array.
-   **`shift()`**: Removes the first item from an array and returns it.
-   **`unshift()`**: Adds one or more items to the beginning of an array.
-   **`splice()`**: Adds or removes items from an array at a specific index.

### `push()` method

The `push()` method **adds one or more items** to the end of an array. It modifies the original array and returns the new length of the array.

```javascript
let fruits = ["apple", "banana"];

// Adding a single item
fruits.push("cherry"); // Adds "cherry" to the end
console.log(fruits); // ["apple", "banana", "cherry"]

// Adding multiple items
fruits.push("orange", "grape"); // Adds "orange" and "grape"
console.log(fruits); // ["apple", "banana", "cherry", "orange", "grape"]
```

### `pop()` method

The `pop()` method **removes the last item** from an array and returns it. It modifies the original array.

```javascript
let fruits = ["apple", "banana", "cherry"];
let lastFruit = fruits.pop(); // Removes "cherry"
console.log(lastFruit); // "cherry"
console.log(fruits); // ["apple", "banana"]
```

if you don't need the removed item, you can simply call `pop()` without storing the result:

```javascript
let fruits = ["apple", "banana", "cherry"];
fruits.pop(); // Removes "cherry" without storing it
console.log(fruits); // ["apple", "banana"]
```

### `indexOf()` method

The `indexOf()` method **returns the index** of the first occurrence of a specified item in an array. If the item is not found, it returns -1.

```javascript
let fruits = ["apple", "banana", "cherry"];

let index = fruits.indexOf("banana"); // Returns 1
console.log(index); // 1

index = fruits.indexOf("orange"); // Not found, returns -1
console.log(index); // -1
```

### `shift()` method

The `shift()` method **removes the first item** from an array and returns it. It modifies the original array.

```javascript
let fruits = ["apple", "banana", "cherry"];
let firstFruit = fruits.shift(); // Removes "apple"
console.log(firstFruit); // "apple"
console.log(fruits); // ["banana", "cherry"]
```

### `unshift()` method

The `unshift()` method **adds one or more items** to the beginning of an array. It modifies the original array and returns the new length of the array.

```javascript
let fruits = ["banana", "cherry"];

// Adding a single item
fruits.unshift("apple"); // Adds "apple" to the beginning
console.log(fruits); // ["apple", "banana", "cherry"]

// Adding multiple items
fruits.unshift("orange", "grape"); // Adds "orange" and "grape"
console.log(fruits); // ["orange", "grape", "apple", "banana", "cherry"]
```

### `splice()` method

The `splice()` method can be used to **add or remove items** from an array at a specific index. It modifies the original array and can take multiple arguments.

Example: removing one or more items

```javascript
let fruits = ["apple", "banana", "cherry", "orange", "grape", "kiwi"];

// Removing one item
fruits.splice(2, 1); // Removes "cherry" at index 2
console.log(fruits); // ["apple", "banana", "orange", "grape", "kiwi"]

// Removing multiple items (that are next to each other)
fruits.splice(1, 3); // Removes "banana", "orange", and "grape" starting from index 1
console.log(fruits); // ["apple", "kiwi"]
```

Example: adding one or more items

```javascript
let fruits = ["apple", "banana", "kiwi"];

// Adding one item at index 1
fruits.splice(1, 0, "orange"); // Adds "orange" at index 1
console.log(fruits); // ["apple", "orange", "banana", "kiwi"]

// Adding multiple items at index 2
fruits.splice(2, 0, "grape", "mango"); // Adds "grape" and "mango" at index 2
console.log(fruits); // ["apple", "orange", "grape", "mango", "banana", "kiwi"]
```

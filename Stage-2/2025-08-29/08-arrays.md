# Arrays

-   [What is an Array?](#what-is-an-array)
-   [Creating Arrays](#creating-arrays)
-   [Accessing Array Elements](#accessing-array-elements)
-   [Modifying Arrays](#modifying-arrays)
-   [Common Array Methods](#common-array-methods)
-   [More Info](#more-info)

---

# What is an Array?

In JavaScript, an array is a special type of object that is used to store multiple values in a single variable. Arrays are ordered collections of items, where each item can be of any data type, including numbers, strings, objects, or even other arrays. Each item in an array is called an element, and each element has a numeric index that represents its position in the array, starting from 0.

Arrays are defined using square brackets `[]`, with elements separated by commas.

```javascript
const fruits = ["Apple", "Banana", "Orange"];
console.log(fruits);
```

---

# Creating Arrays

You can create an array using array literal syntax. Here are some examples of creating arrays with different types of elements:

```javascript
const numbers = [1, 2, 3, 4, 5];
const emptyArray = [];

console.log(numbers);
console.log(emptyArray);
```

**You can add any Data Type as a property value**, including strings, numbers, booleans, objects and other arrays.

```javascript
const students = [
    {
        name: "Alice",
        age: 22,
        courses: ["Math", "Science", "History"],
    },
    {
        name: "Bob",
        age: 24,
        courses: ["English", "Art", "Physical Education"],
    },
];
console.log(students);
```

---

# Accessing Array Elements

You can access elements in an array using their index. **The index of the first element is 0**, the second element is 1, and so on. You can use bracket notation `[]` to access elements by their index.

```javascript
const fruits = ["Apple", "Banana", "Orange"];

console.log(fruits[0]); // Output: Apple
console.log(fruits[1]); // Output: Banana
console.log(fruits[2]); // Output: Orange
```

You can also access the last element of an array using the `length` property:

```javascript
console.log(fruits[fruits.length - 1]); // Output: Orange
```

---

# Modifying Arrays

You can modify elements in an array by assigning a new value to a specific index.

```javascript
const fruits = ["Apple", "Banana", "Orange"];
fruits[1] = "Grapes"; // Change "Banana" to "Grapes"
console.log(fruits); // Output: ["Apple", "Grapes", "Orange"]
```

You can also add new elements to an array by assigning a value to an index that is equal to the current length of the array:

```javascript
fruits[fruits.length] = "Mango"; // Add "Mango" to the end of the array
console.log(fruits); // Output: ["Apple", "Grapes", "Orange", "Mango"]
```

Or use the `push` method to add elements to the end of an array:

```javascript
fruits.push("Pineapple");
console.log(fruits); // Output: ["Apple", "Grapes", "Orange", "Mango", "Pineapple"]
```

---

# Common Array Methods

JavaScript provides several built-in methods to work with arrays. Here are some commonly used array methods:

-   `push(element)`: Adds an element to the end of the array.
-   `pop()`: Removes and returns the last element of the array.
-   `shift()`: Removes and returns the first element of the array.
-   `unshift(element)`: Adds an element to the beginning of the array.
-   `indexOf(element)`: Returns the index of the first occurrence of the element in the array, or -1 if not found.
-   `slice(start, end)`: Returns a shallow copy of a portion of the array from `start` to `end` (not including `end`).
-   `splice(start, deleteCount, item1, item2, ...)`: Changes the contents of an array by removing or replacing existing elements and/or adding new elements.

```javascript
const fruits = ["Apple", "Banana", "Orange"];

fruits.push("Grapes"); // Add "Grapes" to the end
console.log(fruits); // Output: ["Apple", "Banana", "Orange", "Grapes"]

const lastFruit = fruits.pop(); // Remove the last element
console.log(lastFruit); // Output: Grapes
console.log(fruits); // Output: ["Apple", "Banana", "Orange"]

fruits.unshift("Mango"); // Add "Mango" to the beginning
console.log(fruits); // Output: ["Mango", "Apple", "Banana", "Orange"]

const firstFruit = fruits.shift(); // Remove the first element
console.log(firstFruit); // Output: Mango
console.log(fruits); // Output: ["Apple", "Banana", "Orange"]

const index = fruits.indexOf("Banana"); // Find the index of "Banana"
console.log(index); // Output: 1

const citrusFruits = fruits.slice(1, 3); // Get a portion of the array
console.log(citrusFruits); // Output: ["Banana", "Orange"]

fruits.splice(1, 1, "Kiwi", "Pineapple"); // Replace "Banana" with "Kiwi" and "Pineapple"
console.log(fruits); // Output: ["Apple", "Kiwi", "Pineapple", "Orange"]

fruits.splice(2, 1); // Remove "Pineapple"
console.log(fruits); // Output: ["Apple", "Kiwi", "Orange"]
```

We also covered these Array methods during the weekend session:

-   `forEach(callback)`: Executes a provided function once for each array element.
-   `map(callback)`: Creates a new array populated with the results of calling a provided function on every element in the calling array.
-   `filter(callback)`: Creates a new array with all elements that pass the test implemented by the provided function.
-   `reduce(callback, initialValue)`: Executes a reducer function on each element of the array, resulting in a single output value.
-   `find(callback)`: Returns the value of the first element in the array that satisfies the provided testing function.

```javascript
const numbers = [1, 2, 3, 4, 5];

// forEach
numbers.forEach((num) => {
    console.log(num * 2); // Output: 2, 4, 6, 8, 10
});

// map
const doubled = numbers.map((num) => num * 2);
console.log(doubled); // Output: [2, 4, 6, 8, 10]

// filter
const evenNumbers = numbers.filter((num) => num % 2 === 0);
console.log(evenNumbers); // Output: [2, 4]

// reduce
const sum = numbers.reduce((accumulator, current) => accumulator + current, 0);
console.log(sum); // Output: 15

// find
const firstEven = numbers.find((num) => num % 2 === 0);
console.log(firstEven); // Output: 2
```

---

## More Info

[Array Methods](../2025-08-25/02-arrays-methods.md)

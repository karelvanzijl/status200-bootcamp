# Arrays Methods

JavaScript offers built-in methods (functions) to work with arrays, allowing us to manipulate and access data easily. Some of these we already used.

In this document we'll mention some of the most commonly used methods for arrays and objects, and how to work with them.

> It's up to you to practice these methods and get comfortable with them.

## Array Methods

### `length` property

##### Returns the number of items in an array.

```javascript
let fruits = ["apple", "banana", "cherry"];
console.log(fruits.length); // Output: 3
```

### `push()` method

##### Adds one or more items to the end of an array.

```javascript
let fruits = ["apple", "banana"];
fruits.push("cherry"); // Adds "cherry" to the end
console.log(fruits); // ["apple", "banana", "cherry"]
```

### `pop()` method

##### Removes the last item from an array and returns it.

```javascript
let fruits = ["apple", "banana", "cherry"];
let lastFruit = fruits.pop(); // Removes "cherry"
console.log(lastFruit); // "cherry"
console.log(fruits); // ["apple", "banana"]
```

### `indexOf()` method

##### Returns the index of the first occurrence of a specified item in an array, or -1 if not found.

```javascript
let fruits = ["apple", "banana", "cherry"];

let index = fruits.indexOf("banana"); // Found, returns 1
console.log(index); // 1

index = fruits.indexOf("orange"); // Not found, returns -1
console.log(index); // -1
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

### `shift()` method

##### Removes the first item from an array and returns it. This method modifies the original array.

```javascript
let fruits = ["apple", "banana", "cherry"];
let firstFruit = fruits.shift(); // Removes "apple"
console.log(firstFruit); // "apple"
console.log(fruits); // ["banana", "cherry"]
```

### `splice()` method

##### Adds or removes items from an array at a specified index.

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

### `slice()` method

##### Returns a shallow copy of a portion of an array into a new array.

```javascript
let fruits = ["apple", "banana", "cherry", "orange", "grape", "kiwi"];
let slicedFruits = fruits.slice(1, 4); // Gets items from index 1 to 3 (not including index 4)
console.log(slicedFruits); // // ["banana", "cherry", "orange"]

// Original array remains unchanged
console.log(fruits); // ["apple", "banana", "cherry", "orange", "grape", "kiwi"]
```

---

### `forEach()` method

##### Executes a provided function once for each array element.

```javascript
let fruits = ["apple", "banana", "cherry"];
fruits.forEach((fruit) => {
    console.log(fruit);
});
// Output:
// apple
// banana
// cherry
```

### `map()` method

##### Creates a new array populated with the results of calling a provided function on every element in the calling array.

```javascript
let numbers = [1, 2, 3, 4];
let doubled = numbers.map((num) => num * 2);
console.log(doubled); // Output: [2, 4, 6, 8]
```

### `filter()` method

##### Creates a new array with all elements that pass the test implemented by the provided function.

```javascript
let numbers = [1, 2, 3, 4, 5];
let evenNumbers = numbers.filter((num) => num % 2 === 0);
console.log(evenNumbers); // Output: [2, 4]
```

### `find()` method

##### Returns the value of the first element in the array that satisfies the provided testing function. Otherwise, it returns `undefined`.

```javascript
let numbers = [1, 2, 3, 4, 5];
let firstEven = numbers.find((num) => num % 2 === 0);
console.log(firstEven); // Output: 2
```

### `reduce()` method

##### Executes a reducer function on each element of the array, resulting in a single output value.

```javascript
let numbers = [1, 2, 3, 4];
let sum = numbers.reduce(
    (accumulator, currentValue) => accumulator + currentValue,
    0
);
console.log(sum); // Output: 10
```

### `sort()` method

##### Sorts the elements of an array in place and returns the sorted array.

```javascript
let fruits = ["banana", "apple", "cherry"];
fruits.sort();
console.log(fruits); // Output: ["apple", "banana", "cherry"]
```

### `reverse()` method

##### Reverses the elements of an array in place.

```javascript
let fruits = ["apple", "banana", "cherry"];
fruits.reverse();
console.log(fruits); // Output: ["cherry", "banana", "apple"]
```

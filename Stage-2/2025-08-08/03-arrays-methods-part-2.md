# Arrays Methods

We already learned showed some array methods in the previous document, but there are many more built-in methods (functions) to work with arrays.

Here we'll mention some more, because these methods are commonly used in JavaScript, and it's important to get comfortable with them.

The code might seem a bit "alien" for now, but don't worry, we'll be using these methods throughout the course, and you'll get used to them quickly.

## Array Methods

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

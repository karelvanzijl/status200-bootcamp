# Arrow Functions vs Regular Functions

## Syntax Difference

**Regular Function:**
```javascript
function greet(name) {
    return "Hello " + name;
}

// How to call and console.log it:
console.log(greet("World"));  // "Hello World"
console.log(greet("Alice"));  // "Hello Alice"
```

**Arrow Function:**
```javascript
const greet = (name) => {
    return "Hello " + name;
}

// Or shorter:
const greet = name => "Hello " + name;

// How to call and console.log it:
console.log(greet("World"));  // "Hello World"
console.log(greet("Alice"));  // "Hello Alice"
```

## Anonymous Functions

**Anonymous functions** are functions without names. They're very common in JavaScript!

### Regular Anonymous Function
```javascript
// This function has no name
const myFunc = function() {
    return "Hello!";
};

// Used in event handlers
button.onclick = function() {
    alert("Button clicked!");
};

// Used as callbacks
setTimeout(function() {
    console.log("This runs after 2 seconds");
}, 2000);
```

### Arrow Functions (Always Anonymous)
```javascript
// Arrow functions are always anonymous
const myArrowFunc = () => "Hello!";

// Commonly used with array methods
const numbers = [1, 2, 3, 4];
const doubled = numbers.map(function(num) {  // anonymous regular function
    return num * 2;
});

const tripled = numbers.map(num => num * 3); // anonymous arrow function
```

## Basic Examples

### 1. Basic Function
```javascript
// Regular
function add(a, b) {
    return a + b;
}

// Arrow
const add = (a, b) => a + b;

console.log(add(5, 3));  // Both output: 8
```

### 2. Single Parameter (parentheses optional)
```javascript
// Regular
function square(x) {
    return x * x;
}

// Arrow
const square = x => x * x;  // No parentheses needed for single param

console.log(square(4));  // Both output: 16
console.log(square(7));  // Both output: 49
```

### 3. No Parameters
```javascript
// Regular
function sayHi() {
    return "Hi!";
}

// Arrow
const sayHi = () => "Hi!";  // Empty parentheses required

console.log(sayHi());  // Both output: "Hi!"
```

### 4. Multiple Lines
```javascript
// Regular
function processUser(user) {
    console.log("Processing...");
    return user.name.toUpperCase();
}

// Arrow
const processUser = (user) => {
    console.log("Processing...");
    return user.name.toUpperCase();
};

const user = { name: "alice" };
console.log(processUser(user));  // Both output: "ALICE"
```

### 5. Simple Callbacks
```javascript
// Regular function
setTimeout(function() {
    console.log("Timer finished!");
}, 1000);

// Arrow function
setTimeout(() => {
    console.log("Timer finished!");
}, 1000);

// Event handlers
document.getElementById("btn").addEventListener("click", () => {
    alert("Button clicked!");
});
```

### 6. Different Function Types
```javascript
// 1. Regular function
function sayHello(name) {
    return "Hello " + name;
}

// 2. Arrow function (long form)
const sayGoodbye = (name) => {
    return "Goodbye " + name;
}

// 3. Arrow function (short form)
const sayHi = name => "Hi " + name;

// 4. Anonymous function in variable
const sayBye = function(name) {
    return "Bye " + name;
}

// How to call them all:
console.log(sayHello("Alice"));   // "Hello Alice"
console.log(sayGoodbye("Bob"));   // "Goodbye Bob"
console.log(sayHi("Charlie"));    // "Hi Charlie"
console.log(sayBye("David"));     // "Bye David"
```

### 7. Pure Functions
```javascript
// Math operations work perfectly with arrows
const add = (a, b) => a + b;
const multiply = (x, y) => x * y;
const square = num => num * num;

console.log(add(5, 3));      // 8
console.log(multiply(4, 7)); // 28
console.log(square(4));      // 16
```

### 8. String Processing
```javascript
const names = ["john doe", "jane smith", "bob wilson"];

// Arrow function for processing
const formatted = names.map(name => {
    const words = name.split(" ");
    return words.map(word => 
        word.charAt(0).toUpperCase() + word.slice(1)
    ).join(" ");
});

console.log(formatted); // ["John Doe", "Jane Smith", "Bob Wilson"]
```

## Array Methods vs Loops

Instead of writing loops, we can use array methods with arrow functions! They're cleaner and easier to read.

### Instead of `for` loops, use `.map()`
```javascript
const numbers = [1, 2, 3, 4, 5];

// OLD WAY: Using for loop
const doubled = [];
for (let i = 0; i < numbers.length; i++) {
    doubled.push(numbers[i] * 2);
}
console.log(doubled); // [2, 4, 6, 8, 10]

// NEW WAY: Using .map() with arrow function
const doubled2 = numbers.map(num => num * 2);
console.log(doubled2); // [2, 4, 6, 8, 10]
```

### Instead of `for` loops with `if`, use `.filter()`
```javascript
const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

// OLD WAY: Using for loop with if statement
const evens = [];
for (let i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 === 0) {
        evens.push(numbers[i]);
    }
}
console.log(evens); // [2, 4, 6, 8, 10]

// NEW WAY: Using .filter() with arrow function
const evens2 = numbers.filter(num => num % 2 === 0);
console.log(evens2); // [2, 4, 6, 8, 10]
```

### Instead of `for` loops to find something, use `.find()`
```javascript
const students = [
    { name: "John", grade: 85 },
    { name: "Mary", grade: 92 },
    { name: "Bob", grade: 78 }
];

// OLD WAY: Using for loop to find first student with grade > 90
let topStudent = null;
for (let i = 0; i < students.length; i++) {
    if (students[i].grade > 90) {
        topStudent = students[i];
        break; // Stop when we find the first one
    }
}
console.log(topStudent); // { name: "Mary", grade: 92 }

// NEW WAY: Using .find() with arrow function
const topStudent2 = students.find(student => student.grade > 90);
console.log(topStudent2); // { name: "Mary", grade: 92 }
```

### Instead of `for` loops to do something with each item, use `.forEach()`
```javascript
const names = ["Alice", "Bob", "Charlie"];

// OLD WAY: Using for loop to print each name
for (let i = 0; i < names.length; i++) {
    console.log("Hello " + names[i]);
}

// NEW WAY: Using .forEach() with arrow function
names.forEach(name => console.log("Hello " + name));

// Both output:
// Hello Alice
// Hello Bob  
// Hello Charlie
```

### Why Array Methods Are Better:
- **Less code** - no need to manage loop counters or array indices
- **Cleaner** - easier to read and understand
- **Less errors** - no off-by-one mistakes or forgetting to increment
- **More expressive** - the method name tells you what it does

## Array Methods with Arrow Functions

Array methods are perfect for arrow functions! Here's what each method does:

### `.map()` - Transform each item
```javascript
const numbers = [1, 2, 3, 4, 5];

// Regular function
const doubled1 = numbers.map(function(num) {
    return num * 2;
});

// Arrow function (much cleaner!)
const doubled2 = numbers.map(num => num * 2);

console.log(doubled2); // [2, 4, 6, 8, 10]

// More examples:
const names = ["alice", "bob", "charlie"];
const upperNames = names.map(name => name.toUpperCase());
console.log(upperNames); // ["ALICE", "BOB", "CHARLIE"]
```

### `.filter()` - Keep only items that match a condition
```javascript
const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

// Keep only even numbers
const evens = numbers.filter(num => num % 2 === 0);
console.log(evens); // [2, 4, 6, 8, 10]

// Keep only numbers greater than 5
const bigNumbers = numbers.filter(num => num > 5);
console.log(bigNumbers); // [6, 7, 8, 9, 10]

const students = [
    { name: "John", grade: 85 },
    { name: "Mary", grade: 92 },
    { name: "Bob", grade: 78 }
];

// Keep only students with grade > 80
const topStudents = students.filter(student => student.grade > 80);
console.log(topStudents); // John and Mary
```

### `.forEach()` - Do something with each item (no return)
```javascript
const fruits = ["apple", "banana", "orange"];

// Print each fruit
fruits.forEach(fruit => {
    console.log("I like " + fruit);
});
// Output: 
// I like apple
// I like banana  
// I like orange

// With index (position):
fruits.forEach((fruit, index) => {
    console.log(index + ": " + fruit);
});
// Output:
// 0: apple
// 1: banana
// 2: orange
```

### `.find()` - Get the first item that matches
```javascript
const people = [
    { name: "Alice", age: 25 },
    { name: "Bob", age: 30 },
    { name: "Charlie", age: 35 }
];

// Find first person over 28
const adult = people.find(person => person.age > 28);
console.log(adult); // { name: "Bob", age: 30 }

// Find person named Alice
const alice = people.find(person => person.name === "Alice");
console.log(alice); // { name: "Alice", age: 25 }
```

## When to Use Each

### Use Arrow Functions When:
- Writing short, simple functions
- Using array methods (map, filter, forEach, etc.)
- You want cleaner, more concise syntax
- Working with callbacks
- You need anonymous functions for one-time use
- Processing data or doing calculations

### Use Regular Functions When:
- Creating object methods
- Writing event handlers that need to access the element
- You need function hoisting (calling function before it's defined)
- Creating constructor functions
- You need the `arguments` object
- You want to give your function a name for better debugging

### Use Anonymous Functions When:
- Event handlers: `button.onclick = function() { ... }`
- Callbacks: `setTimeout(() => { ... }, 1000)`
- Array methods: `arr.map(item => item * 2)`
- One-time use functions that don't need to be called elsewhere
- You want to avoid polluting the global namespace


## Summary

**Key Rules to Remember:**
1. **Arrow functions are great for most common tasks** - data processing, array methods, callbacks
2. **Anonymous functions** are functions without names - very common in callbacks and event handlers
3. **Arrow functions are always anonymous** - they can't have names like regular functions
4. **Use arrow functions for short, simple operations** and data processing
5. **Use regular functions for object methods** and constructor functions

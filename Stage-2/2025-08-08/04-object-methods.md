# Object Methods

JavaScript offers built-in methods (functions) to work with objetcs, allowing us to manipulate and access data easily.

The code might seem a bit "alien" for now, but don't worry, we'll be using these methods throughout the course, and you'll get used to them quickly.

## Object Methods

### `Object.keys()`

##### Returns an array of the keys (property names) of an object.

```javascript
const person = {
    name: "Alice",
    age: 30,
    isStudent: false,
};
const keys = Object.keys(person);
console.log(keys); // Output: ["name", "age", "isStudent"]
```

### `Object.values()`

##### Returns an array of the values of an object.

```javascript
const person = {
    name: "Alice",
    age: 30,
    isStudent: false,
};
const values = Object.values(person);
console.log(values); // Output: ["Alice", 30, false]
```

### `Object.entries()`

##### Returns an array of key-value pairs of an object.

```javascript
const person = {
    name: "Alice",
    age: 30,
    isStudent: false,
};
const entries = Object.entries(person);
console.log(entries); // Output: [["name", "Alice"], ["age", 30], ["isStudent", false]]
```

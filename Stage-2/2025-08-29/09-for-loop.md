# For Loop

A `for` loop is a control flow statement that allows code to be executed repeatedly based on a condition. It is commonly used to iterate over arrays or perform a set of operations a specific number of times.

It is especially useful when dealing with arrays, as it allows you to access each element in the array one by one.

-   [Syntax](#syntax)
-   [Example](#example)
-   [Looping Through an Array](#looping-through-an-array)
-   [Array with Objects](#array-with-objects)
-   [Nested Loops](#nested-loops)

---

## Syntax

```javascript
for (initialization; condition; increment) {
    // Code to be executed in each iteration
}
```

-   `initialization`: This step is executed once before the loop starts. It is typically used to initialize a counter variable.
-   `condition`: This is a boolean expression that is evaluated before each iteration. If it evaluates to `true`, the loop body is executed. If it evaluates to `false`, the loop terminates.
-   `increment`: This step is executed after each iteration of the loop body. It is typically used to update the counter variable.

---

## Example

```javascript
for (let i = 0; i < 5; i++) {
    console.log("Iteration number: " + i);
}

// Output:
// Iteration number: 0
// Iteration number: 1
// Iteration number: 2
// Iteration number: 3
// Iteration number: 4
```

In this example, the loop starts with `i` initialized to `0`. The loop continues as long as `i` is less than `5`. After each iteration, `i` is incremented by `1`. The loop body prints the current iteration number.

---

## Looping Through an Array

You can use a `for` loop to iterate through each element of an array. Here's an example:

```javascript
const fruits = ["Apple", "Banana", "Orange"];

for (let i = 0; i < fruits.length; i++) {
    console.log(fruits[i]);
}

// Output:
// Apple
// Banana
// Orange
```

In this example, the loop iterates through the `fruits` array, printing each fruit to the console. The loop continues until `i` is equal to the length of the array.

---

## Array with Objects

```javascript
const cars = [
    { make: "Toyota", model: "Camry", year: 2020 },
    { make: "Honda", model: "Civic", year: 2019 },
    { make: "Ford", model: "Mustang", year: 2021 },
];

for (let i = 0; i < cars.length; i++) {
    const car = cars[i];
    console.log(`${car.make} ${car.model} (${car.year})`);
}

// Output:
// Toyota Camry (2020)
// Honda Civic (2019)
// Ford Mustang (2021)
```

In this example, we have an array of objects representing cars. The `for` loop iterates through each car object in the array and prints its make, model, and year to the console.

---

## Nested Loops

You can also use nested `for` loops, where one loop is inside another. This is useful for working with multi-dimensional arrays or performing more complex iterations.

```javascript
for (let i = 1; i <= 2; i++) {
    for (let j = 1; j <= 4; j++) {
        console.log(`i: ${i}, j: ${j}`);
    }
}

// Output:
// i: 1, j: 1
// i: 1, j: 2
// i: 1, j: 3
// i: 1, j: 4
// i: 2, j: 1
// i: 2, j: 2
// i: 2, j: 3
// i: 2, j: 4
```

In this example, the outer loop iterates with `i` from `1` to `2`, and for each value of `i`, the inner loop iterates with `j` from `1` to `4`. The result is a combination of all values of `i` and `j`.

---

## Nested Loops | Array with Objects with Arrays

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

for (let i = 0; i < students.length; i++) {
    const student = students[i];
    console.log(`Student: ${student.name}, Age: ${student.age}`);
    console.log("Courses:");
    for (let j = 0; j < student.courses.length; j++) {
        console.log(`- ${student.courses[j]}`);
    }
}

// Output:

// Student: Alice, Age: 22
// Courses:
// - Math
// - Science
// - History

// Student: Bob, Age: 24
// Courses:
// - English
// - Art
// - Physical Education
```

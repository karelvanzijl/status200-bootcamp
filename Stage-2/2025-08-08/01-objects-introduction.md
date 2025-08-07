# Objects in JavaScript

So far we've learned about the following types of variables in JavaScript:

-   **Primitive types**:

    -   `string`
    -   `number`
    -   `boolean`
    -   `null`
    -   `undefined`
    -   `NaN`

-   **Reference types**:
    -   `array`

Today we will learn about another reference type: **objects**.

## What is an Object?

An object is a collection of properties, where each property is defined as a key-value pair. The key is a string, and **the value can be any data type** we've learned (primitive type or reference type).

## Creating an Object

To create an object, we use curly braces `{}`. Here's an example of an object representing a person:

Simplest example:

```javascript
// Creating an empty object
const person = {};
```

More complex example with properties:

```javascript
const person = {
    name: "Alice",
    age: 30,
    isStudent: false,
};
```

## Accessing Object Properties

To access properties of an object, we can use either dot notation or bracket notation.

### Dot Notation

We can use the dot notation to access properties directly by their key names. _We know what key to look for._

```javascript
console.log(person.name); // Output: Alice
console.log(person.age); // Output: 30
```

### Bracket Notation

Bracket notation allows us to access properties using a string that represents the key. This is useful when the key is obtained dynamically.

```javascript
console.log(person["name"]); // Output: Alice
console.log(person["age"]); // Output: 30
```

## Adding New Properties

We can add new properties to an object by assigning a value to a new key.

```javascript
// Adding a new property using dot notation
person.city = "Kuala Lumpur";
console.log(person.city); // Output: New York

// Adding a new property using bracket notation
person["country"] = "Malaysia";
console.log(person["country"]); // Output: USA
```

## Modifying Object Properties

We can modify the properties of an object by assigning new values to them.

```javascript
// Using dot notation to update a property
person.age = 31; // Update age
console.log(person.age); // Output: 31

// Using bracket notation to update a property
person["isStudent"] = true; // Update isStudent
console.log(person.isStudent); // Output: true
```

# Exercises

## Exercise 1: Create an Object

Create an object named `pet` with the following properties:

-   name
-   type
-   age

## Exercise 2: Access Object Properties

Access the properties of the `pet` object you created in the previous exercise using both dot notation and bracket notation. Print the values to the console.

## Exercise 3: Modify Object Properties

Modify the `pet` object by changing the `age` property to a new value and adding two new properties: `color` and `isVaccinated`. Print the updated object to the console.

## Exercise 4: Add a New Property

Add a new property to the `pet` object named `owner` and set its value to your name. Print the updated object to the console.

# Objects and Arrays in JavaScript

**Combining objects and arrays is an extremely powerful** feature in JavaScript. It allows us to create complex data structures that can represent real-world entities and relationships.

Alright, that sounds a bit fancy and complex, but let's break it down into simple terms.

#### Remember?

**_Arrays_** are ordered collections of items, which **the element can be any type of data**. They are defined using square brackets `[]` and can hold multiple values.

**_Objects_** are collections of key-value pairs, where each key is a string and **the value can be any type of data**, including arrays. They are defined using curly braces `{}`.

## Any type of data !!!

**What does this mean?**
Anyt type of data means exactly what it says: any primitive type, any reference type, or a combination of both: `string`, `number`, `boolean`, `null`, `undefined`, `NaN`, `array`, and `object`.

This means we can create:

-   Arrays that contain other arrays.
-   rrays that contain objects
-   Objects that contain arrays.
-   Objects that contain other objects.

### Example: Array of Objects

```javascript
const students = [
    {
        name: "Alice",
        age: 20,
        isStudent: true,
    },
    {
        name: "Bob",
        age: 22,
        isStudent: false,
    },
    {
        name: "Charlie",
        age: 19,
        isStudent: true,
    },
];
```

### Example: Object with an Array

```javascript
const classroom = {
    name: "JavaScript 101",
    students: ["Alice", "Bob", "Charlie"],
    teacher: "Mr. Smith",
};
```

## How can we work in these complex structures?

It might look a bit complicated at first, but accessing data in these structures is straightforward once you understand the syntax of Arrays and Objects:

### Example: Access student names

We know how to access data in arrays and objects:

-   **Array:** `array[index]`
-   **Object:** `object.key` or `object["key"]`

Nothing changes here, we just combine the two:

```javascript
// Get the name of the first student
console.log(students[0].name); // Output: Alice

// Get the age of the second student
console.log(students[1].age); // Output: 22

// Get the isStudent status of the third student
console.log(students[2].isStudent); // Output: true
```

In the first example:

1. We access the first element of the `students` array using `students[0]`. Which gives the object we stored at that index.
2. Then we access the `name` property of that object using `students[0].name`.

### Example: Add a new student

We already know how to add new elements to an array:

-   **Array:** `array.push(value)`

Nothing changes here either:

```javascript
// We can add new elements to an array using the `push()` method.
let newStudent = {
    name: "David",
    age: 21,
    isStudent: true,
};
students.push(newStudent);

// Alternatively, we can add a new student directly
students.push({
    name: "David",
    age: 21,
    isStudent: true,
});
```

### Modify an existing student's property

We know how to modify properties in objects:

**Object:** `object.key = newValue` or `object["key"] = newValue`

Nothing changes here either, altough we need to access the object first using the array index:

```javascript
// Lets console log the current age of the first student
console.log(students[0].age); // Output: 20

// Let's say we want to change the age of the first student
students[0].age = 21; // Update age of Alice

// Now let's console log the updated age
console.log(students[0].age); // Output: 21
```

What did we do here?

1. We accessed the first element of the `students` array using `students[0]`, which gives us the object representing Alice.
2. Then we accessed the `age` property of that object using `students[0].age`.
3. Finally, we assigned a new value to the `age` property.

### Find a student by name

We can not use `indexOf()` to find an object in an array, because `indexOf()` **only works with primitive types**.

Instead, we can use a loop to iterate through the array and check each object's properties.

```javascript
function findStudentByName(name) {
    for (let i = 0; i < students.length; i++) {
        if (students[i].name === name) {
            return students[i];
        }
    }
    return null; // If no student found
}

console.log(findStudentByName("Alice"));
// Output: { name: 'Alice', age: 21, isStudent: true }

console.log(findStudentByName("Eve"));
// Output: null
```

What did we do here?

1. We defined a function `findStudentByName` that takes a `name` as an argument.
2. Inside the function, we used a `for` loop to iterate through the `students` array.
3. For each student, we checked if the `name` property matches the provided `name`.
4. If a match is found, we return the student object.
    - And we can used the `return` keyword to exit the function immediately after we found a match. No need to continue checking the rest of the array.
5. If no match is found, we return `null`.

# Exercises

## Exercise 5: Create an Array of Objects

Create an array named `books` that contains at least three objects. Each object should represent a book with the following properties:

-   title
-   author
-   yearPublished

Log the `books` array to the console to see the structure.

## Exercise 6: Access Properties in an Array of Objects

Access the properties of the `books` array you created in the previous exercise. Print the title and author of each book to the console.

## Exercise 7: Add a New Book to the Array

Add a new book to the `books` array. The new book should have the same properties as the existing books.

Log the original and updated `books` array to the console to see the changes.

## Exercise 8: Modify a Book's Property

Modify the `yearPublished` property of the second book in the `books` array. Print the updated array to the console.

Log the original and updated `books` array to the console to see the changes.

## Exercise 9: Find a Book by Title

Create a function named `findBookByTitle` that takes a title as an argument and returns the book object with that title from the `books` array. If no book is found, return `null`.

Test your function with different titles, something like:

-   `findBookByTitle("The Great Gatsby")`
-   `findBookByTitle("To Kill a Mockingbird")`
-   `findBookByTitle("Nonexistent Book")`
-   etc.

Log the results to the console to see if your function works correctly.

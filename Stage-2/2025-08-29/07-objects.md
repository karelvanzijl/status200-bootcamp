# Objects

-   [What is an Object?](#what-is-an-object)
-   [Creating Objects](#creating-objects)
-   [Accessing Object Properties](#accessing-object-properties)
-   [Modifying Object Properties](#modifying-object-properties)

---

# What is an Object?

In JavaScript, an object is a collection of related data and functionality. It is a fundamental building block in JavaScript and is used to represent real-world entities. Objects can contain properties (data) and methods (functions) that operate on that data.

Objects are defined using curly braces `{}` and consist of key-value pairs, where the key is a string (property name) and the value can be any data type, including other objects or functions.

---

# Creating Objects

You can create an object using object literal syntax. For example a simple object representing a person:

```javascript
const person = {
    name: "John",
    age: 30,
    isStudent: false,
};
consolse.log(person);
```

Or an object representing a car:

```javascript
const car = {
    make: "Toyota",
    model: "Camry",
    year: 2020,
    fuelType: "Gasoline",
};
console.log(car);
```

**You can add any Data Type as a property value**, including strings, numbers, booleans, arrays, other objects and even functions.

```javascript
const student = {
    name: "Alice",
    age: 22,
    courses: ["Math", "Science", "History"],
    address: {
        street: "123 Main St",
        city: "New York",
        zip: "10001",
    },
    greet: function () {
        console.log("Hello, my name is " + this.name);
    },
};

// Log the student object
console.log(student);

// Call the greet method of the student object
student.greet(); // Output: Hello, my name is Alice
```

---

# Accessing Object Properties

You can access the properties of an object using dot notation or bracket notation.

```javascript
const person = {
    name: "John",
    age: 30,
    isStudent: false,
};

// Accessing properties using dot notation
console.log(person.name); // Output: John
console.log(person.age); // Output: 30
console.log(person.isStudent); // Output: false

// Accessing properties using bracket notation
console.log(person["name"]); // Output: John
console.log(person["age"]); // Output: 30
console.log(person["isStudent"]); // Output: false
```

**When possible use dot notation** for better readability. Use bracket notation when the property name is dynamic or contains special characters. For example:

```javascript
const person = {
    "first-name": "John",
    age: 30,
    isStudent: false,
};

function getProperty(propertyName) {
    // We can only use bracket notation here because the property name is dynamic.
    return person[propertyName];
}

console.log(getProperty("first-name")); // Output: John
console.log(getProperty("age")); // Output: 30
console.log(getProperty("isStudent")); // Output: false
```

---

# Modifying Object Properties

You can modify the properties of an object using either dot notation or bracket notation.

```javascript
const person = {
    name: "John",
    age: 30,
    isStudent: false,
};

// Modifying properties using dot notation
person.age = 31;
person.isStudent = true;

console.log(person.age); // Output: 31
console.log(person.isStudent); // Output: true

// Modifying properties using bracket notation
person["age"] = 32;
person["isStudent"] = false;

console.log(person["age"]); // Output: 32
console.log(person["isStudent"]); // Output: false
```

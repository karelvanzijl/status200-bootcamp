# Object-Oriented Programming (OOP)

## Introduction

In programming, the way we structure and approach our code is guided by what we call **programming paradigms**. These paradigms shape how we think about solving problems and writing programs. Up to this point, we've been focusing on **Imperative Programming**, where we've learned _how_ to instruct the computer step-by-step to achieve specific outcomes. Now, we’re about to delve into a new "HOW"—through **Object-Oriented Programming (OOP)**.

### Programming Paradigms

A programming paradigm is a fundamental style of computer programming, representing a way to approach and structure your code. It defines the mindset and methodologies you use when writing programs, offering various tools and techniques to express your logic and solve problems effectively.

#### Paradigm 1: Imperative Programming (HOW)

-   **Focus:** Describes _how_ a program operates by providing detailed instructions and control flow.
-   **Characteristics:**
    -   Step-by-step instructions.
    -   Emphasis on controlling the state and flow of execution.
    -   Uses constructs like loops, conditionals, and variables to manipulate data.
-   **Examples of Languages:**
    -   JavaScript
    -   Python
    -   C++
    -   PHP
-   **Procedural Programming:**
    -   A subset of imperative programming.
    -   Follows a top-down approach with procedures (similar to functions) that break down tasks into smaller, manageable steps.

_So far, we've focused on learning this "HOW" through imperative and procedural programming. You've learned how to write code that explicitly instructs the computer step-by-step on what to do._

#### Paradigm 2: Declarative Programming (WHAT)

-   **Focus:** Describes _what_ the program should achieve, leaving the _how_ to the language or framework.
-   **Characteristics:**
    -   Specifies the desired outcomes without explicitly coding the step-by-step process.
    -   Often used in languages that abstract the details of execution.
    -   Emphasizes readability and expressiveness.
-   **Examples of Languages:**
    -   SQL
    -   HTML

_This paradigm is different from what we've practiced so far. Instead of focusing on "HOW" to achieve a result, it focuses on "WHAT" the result should be._

### Transitioning to a New "HOW"

#### Object-Oriented Programming (OOP)

Now, we’re going to explore a new way of thinking about the "HOW"—through **Object-Oriented Programming (OOP)**. While we continue to focus on _how_ to instruct the computer, OOP allows us to do so in a more organized and structured way. OOP enables us to model real-world entities as "objects" that have properties and behaviors, making our code more modular, reusable, and easier to manage.

---

# Object-Oriented Design

## Premise: Everything is an Object

In Object-Oriented Design, the fundamental idea is that everything in the program can be thought of as an **object**. These objects represent real-world entities or concepts, and they interact with one another to perform the tasks and functions of the program.

## What are Objects?

Objects can be anything you can think of—both tangible and intangible. They are the building blocks of an object-oriented system, and they can represent things like:

-   **Tangible Entities:** A car, a classroom, a person.
-   **Conceptual Entities:** A bank account, a process, a university course.
-   **Even Broader Concepts:** The entire universe, a system, an organization.

### Object Composition: Objects Within Objects

In Object-Oriented Design, objects can be composed of other objects, creating a hierarchy of parts that together form a more complex entity. This concept is known as **object composition**. It allows us to model real-world systems by breaking them down into smaller, manageable components that interact with each other.

For example, consider a **Car** object. A car is not just a single entity but a complex system composed of various parts, each of which can also be considered an object:

-   Car
    -   Motor
        -   Cylinders
            -   Pistons
                -   Rings
                -   Pins
    -   Steering Wheel
        -   Rim
            -   Outer Layer
                -   Leather
                -   Stitching
            -   Core
                -   Metal Frame
        -   Center Hub
            -   Horn Button
            -   Airbag
    -   Wheels
        -   Tire
            -   Rubber
            -   Tread Pattern
        -   Rim
            -   Alloy
            -   Spokes

Each of these components can be broken down further into even smaller objects, right down to the molecular level:

-   Tire
    -   Rubber
        -   Polymers
            -   Molecules
                -   Atoms

This nested structure illustrates how larger objects are composed of smaller, interrelated objects, each contributing to the overall functionality of the larger system. By understanding and modeling these relationships, we can create more accurate and maintainable representations of complex systems in our programs.

### Properties and Behaviors of Objects

Each object is a self-contained unit that has its own **properties** (attributes) and **behaviors** (methods). These properties define the state of an object, while behaviors define what an object can do.

For example:

-   A **person** object might have properties like `name`, `age`, and `height`, and behaviors like `speak()`, `walk()`, and `sleep()`.
-   A **car** object might have properties like `make`, `model`, and `color`, and behaviors like `start()`, `accelerate()`, and `brake()`.

### The Problem: Managing Multiple Objects

As you create more objects, you might notice that many objects share common properties and behaviors. For instance, you might have multiple `person` objects, each with the same properties (`name`, `age`, `height`) but different values for those properties. Writing out the properties and behaviors for each object individually can quickly become repetitive and error-prone.

### The Solution: Classes

To address this problem, we use **classes** in Object-Oriented Programming. A class is like a blueprint for creating objects. It defines the properties and behaviors that its objects will have, allowing us to create multiple objects based on the same blueprint without repeating code.

For example, instead of defining the `name`, `age`, and `height` for each person individually, we can define a `Person` class. Then, whenever we need to create a new person, we create an instance of the `Person` class, and that instance automatically has all the properties and behaviors defined in the class.

## Example: Class and Object

### Defining a Class: `Person`

```javascript
class Person {
    constructor(name, age, height) {
        this.name = name;
        this.age = age;
        this.height = height;
    }

    speak() {
        return `Hello, my name is ${this.name}.`;
    }

    walk() {
        return `${this.name} is walking.`;
    }

    sleep() {
        return `${this.name} is sleeping.`;
    }
}
```

### Creating Objects from the Class

```javascript
// Creating instances of the Person class
const person1 = new Person("Alice", 30, 165);
const person2 = new Person("Bob", 25, 175);

// Accessing properties and calling methods
console.log(person1.speak()); // Output: Hello, my name is Alice.
console.log(person2.walk()); // Output: Bob is walking.
```

### Understanding the Example

In this example, `Person` is a class that defines the blueprint for creating person objects. The `constructor` method is used to initialize the properties of an object when it is created. The properties `name`, `age`, and `height` are defined in this method.

The class also includes methods (`speak`, `walk`, `sleep`) that represent the behaviors of a person. When we create an object (like `person1` or `person2`) from the `Person` class, we can access these properties and call these methods to perform actions specific to that object.

### The Benefits of Using Classes

By using classes, we can easily create multiple objects with shared properties and behaviors without repeating code. This approach makes our code more modular, easier to manage, and less prone to errors. If we need to update the behavior of all `Person` objects, we can simply update the `Person` class, and the change will apply to all instances of that class.

---

# Moving Forward with OOP

Now that we’ve introduced the concept of classes and objects, we’ll dive deeper into Object-Oriented Programming principles such as **Encapsulation**, **Inheritance**, and **Polymorphism**. These principles will further enhance your understanding of how to structure and organize your code in a powerful and efficient way.

### 1. Encapsulation

**Encapsulation** is the principle of bundling the data (attributes) and methods (functions) that operate on the data into a single unit called a **class**. It also restricts direct access to some of the object's components, which helps prevent unintended interference and misuse of the methods and data. In JavaScript, encapsulation is often implemented using closures and private fields.

-   **Private fields:** In JavaScript, private fields are declared using the `#` symbol and are only accessible within the class.

**Example:**

```javascript
class BankAccount {
    #balance; // Private field

    constructor(accountNumber, balance) {
        this.accountNumber = accountNumber;
        this.#balance = balance;
    }

    deposit(amount) {
        this.#balance += amount;
    }

    withdraw(amount) {
        if (amount <= this.#balance) {
            this.#balance -= amount;
        } else {
            console.log("Insufficient funds");
        }
    }

    getBalance() {
        return this.#balance; // Accessing the private field via a public method
    }
}

const myAccount = new BankAccount("123456", 1000);
myAccount.deposit(500);
console.log(myAccount.getBalance()); // Output: 1500
console.log(myAccount.#balance); // Error: Private field '#balance' must be declared in an enclosing class
```

In this example, `#balance` is a private field, meaning it cannot be accessed directly from outside the `BankAccount` class. Instead, you interact with this field through public methods like `deposit()`, `withdraw()`, and `getBalance()`.

### 2. Inheritance

**Inheritance** allows a new class to inherit attributes and methods from an existing class. The class that is inherited from is called the **parent class** (or **superclass**), and the class that inherits is called the **child class** (or **subclass**). Inheritance promotes code reusability and establishes a natural hierarchy between classes.

**Example:**

```javascript
class Animal {
    constructor(name) {
        this.name = name;
    }

    speak() {
        console.log(`${this.name} makes a sound.`);
    }
}

class Dog extends Animal {
    speak() {
        console.log(`${this.name} barks.`);
    }
}

class Cat extends Animal {
    speak() {
        console.log(`${this.name} meows.`);
    }
}

const dog = new Dog("Buddy");
const cat = new Cat("Whiskers");

dog.speak(); // Output: Buddy barks.
cat.speak(); // Output: Whiskers meows.
```

In this example, `Dog` and `Cat` are subclasses of the `Animal` class. They inherit the `name` property and the `speak()` method from `Animal`, but each subclass provides its own implementation of `speak()`.

### 3. Polymorphism

**Polymorphism** means "many shapes" and refers to the ability of different classes to be treated as instances of the same class through inheritance. It allows a single method or function to work with objects of different classes as long as they share a common interface or base class.

Polymorphism in JavaScript is often demonstrated through **method overriding**.

**Example:**

```javascript
function makeAnimalSpeak(animal) {
    animal.speak();
}

const dog = new Dog("Buddy");
const cat = new Cat("Whiskers");

makeAnimalSpeak(dog); // Output: Buddy barks.
makeAnimalSpeak(cat); // Output: Whiskers meows.
```

In this example, the `makeAnimalSpeak()` function can take any object that is an instance of a subclass of `Animal` and call its `speak()` method. The function treats `Dog` and `Cat` objects as `Animal` objects, but each object's `speak()` method is executed according to its specific implementation.

### 4. Abstraction

**Abstraction** is the principle of hiding the complex implementation details of an object and exposing only the essential features. This helps to reduce complexity and allows the programmer to focus on interactions at a higher level of abstraction without worrying about the inner workings.

In JavaScript, abstraction can be implemented by using abstract classes and interfaces (though JavaScript doesn’t have native support for abstract classes, this can be simulated using ES6 classes and methods).

**Example:**

```javascript
class Shape {
    constructor() {
        if (this.constructor === Shape) {
            throw new Error(
                "Abstract class 'Shape' cannot be instantiated directly."
            );
        }
    }

    area() {
        throw new Error("Method 'area()' must be implemented.");
    }

    perimeter() {
        throw new Error("Method 'perimeter()' must be implemented.");
    }
}

class Rectangle extends Shape {
    constructor(width, height) {
        super();
        this.width = width;
        this.height = height;
    }

    area() {
        return this.width * this.height;
    }

    perimeter() {
        return 2 * (this.width + this.height);
    }
}

class Circle extends Shape {
    constructor(radius) {
        super();
        this.radius = radius;
    }

    area() {
        return Math.PI * this.radius ** 2;
    }

    perimeter() {
        return 2 * Math.PI * this.radius;
    }
}

const rectangle = new Rectangle(10, 20);
console.log(rectangle.area()); // Output: 200
console.log(rectangle.perimeter()); // Output: 60

const circle = new Circle(10);
console.log(circle.area()); // Output: 314.159...
console.log(circle.perimeter()); // Output: 62.831...
```

In this example, `Shape` is an abstract class that cannot be instantiated directly. The methods `area()` and `perimeter()` are abstract and must be implemented by any concrete subclass, like `Rectangle` and `Circle`. The details of how `area()` and `perimeter()` are calculated are hidden from any code that uses the `Shape` interface, allowing it to interact with shapes at a higher level of abstraction.

### Summary of OOP Principles

1. **Encapsulation**: Protects an object's data by bundling it with the methods that operate on the data and restricting direct access to it.
2. **Inheritance**: Allows a new class to inherit properties and methods from an existing class, promoting code reuse.
3. **Polymorphism**: Enables objects of different classes to be treated as instances of the same class through a common interface.
4. **Abstraction**: Simplifies complex systems by exposing only essential features and hiding the implementation details.

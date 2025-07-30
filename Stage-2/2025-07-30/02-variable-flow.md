# Understanding JavaScript Variables

Variables are your data storage system. Every interactive web app needs to remember information temporarily - that's exactly what variables do.

---

## The Variable Concept

Think of variables as **labeled storage boxes** in your computer's memory:

```
📦 [userName] ──► "Sarah"
📦 [userAge] ───► 25
📦 [total] ─────► 150.75
```

### The Universal Variable Pattern:

```
CREATE → STORE → RETRIEVE → USE
```

---

## Variable Lifecycle in Web Apps

Every variable in your web apps follows this exact pattern:

### **Step 1: CREATE**

Declare a storage box with a name

```js
let userName; // Create empty box
let price = 10; // Create box and put some value in it directly
const taxRate = 0.21; // Create box with permanent value
```

Just to remind you:

-   **You only delcare a variable once**. Once the box is created, you can keep using it. You don't need to create it again to store something new in it / change its value.
-   **Only `let` variables can be changed afterwards**. Meaning you can change the content of the box later. `const` variables are permanent, you cannot change them after creation (the contents of the box is fixed).

### **Step 2: STORE**

Put data into the box

```js
userName = "Sarah"; // Store user input
let calculatedTotal = price * 1.21; // Store calculation result
```

### **Step 3: RETRIEVE**

Get data from the box when needed

```js
console.log(userName); // Use the stored name
let message = "Hello " + userName; // Use it in calculations
```

### **Step 4: USE**

Apply the data in your application

```js
document.getElementById("output").textContent = message;
```

---

## Variables in the Web App Flow

Remember our 5-step web app pattern? Variables are essential in every step:

```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│   HTML      │    │     JS      │    │     JS      │    │     JS      │    │   HTM       │
│   INPUT     │───▶│  RETRIEVE   │───▶│   PROCESS   │───▶│   OUTPUT    │───▶│  DISPLAY    │
│             │    │             │    │             │    │             │    │             │
│ User types  │    │ .value      │    │ Calculate   │    │ Result      │    │.textContent │
│ in field    │    │ gets data   │    │ Transform   │    │ ready       │    │ shows it    │
└─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘
```

```
HTML INPUT → JS RETRIEVE → JS PROCESS → JS OUTPUT → HTML DISPLAY
     ↓           ↓            ↓           ↓           ↓
   (user)    [userInput]   [result]   [message]   (display)
```

### Complete Example: Age Calculator

```js
function processAge() {
    // CREATE variables to store our data
    const maxAge = 100; // Permanent value
    let userAge; // Declare, but not assigned yet
    let yearsLeft; // Declare, but not assigned yet
    let message; // Declare, but not assigned yet

    // STORE: Get input and save it
    userAge = document.getElementById("ageInput").value;

    // STORE: Calculate and save result
    yearsLeft = maxAge - userAge;
    message = "You have " + yearsLeft + " years left!";

    // USE: Display the stored result
    document.getElementById("output").textContent = message;
}
```

---

## The Two Variable Types You Need

### **`let` - Changeable Storage**

Use when the value might change

```js
let userName = "Sarah"; // ✅ This works. Can be changed later
userName = "John"; // ✅ This works
```

### **`const` - Permanent Storage**

Use when the value stays the same

```js
const taxRate = 0.21; // ✅ This works. Cannot change
taxRate = 0.25; // ❌ Error!
```

---

## Practical Variable Pattern

Use this template for every exercise:

```js
function myFunction() {
    // CREATE: Declare your storage boxes
    let userInput;
    let processedResult;
    let displayMessage;

    // STORE: Get input data
    userInput = document.getElementById("input").value;

    // STORE: Process the data
    processedResult = /* YOUR CALCULATION HERE */;
    displayMessage = "Result: " + processedResult;

    // USE: Show the result
    document.getElementById("output").textContent = displayMessage;
}
```

---

## Scope

Variables have a **scope** which determines where they can be accessed:

-   **Global Scope**: Variables declared outside any function can be accessed anywhere in the script.
-   **Local Scope**: Variables declared inside a function can only be accessed within that function.

### What does this mean?

If you declare a variable inside a function, it cannot be accessed outside that function. This helps prevent conflicts and keeps your code organized.

```js
function myFunction() {
    let localVariable = "I am local"; // Only accessible here
    console.log(localVariable); // Works
}
console.log(localVariable); // ❌ Error! Not accessible here
```

If you declare a variable outside any function, it can be accessed anywhere in your script:

```js
let globalVariable = "I am global"; // Accessible everywhere
function anotherFunction() {
    console.log(globalVariable); // Works
}
anotherFunction(); // Outputs: I am global
```

---

**Insight 1:** As long as a variable is declared outside a function, it is accessible throughout your script (in- and outside functions) and, in case let was used, you can change its value anytime.

**Insight 2:** When a variable is declared inside a function, it is only accessible inside that function and nowhere else. In case let was used, you can change its value anytime inside that function.

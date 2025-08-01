## Navigation

1. [Overview](readme.md)
2. [Primitive Data Types](./01-js-primitive-data-types.md)
3. [Exercise: Primitive Data Types](./02-exercise-primitive-data-types.md) ← _You are here_
4. [Arithmetic Operators](./03-js-arithmetic-operators.md)
5. [Exercise: Arithmetic Operators](./04-exercise-arithmetic-operators.md)
6. [Assignment Operators](./05-js-assignment-operators.md)
7. [Exercise: Assignment Operators](./06-exercise-assignment-operators.md)
8. [Comparison Operators](./07-js-comparison-operators.md)
9. [Exercise: Comparison Operators](./08-exercise-comparison-operators.md)

---

# Exercise: Primitive Data Types

## Setup

### Step 1: Create Project Structure

1. Create a new folder called `data-types-practice`
2. Create a subfolder called `js`
3. Create a file `index.html` in the main folder
4. Create a file `scripts.js` in the `js` folder
5. Open the project folder in VS Code

### Step 2: Basic HTML Setup

**HTML (`index.html`):**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Data Types Practice</title>
    </head>
    <body>
        <h1>JavaScript Data Types Practice</h1>
        <p>Open the Developer Tools Console to see the results!</p>

        <script src="js/scripts.js"></script>
    </body>
</html>
```

## Exercise Tasks

Complete each task by writing JavaScript code in your `scripts.js` file. Use `console.log()` to display the results.

### Task 1: Number Data Type

Create variables for the following numbers and log them to the console:

```javascript
// Your code here
let studentAge = 22;
let temperature = -5.5;
let score = 100;

console.log("Student Age:", studentAge);
console.log("Temperature:", temperature);
console.log("Score:", score);
```

**Expected Output:**

```
Student Age: 22
Temperature: -5.5
Score: 100
```

### Task 2: String Data Type

Create variables for the following strings and log them to the console:

```javascript
// Your code here
let firstName = "Emma";
let lastName = "Johnson";
let message = "Welcome to JavaScript!";

console.log("First Name:", firstName);
console.log("Last Name:", lastName);
console.log("Message:", message);
```

**Expected Output:**

```
First Name: Emma
Last Name: Johnson
Message: Welcome to JavaScript!
```

### Task 3: Boolean Data Type

Create variables for the following boolean values and log them to the console:

```javascript
// Your code here
let isLoggedIn = true;
let hasPermission = false;
let isComplete = true;

console.log("Is Logged In:", isLoggedIn);
console.log("Has Permission:", hasPermission);
console.log("Is Complete:", isComplete);
```

**Expected Output:**

```
Is Logged In: true
Has Permission: false
Is Complete: true
```

### Task 4: Undefined Data Type

Create a variable without assigning a value and log it to the console:

```javascript
// Your code here
let result;
let userInput;

console.log("Result:", result);
console.log("User Input:", userInput);
```

**Expected Output:**

```
Result: undefined
User Input: undefined
```

### Task 5: Null Data Type

Create variables with null values and log them to the console:

```javascript
// Your code here
let data = null;
let selectedItem = null;

console.log("Data:", data);
console.log("Selected Item:", selectedItem);
```

**Expected Output:**

```
Data: null
Selected Item: null
```

### Task 6: Mixed Data Types

Create variables with different data types and combine them in strings:

```javascript
// Your code here
let name = "Sarah";
let age = 28;
let isStudent = false;

let introduction = "Hi, I'm " + name + " and I'm " + age + " years old.";
let studentStatus = name + " is a student: " + isStudent;

console.log(introduction);
console.log(studentStatus);
```

**Expected Output:**

```
Hi, I'm Sarah and I'm 28 years old.
Sarah is a student: false
```

### Task 7: Type Coercion Experiment

Create a variable and change its type, then log both values:

```javascript
// Your code here
let value = 42;
console.log("Original value:", value);
console.log("Type:", typeof value);

value = "Now I'm a string!";
console.log("New value:", value);
console.log("New type:", typeof value);
```

**Expected Output:**

```
Original value: 42
Type: number
New value: Now I'm a string!
New type: string
```

### Task 8: String and Number Mixing

Experiment with adding strings and numbers:

```javascript
// Your code here
let num1 = 10;
let num2 = 20;
let str1 = "5";
let str2 = "Hello";

console.log("Number + Number:", num1 + num2);
console.log("Number + String:", num1 + str1);
console.log("String + Number:", str1 + num2);
console.log("String + String:", str2 + " World");
```

**Expected Output:**

```
Number + Number: 30
Number + String: 105
String + Number: 520
String + String: Hello World
```

## Challenge Tasks

### Challenge 1: Personal Information Display

Create variables for your personal information and display them in a formatted message:

```javascript
// Your code here - create variables for:
// - Your name (string)
// - Your age (number)
// - Whether you like JavaScript (boolean)
// - Your favorite color (string)

// Then create a message combining all of them
```

### Challenge 2: Data Type Detective

Without running the code, predict what data type each result will be, then test your predictions:

```javascript
let mystery1 = 5 + "3"; // Predict the result and type
let mystery2 = "10" + 2; // Predict the result and type
let mystery3 = true + 1; // Predict the result and type
let mystery4 = "Hello" + true; // Predict the result and type

console.log("Mystery 1:", mystery1, "Type:", typeof mystery1);
console.log("Mystery 2:", mystery2, "Type:", typeof mystery2);
console.log("Mystery 3:", mystery3, "Type:", typeof mystery3);
console.log("Mystery 4:", mystery4, "Type:", typeof mystery4);
```

## Testing Your Work

1. Open your HTML file in a web browser
2. Open Developer Tools (F12 or right-click → Inspect)
3. Go to the Console tab
4. You should see all your console.log outputs
5. Compare your results with the expected outputs

## Key Learning Points

After completing this exercise, you should understand:

-   **Number**: For numeric values (integers and decimals)
-   **String**: For text, enclosed in quotes
-   **Boolean**: For true/false values
-   **Undefined**: When a variable is declared but not assigned
-   **Null**: When you intentionally want "no value"
-   **Type Coercion**: How JavaScript can change data types
-   **typeof operator**: How to check what type a variable is

## Common Mistakes to Avoid

1. **Forgetting quotes for strings**

    ```javascript
    let name = John; // Error - missing quotes
    let name = "John"; // Correct
    ```

2. **Confusing null and undefined**

    ```javascript
    let a; // undefined (not assigned)
    let b = null; // null (intentionally empty)
    ```

3. **Unexpected string concatenation**
    ```javascript
    let result = 5 + "3"; // "53" (string), not 8 (number)
    ```

Remember: JavaScript is flexible with data types, but this flexibility can sometimes lead to unexpected results. Always be mindful of what types you're working with!

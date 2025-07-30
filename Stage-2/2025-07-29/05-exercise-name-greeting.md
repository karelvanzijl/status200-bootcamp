## Navigation

1. [Overview](readme.md)
2. [Button Click Exercises](00-exercise-button-click.md)
3. [Area Calculator Exercise](01-exercise-area-calculator.md)
4. [Shopping Calculator Exercise](02-exercise-shopping-calculator.md)
5. [Age Converter Exercise](03-exercise-age-converter.md)
6. [Simple Counter Exercise](04-exercise-simple-counter.md)
7. [Name Greeting Exercise](05-exercise-name-greeting.md) ← _You are here_

---

# JavaScript Exercise - Name Greeting Generator

### Exercise 1

Create a page where a user can enter their name.

When the user clicks on a button, display a greeting message that says: "Hello, [name]! Welcome to our website!"

When the user click on another button, the greeting text should change to "Your personalized greeting will appear here!"

### Exercise 2

Modify the greeting to include the current time. Change the message to: "Hello, [name]! It's currently [current time]. Welcome!"

**Hint:** Use `new Date().toLocaleTimeString()` to get the current time.

### Exercise 3

Add a second input field for the user's age. Generate a greeting that includes both name and age: "Hello, [name]! You are [age] years old. Welcome!"

### Exercise 4

Create multiple greeting styles. Add buttons for "Formal Greeting", "Casual Greeting", and "Excited Greeting" that generate different types of messages:

-   Formal: "Good day, [name]. We are pleased to welcome you."
-   Casual: "Hey [name], what's up? Good to see you!"
-   Excited: "WOW! Hi [name]! This is so AWESOME! Welcome!!!"

---

If you followed the steps during class, you should have ended up with something like this:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
    </head>
    <body>
        <input type="text" id="name" placeholder="Enter your name" />
        <input type="text" id="age" placeholder="Enter your age" />
        <button onclick="showGreeting()">Show greeting</button>
        <button onclick="formalGreeting()">Show formal greeting</button>
        <button onclick="casualGreeting()">Show casual greeting</button>
        <button onclick="excitedGreeting()">Show excited greeting</button>
        <button onclick="changeText()">Change text</button>
        <p id="result">
            <!-- show message -->
        </p>
        <script src="./script.js"></script>
    </body>
</html>
```

```javascript
function showGreeting() {
    // Step 2: retrieve data from HTML
    const name = document.getElementById("name").value;
    const age = document.getElementById("age").value;

    // Step 3: perform some calculation / process the input
    // Nothing to do

    // Step 4: create message (output)
    // const time = new Date().toLocaleTimeString();
    // const message = "Hello, " + name + "! It's currently " + time + ". Welcome!";
    const message =
        "Hello, " + name + "! You are " + age + " years old. Welcome!";

    // Step 5: show output
    document.getElementById("result").textContent = message;
}

function changeText() {
    // Step4: create message
    const message = "Your personalized greeting will appear here!";

    // Step 5: display in HTML
    document.getElementById("result").textContent = message;
}

function formalGreeting() {
    const name = document.getElementById("name").value;
    const message = "Good day, " + name + ". We are pleased to welcome you.";
    document.getElementById("result").textContent = message;
}

function casualGreeting() {
    const name = document.getElementById("name").value;
    const message = "Hey " + name + ", what's up? Good to see you!";
    document.getElementById("result").textContent = message;
}

function excitedGreeting() {
    const name = document.getElementById("name").value;
    const message = "WOW! Hi " + name + "! This is so AWESOME! Welcome!!!";
    document.getElementById("result").textContent = message;
}
```

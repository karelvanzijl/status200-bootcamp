## Navigation

1. [Overview](readme.md)
2. [Exercise: Color Changer](./08-exercise-color-changer.md)
3. [Exercise: Simple Counter](./09-exercise-simple-counter.md)
4. [Exercise: Name Greeting Generator](./10-exercise-name-greeting.md) ← _You are here_
5. [Exercise: Simple Math Quiz](./11-exercise-math-quiz.md)
6. [Exercise: Temperature Converter](./12-exercise-temperature-converter.md)

---

# JavaScript Exercise 5 - Name Greeting Generator

## Setup

### Step 1: Create Project Structure

Use the command prompt to create a new project folder and files.

1. Create a new folder called `name-greeting`
2. Create a subfolder called `js`
3. Create a file `index.html` in the main folder
4. Create a file `scripts.js` in the `js` folder
5. Open the project folder in VS Code

### Step 2: Use this HTML & JavaScript

Copy this code exactly. We're going to build a personalized greeting generator together.

**HTML (`index.html`):**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Name Greeting Generator</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                max-width: 600px;
                margin: 50px auto;
                padding: 20px;
                text-align: center;
            }
            .input-section {
                background-color: #f9f9f9;
                padding: 30px;
                border-radius: 10px;
                margin: 20px 0;
            }
            input[type="text"] {
                padding: 15px;
                font-size: 18px;
                border: 2px solid #ddd;
                border-radius: 5px;
                width: 300px;
                margin: 10px;
            }
            button {
                padding: 15px 30px;
                font-size: 18px;
                background-color: #4caf50;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                margin: 10px;
            }
            button:hover {
                background-color: #45a049;
            }
            #greetingDisplay {
                font-size: 24px;
                font-weight: bold;
                color: #333;
                margin: 30px 0;
                padding: 25px;
                background-color: #e8f5e8;
                border-radius: 10px;
                border-left: 5px solid #4caf50;
                min-height: 60px;
                display: flex;
                align-items: center;
                justify-content: center;
            }
        </style>
    </head>
    <body>
        <h1>Name Greeting Generator</h1>
        <p>Enter your name and get a personalized greeting!</p>

        <div class="input-section">
            <label for="nameInput">Your Name:</label><br />
            <input
                type="text"
                id="nameInput"
                placeholder="Enter your name here..."
            />
            <br /><br />
            <button onclick="generateGreeting()">Generate Greeting</button>
            <button onclick="clearGreeting()">Clear</button>
        </div>

        <div id="greetingDisplay">
            Your personalized greeting will appear here!
        </div>

        <script src="js/scripts.js"></script>
    </body>
</html>
```

**JavaScript (`js/scripts.js`):**

```javascript
// Get the input field and display elements
const nameInput = document.getElementById("nameInput");
const greetingDisplay = document.getElementById("greetingDisplay");

// Function to generate a personalized greeting
function generateGreeting() {
    // Get the name from the input field
    const userName = nameInput.value;

    // Create a personalized greeting message
    const greetingMessage = "Hello, " + userName + "! Welcome to our website!";

    // Display the greeting
    greetingDisplay.textContent = greetingMessage;
}

// Function to clear the greeting and input
function clearGreeting() {
    nameInput.value = "";
    greetingDisplay.textContent =
        "Your personalized greeting will appear here!";
}
```

## Code Breakdown

Let's break down this greeting generator step by step so you understand how it works with user input and string manipulation.

### HTML Breakdown

**1. The Input Field**

```html
<input type="text" id="nameInput" placeholder="Enter your name here..." />
```

-   `<input type="text">` creates a text input field where users can type
-   `id="nameInput"` gives it a unique name for JavaScript to find
-   `placeholder="..."` shows hint text when the field is empty
-   Users can type their name here

**2. The Action Buttons**

```html
<button onclick="generateGreeting()">Generate Greeting</button>
<button onclick="clearGreeting()">Clear</button>
```

-   First button calls `generateGreeting()` to create the personalized message
-   Second button calls `clearGreeting()` to reset everything
-   Each button has a clear purpose and visual feedback

**3. The Display Area**

```html
<div id="greetingDisplay">Your personalized greeting will appear here!</div>
```

-   This div shows the generated greeting message
-   Starts with placeholder text that gets replaced
-   CSS styling makes it stand out as the main result area

**4. The Styling**

```css
.input-section {
    background-color: #f9f9f9;
    padding: 30px;
    border-radius: 10px;
}
```

-   Groups the input and buttons in a visually distinct section
-   Makes the interface clean and easy to use
-   Provides visual hierarchy and focus

### JavaScript Breakdown

**1. Getting the Elements**

```javascript
const nameInput = document.getElementById("nameInput");
const greetingDisplay = document.getElementById("greetingDisplay");
```

**What's happening here?**

-   We find the input field where users type their name
-   We find the div where we'll show the greeting
-   We store them in variables so our functions can use them

**2. The Generate Greeting Function**

```javascript
function generateGreeting() {
    const userName = nameInput.value;
    const greetingMessage = "Hello, " + userName + "! Welcome to our website!";
    greetingDisplay.textContent = greetingMessage;
}
```

**Breaking this down:**

-   `const userName = nameInput.value` gets whatever the user typed
-   `.value` is the property that contains the text from an input field
-   `"Hello, " + userName + "! Welcome to our website!"` combines strings
-   `greetingDisplay.textContent = greetingMessage` shows the result

**3. String Concatenation**

```javascript
const greetingMessage = "Hello, " + userName + "! Welcome to our website!";
```

**How this works:**

-   `+` operator combines (concatenates) strings together
-   If `userName` is "Sarah", the result is: "Hello, Sarah! Welcome to our website!"
-   We can combine as many strings as we want with `+`

**4. The Clear Function**

```javascript
function clearGreeting() {
    nameInput.value = "";
    greetingDisplay.textContent =
        "Your personalized greeting will appear here!";
}
```

**What's happening:**

-   `nameInput.value = ""` sets the input field to empty (clears it)
-   `greetingDisplay.textContent = "..."` resets the display to original text
-   This gives users a fresh start

### How It All Works Together

Here's what happens when someone uses the greeting generator:

1. **User types their name** → Types "John" in the input field
2. **User clicks "Generate Greeting"** → `generateGreeting()` function runs
3. **JavaScript gets the input** → `nameInput.value` returns "John"
4. **JavaScript creates message** → "Hello, John! Welcome to our website!"
5. **JavaScript displays result** → Message appears in the display area
6. **User sees personalized greeting** → The page shows their custom message

If they click "Clear":

1. **Input field becomes empty** → Ready for new input
2. **Display resets** → Shows original placeholder text

### Key Concepts

**Getting Input Values**

-   `inputElement.value` gets the text that user typed
-   This is how we capture user data for processing
-   Works with text inputs, number inputs, textareas, etc.

**Setting Input Values**

-   `inputElement.value = "new text"` changes what's in the input
-   `inputElement.value = ""` clears the input (empty string)
-   This is how we can reset or pre-fill forms

**String Concatenation**

-   `"Hello, " + name + "!"` combines multiple strings
-   JavaScript automatically converts other types to strings when using `+`
-   This is fundamental for creating dynamic messages

**User Experience**

-   Clear buttons help users start over easily
-   Placeholder text guides users on what to enter
-   Immediate feedback makes the interface feel responsive

---

## Try It Out!

1. Open your HTML file in a browser
2. Type your name in the input field
3. Click "Generate Greeting" - see your personalized message
4. Try different names
5. Click "Clear" to reset and try again

## What Happens With Different Inputs?

Try these experiments:

-   Enter just your first name
-   Enter your full name
-   Try names with spaces (like "Mary Jane")
-   What happens if you leave the field empty?

## What You're Learning

This exercise teaches you:

-   How to get text from input fields
-   How to combine strings with user data
-   How to create personalized, dynamic content
-   How to clear and reset form fields

---

## Practice Exercises

### Exercise 1

Modify the greeting to include the current time. Change the message to: "Hello, [name]! It's currently [current time]. Welcome!"

**Hint:** Use `new Date().toLocaleTimeString()` to get the current time.

### Exercise 2

Add a second input field for the user's age. Generate a greeting that includes both name and age: "Hello, [name]! You are [age] years old. Welcome!"

### Exercise 3

Create multiple greeting styles. Add buttons for "Formal Greeting", "Casual Greeting", and "Excited Greeting" that generate different types of messages:

-   Formal: "Good day, [name]. We are pleased to welcome you."
-   Casual: "Hey [name], what's up? Good to see you!"
-   Excited: "WOW! Hi [name]! This is so AWESOME! Welcome!!!"

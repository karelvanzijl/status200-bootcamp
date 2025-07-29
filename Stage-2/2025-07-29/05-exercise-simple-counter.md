## Navigation

1. [Overview](readme.md)
2. [Exercise: Color Changer](./08-exercise-color-changer.md)
3. [Exercise: Simple Counter](./09-exercise-simple-counter.md) ← _You are here_
4. [Exercise: Name Greeting Generator](./10-exercise-name-greeting.md)
5. [Exercise: Simple Math Quiz](./11-exercise-math-quiz.md)
6. [Exercise: Temperature Converter](./12-exercise-temperature-converter.md)

---

# JavaScript Exercise 4 - Simple Counter

## Setup

### Step 1: Create Project Structure

Use the command prompt to create a new project folder and files.

1. Create a new folder called `simple-counter`
2. Create a subfolder called `js`
3. Create a file `index.html` in the main folder
4. Create a file `scripts.js` in the `js` folder
5. Open the project folder in VS Code

### Step 2: Use this HTML & JavaScript

Copy this code exactly. We're going to build a counter together.

**HTML (`index.html`):**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Simple Counter</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                text-align: center;
                padding: 50px;
            }
            #counterDisplay {
                font-size: 48px;
                font-weight: bold;
                color: #333;
                margin: 30px 0;
                padding: 20px;
                border: 3px solid #333;
                border-radius: 10px;
                background-color: #f0f0f0;
                display: inline-block;
                min-width: 200px;
            }
            button {
                margin: 10px;
                padding: 15px 25px;
                font-size: 18px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }
            .increase {
                background-color: #4caf50;
                color: white;
            }
            .decrease {
                background-color: #f44336;
                color: white;
            }
            .reset {
                background-color: #008cba;
                color: white;
            }
        </style>
    </head>
    <body>
        <h1>Simple Counter</h1>
        <p>Click the buttons to increase, decrease, or reset the counter:</p>

        <div id="counterDisplay">0</div>

        <br />

        <button class="increase" onclick="increaseCounter()">+ Increase</button>
        <button class="decrease" onclick="decreaseCounter()">- Decrease</button>
        <button class="reset" onclick="resetCounter()">🔄 Reset</button>

        <script src="js/scripts.js"></script>
    </body>
</html>
```

**JavaScript (`js/scripts.js`):**

```javascript
// Variable to store the current count
let currentCount = 0;

// Get the display element
const counterDisplay = document.getElementById("counterDisplay");

// Function to increase the counter
function increaseCounter() {
    currentCount = currentCount + 1;
    counterDisplay.textContent = currentCount;
}

// Function to decrease the counter
function decreaseCounter() {
    currentCount = currentCount - 1;
    counterDisplay.textContent = currentCount;
}

// Function to reset the counter
function resetCounter() {
    currentCount = 0;
    counterDisplay.textContent = currentCount;
}
```

## Code Breakdown

Let's break down this counter step by step so you understand how it works with variables and state management.

### HTML Breakdown

**1. The Counter Display**

```html
<div id="counterDisplay">0</div>
```

-   `<div>` creates a container to show the current count
-   `id="counterDisplay"` gives it a unique name for JavaScript to find
-   Starts with "0" as the initial value
-   CSS styling makes it look like a big, prominent display

**2. The Control Buttons**

```html
<button class="increase" onclick="increaseCounter()">+ Increase</button>
<button class="decrease" onclick="decreaseCounter()">- Decrease</button>
<button class="reset" onclick="resetCounter()">🔄 Reset</button>
```

-   Three buttons for different actions: increase, decrease, and reset
-   Each button has an `onclick` event that calls a specific function
-   CSS classes give each button different colors to show their purpose

**3. The Styling**

```css
#counterDisplay {
    font-size: 48px;
    font-weight: bold;
    /* ... more styles ... */
}
```

-   Makes the counter display large and easy to read
-   Adds a border and background to make it stand out
-   Centers everything for a clean look

### JavaScript Breakdown

**1. The Counter Variable**

```javascript
let currentCount = 0;
```

**What's happening here?**

-   `let` creates a variable that can change over time
-   `currentCount` is the name we give to store our number
-   `= 0` sets the starting value to zero
-   This variable remembers the current count between button clicks

**Why `let` instead of `const`?**

-   `const` is for values that never change
-   `let` is for values that can change
-   Since our counter goes up and down, we need `let`

**2. Getting the Display Element**

```javascript
const counterDisplay = document.getElementById("counterDisplay");
```

-   We find the div that shows the counter
-   We use `const` because the element itself doesn't change
-   Only the text content inside it changes

**3. The Increase Function**

```javascript
function increaseCounter() {
    currentCount = currentCount + 1;
    counterDisplay.textContent = currentCount;
}
```

**Breaking this down:**

-   `currentCount = currentCount + 1` adds 1 to the current count
-   This is like saying: "take the current number and add 1 to it"
-   `counterDisplay.textContent = currentCount` updates what the user sees
-   The display immediately shows the new number

**4. The Decrease Function**

```javascript
function decreaseCounter() {
    currentCount = currentCount - 1;
    counterDisplay.textContent = currentCount;
}
```

**Similar pattern:**

-   `currentCount = currentCount - 1` subtracts 1 from the current count
-   The display gets updated with the new number
-   This can make the counter go negative (0, -1, -2, etc.)

**5. The Reset Function**

```javascript
function resetCounter() {
    currentCount = 0;
    counterDisplay.textContent = currentCount;
}
```

**What's happening:**

-   `currentCount = 0` sets the counter back to zero
-   No matter what the current number was, it becomes 0
-   The display shows "0" again

### How It All Works Together

Here's what happens when someone uses the counter:

1. **Page loads** → `currentCount` starts at 0, display shows "0"
2. **User clicks "Increase"** → `increaseCounter()` runs
3. **Counter goes up** → `currentCount` becomes 1, display shows "1"
4. **User clicks "Increase" again** → `currentCount` becomes 2, display shows "2"
5. **User clicks "Decrease"** → `currentCount` becomes 1, display shows "1"
6. **User clicks "Reset"** → `currentCount` becomes 0, display shows "0"

### Key Concepts

**Variables and State**

-   Variables can store information that changes over time
-   The counter's "state" is the current number it's showing
-   Each button click changes the state and updates the display

**Mathematical Operations**

-   `+` adds numbers together
-   `-` subtracts numbers
-   `currentCount = currentCount + 1` is a common pattern for incrementing

**Synchronizing Display**

-   The variable stores the real value
-   The HTML display shows what the user sees
-   We must update both when the value changes

**Function Patterns**

-   Each function does two things: change the variable, update the display
-   This pattern keeps the data and display in sync

---

## Try It Out!

1. Open your HTML file in a browser
2. Click "Increase" several times - watch the number go up
3. Click "Decrease" - watch the number go down
4. Try making the counter go negative
5. Click "Reset" to go back to 0

## What You're Learning

This exercise teaches you:

-   How to use variables to store changing data
-   How multiple functions can work with the same variable
-   How to keep the display synchronized with the data
-   Basic mathematical operations in JavaScript

---

## Practice Exercises

### Exercise 1

Add two new buttons: "Add 5" and "Subtract 5" that change the counter by 5 instead of 1.

### Exercise 2

Add a "Double" button that multiplies the current count by 2. Also add a "Half" button that divides the current count by 2.

**Hint:** Use `*` for multiplication and `/` for division. For the half button, you might get decimal numbers!

## Navigation

1. [Overview](readme.md)
2. [JavaScript Introduction](01-javascript-introduction.md)
3. [JavaScript in HTML](./02-javascript-in-browser.md)
4. [JavaScript Variables](./03-javascript-variables.md)
5. [JavaScript Functions](./04-javascript-functions.md)
6. [Quick Quiz](./05-quick-quiz.md)
7. [Exercise: change text](./06-exercise-and-html.md) ← _You are here_
8. [Exercise: speed calculator](./07-exercise-speed-calculator.md)

---

# JavaScript & HTML Practice

## Setup

### Step 1: Create Project Structure

Use the command prompt to create a new project folder and files.

1. Create a new folder called `js-html-practice`
2. Create a subfolder called `js`
3. Create a file `index.html` in the main folder
4. Create a file `scripts.js` in the `js` folder
5. Open the project folder in VS Code

### Step 2: Use this HTML & JavaScript

Copy this code exactly. We're going to debug and improve it together.

**HTML (`index.html`):**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>JavaScript Practice</title>
    </head>
    <body>
        <h1>JavaScript & HTML Practice</h1>
        <p id="greeting">Hello, World!</p>
        <button id="changeTextButton" onclick="changeMessage()">
            Change Text
        </button>
    </body>
</html>
```

**JavaScript (`js/scripts.js`):**

```javascript
// Select the button and paragraph elements
const button = document.getElementById("changeTextButton");
const greeting = document.getElementById("greeting");

// Function to change the text of the paragraph
function changeMessage() {
    greeting.textContent = "Hello, JavaScript!";
}
```

### Step 3: Link the JavaScript File

When you open the HTML file in your browser, you should see a button. When you click the button, the text in the paragraph should change from "Hello, World!" to "Hello, JavaScript!".

If you followed the steps above, you'll notice it's not working.

**Why not?**
Because the JavaScript file is not linked to the HTML file.

**Let's fix it!**
To link the JavaScript file to your HTML, add the following line just before the closing `</body>` tag in your `index.html` file and use the `src` attribute to point to your JavaScript file.

```html
<body>
    ...
    <script src="js/scripts.js"></script>
</body>
```

## Code Breakdown

Let's break down this code step by step so you understand exactly what's happening. This might look complex at first, but we'll explain each part clearly.

### HTML Breakdown

**1. The Paragraph Element**

```html
<p id="greeting">Hello, World!</p>
```

-   `<p>` creates a paragraph element
-   `id="greeting"` gives this paragraph a unique name/identifier called "greeting"
-   The text "Hello, World!" is what we see on the page
-   **Think of the `id` like a name tag** - it helps JavaScript find this specific element later

**2. The Button Element**

```html
<button id="changeTextButton" onclick="changeMessage()">Change Text</button>
```

-   `<button>` creates a clickable button
-   `id="changeTextButton"` gives this button a unique name (like a name tag)
-   `onclick="changeMessage()"` tells the browser: "When someone clicks this button, call the function named `changeMessage`"
-   "Change Text" is the text that appears on the button

### JavaScript Breakdown

**1. Selecting Elements (Finding HTML Elements)**

```javascript
const button = document.getElementById("changeTextButton");
const greeting = document.getElementById("greeting");
```

**What's happening here?**

-   `document` represents the entire HTML page
-   `getElementById()` is a method that searches the HTML page for an element with a specific ID
-   Think of it like saying: "Hey browser, go find me the element with the ID 'changeTextButton'"
-   We store these found elements in variables so we can use them later

**Analogy:** Imagine you're in a library and you tell the librarian: "Find me the book with the label 'History101'". The librarian searches, finds it, and hands it to you. That's what `getElementById()` does!

**2. The Function Definition**

```javascript
function changeMessage() {
    greeting.textContent = "Hello, JavaScript!";
}
```

**Breaking this down:**

-   `function changeMessage()` creates a new function (a reusable block of code) named "changeMessage"
-   The `()` means this function doesn't need any parameters (inputs)
-   Inside the `{}` is the code that runs when the function is called
-   `greeting.textContent = "Hello, JavaScript!"` changes the text inside our paragraph

**What is `textContent`?**

-   `textContent` is a property that represents the text inside an HTML element
-   When we say `greeting.textContent = "Hello, JavaScript!"`, we're changing the text from "Hello, World!" to "Hello, JavaScript!"

### How It All Works Together

Here's the step-by-step process when someone clicks the button:

1. **User clicks the button** → The browser sees the click
2. **Browser reads `onclick="changeMessage()"`** → "Oh, I need to call the changeMessage function"
3. **Browser finds and runs the `changeMessage` function** → The function executes
4. **Inside the function:** `greeting.textContent = "Hello, JavaScript!"` → The paragraph text changes
5. **User sees the change** → The text on the page updates from "Hello, World!" to "Hello, JavaScript!"

### Key Concepts

**DOM (Document Object Model)**

-   The DOM is how JavaScript talks to HTML
-   Think of it as a bridge between JavaScript and your web page
-   `document.getElementById()` is one way to cross this bridge

**Events**

-   Events are things that happen on a web page (clicks, typing, hovering, etc.)
-   `onclick` is an event that happens when someone clicks an element
-   We can "listen" for these events and make things happen when they occur

**Element Properties**

-   HTML elements have properties (characteristics) we can change
-   `textContent` is one property that controls the text inside an element
-   Other properties include `style` (for appearance), `value` (for form inputs), etc.

### Why This Order Matters

Notice that we put the `<script>` tag at the bottom of the HTML, just before `</body>`. This is important because:

1. **HTML loads first** → The browser creates the paragraph and button
2. **JavaScript loads second** → JavaScript tries to find elements with `getElementById()`
3. **If JavaScript loaded first**, it would try to find elements that don't exist yet and fail!

This is why the script goes at the bottom - to make sure all HTML elements exist before JavaScript tries to find them.

---

## Practice Exercise 1

Can you modify the code so that when you click the button, it changes the text to "Welcome to JavaScript!" instead of "Hello, JavaScript!"?

## Practice Exercise 2

Create a new button below the existing one that, when clicked, changes the text back to "Hello, World!".

## Practice Exercise 3

Add a new paragraph below the button that says "This is a new paragraph." Use JavaScript to change its text to "This paragraph has been updated!" when the button with the ID `changeTextButton` is clicked.

---

After completing these exercises, you should have end up with the following HTML and JavaScript code:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>JavaScript Practice</title>
    </head>
    <body>
        <h1>JavaScript & HTML Practice</h1>
        <p id="greeting">Hello, World!</p>
        <button id="changeTextButton" onclick="changeMessage()">
            Change Text
        </button>
        <button onclick="resetText()">Reset Text</button>
        <p id="anotherParagraph">This is a new paragraph.</p>
        <script src="js/scripts.js"></script>
    </body>
</html>
```

```javascript
// Select the button and paragraph elements
const button = document.getElementById("changeTextButton");
const greeting = document.getElementById("greeting");
const anotherParagraph = document.getElementById("anotherParagraph");

// Function to change the texts
function changeMessage() {
    greeting.textContent = "Welcome to JavaScript!";
    anotherParagraph.textContent = "This paragraph has been updated!";
}

// Function to set the texts back
function resetText() {
    greeting.textContent = "Hello, World!";
    anotherParagraph.textContent = "This is a new paragraph.";
}
```

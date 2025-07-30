## Navigation

1. [Overview](readme.md)
2. [Button Click Exercises](00-exercise-button-click.md) ← _You are here_
3. [Area Calculator Exercise](01-exercise-area-calculator.md)
4. [Shopping Calculator Exercise](02-exercise-shopping-calculator.md)
5. [Age Converter Exercise](03-exercise-age-converter.md)
6. [Simple Counter Exercise](04-exercise-simple-counter.md)
7. [Name Greeting Exercise](05-exercise-name-greeting.md)

---

# Button Click Exercises

Let's start with something simple: making text change when you click a button!

## Setup First!

**Step 1: Create your project structure**

1. Create a new folder called `js-practice`
2. Inside that folder, create:
    - `index.html` (your main HTML file)
    - `script.js` (your JavaScript file)

## Understanding the Basics

**What is a Document?**

-   The **document** is your entire HTML page
-   It contains all the elements like headings, paragraphs, buttons, etc.
-   JavaScript can find and change any part of this document

**What is an ID?**

-   An **ID** is like giving a unique name to each HTML element
-   Think of it like a student ID - each person has only one unique number
-   JavaScript uses these IDs to find exactly which element to change on the page

**How the Connection Works:**

```
1. HTML element has an ID → <h1 id="greeting">
2. Button has onclick → <button onclick="changeText()">
3. JavaScript function finds the ID → document.getElementById("greeting")
4. JavaScript changes the element → .textContent = "New text!"
```

## Example 1: Change Heading Text

**index.html:**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Text Changer</title>
    </head>
    <body>
        <h1 id="pageTitle">My First Website</h1>
        <button onclick="updateTitle()">Update Title</button>

        <script src="script.js"></script>
    </body>
</html>
```

**script.js:**

```javascript
function updateTitle() {
    document.getElementById("pageTitle").textContent =
        "Website Updated Successfully!";
}
```

## Example 2: Change Paragraph Text

**index.html:**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Message Changer</title>
    </head>
    <body>
        <h1>Weather App</h1>
        <p id="weather">Loading weather data...</p>
        <button onclick="showWeather()">Get Weather</button>

        <script src="script.js"></script>
    </body>
</html>
```

**script.js:**

```javascript
function showWeather() {
    document.getElementById("weather").textContent = "Today is sunny and 25°C!";
}
```

## Your Turn: Exercise

Add to Example 2! In the same HTML file, add your own text changer below the existing content.

**Your challenge:**

-   In the same HTML file from Example 2, add a paragraph with `id="temperature"`
-   Add text that says "Click to see temperature"
-   Add a button that says "Show Temperature"
-   Write a JavaScript function that changes the text to "Temperature: 22°C"

**Your HTML should look like this (add to the existing body):**

```html
<p id="temperature">Click to see temperature</p>
<button onclick="showTemp()">Show Temperature</button>
```

**Add this function to your script.js:**

```javascript
function showTemp() {
    // Your code here!
    // Use: document.getElementById("temperature").textContent = "Temperature: 22°C";
}
```

## Key Things to Remember

-   **ID**: Like a name tag (`id="myElement"`)
-   **onclick**: Tells the button what function to run
-   **document.getElementById()**: JavaScript's way to find elements
-   **textContent**: Changes the text inside an element

Once you've tried the exercise, you'll be ready for our area calculator project!

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
        <h1 id="pageTitle">My first website</h1>
        <button onclick="updateTitle()">Update Title</button>

        <h2>Weather App</h2>
        <p id="weather">Loading weather data...</p>
        <button onclick="showWeather()">Get Weather</button>

        <h2>Temperature App</h2>
        <p id="temperature">Loading temperature data...</p>
        <button onclick="showTemperature()">Get Temperature</button>

        <script src="./script.js"></script>
    </body>
</html>
```

```javascript
function updateTitle() {
    document.getElementById("pageTitle").textContent = "New text!";
}

function showWeather() {
    document.getElementById("weather").textContent = "Today is sunny and 25°C!";
}

function showTemperature() {
    document.getElementById("temperature").textContent = "Temperature: 22°C";
}
```

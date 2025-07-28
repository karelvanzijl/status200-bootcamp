## Navigation

1. [Overview](readme.md)
2. [JavaScript Introduction](01-javascript-introduction.md)
3. [JavaScript in HTML](./02-javascript-in-browser.md)
4. [JavaScript Variables](./03-javascript-variables.md)
5. [JavaScript Functions](./04-javascript-functions.md)
6. [Quick Quiz](./05-quick-quiz.md)
7. [Exercise: change text](./06-exercise-and-html.md)
8. [Exercise: speed calculator](./07-exercise-speed-calculator.md) ← _You are here_

---

# JavaScript Exercise 2 - Speed Calculator

## Setup

### Step 1: Create Project Structure

Use the command prompt to create a new project folder and files.

1. Create a new folder called `speed-calculator`
2. Create a subfolder called `js`
3. Create a file `index.html` in the main folder
4. Create a file `scripts.js` in the `js` folder
5. Open the project folder in VS Code

### Step 2: Use this HTML & JavaScript

Copy this code exactly. We're going to build a speed calculator together.

**HTML (`index.html`):**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Speed Calculator</title>
    </head>
    <body>
        <h1>Speed Calculator</h1>
        <p>Enter the distance and time to calculate speed:</p>

        <label for="distance">Distance (km):</label>
        <input type="number" id="distance" placeholder="Enter distance" />
        <br /><br />

        <label for="time">Time (hours):</label>
        <input type="number" id="time" placeholder="Enter time" />
        <br /><br />

        <button onclick="calculateSpeed()">Calculate Speed</button>

        <p id="result">Speed will appear here</p>

        <script src="js/scripts.js"></script>
    </body>
</html>
```

**JavaScript (`js/scripts.js`):**

```javascript
// Function to calculate speed
function calculateSpeed() {
    // Get the input values
    const distanceInput = document.getElementById("distance");
    const timeInput = document.getElementById("time");
    const resultDisplay = document.getElementById("result");

    // Get the actual values from the inputs
    const distance = distanceInput.value;
    const time = timeInput.value;

    // Calculate speed (Speed = Distance / Time)
    const speed = distance / time;

    // Display the result
    resultDisplay.textContent = "Speed: " + speed + " km/h";
}
```

## Code Breakdown

Let's break down this speed calculator step by step so you understand how it works with input fields and calculations.

### HTML Breakdown

**1. The Input Fields**

```html
<input type="number" id="distance" placeholder="Enter distance" />
<input type="number" id="time" placeholder="Enter time" />
```

-   `<input>` creates an input field where users can type
-   `type="number"` tells the browser this input should accept numbers
-   `id="distance"` and `id="time"` give each input a unique name (like name tags)
-   `placeholder="..."` shows hint text inside the input when it's empty

**2. The Labels**

```html
<label for="distance">Distance (km):</label>
<label for="time">Time (hours):</label>
```

-   `<label>` creates text that describes what each input is for
-   `for="distance"` connects this label to the input with `id="distance"`
-   This makes the form more accessible and user-friendly

**3. The Result Display**

```html
<p id="result">Speed will appear here</p>
```

-   This paragraph will show our calculated result
-   It starts with placeholder text that gets replaced by JavaScript

### JavaScript Breakdown

**1. Getting Input Elements**

```javascript
const distanceInput = document.getElementById("distance");
const timeInput = document.getElementById("time");
const resultDisplay = document.getElementById("result");
```

**What's happening here?**

-   We find the input fields and result paragraph using their IDs
-   We store them in variables so we can use them later
-   Think of it like getting references to specific form fields

**2. Getting Values from Inputs**

```javascript
const distance = distanceInput.value;
const time = timeInput.value;
```

**What is `.value`?**

-   `.value` is a property that gets whatever the user typed into an input field
-   For example, if user types "100" in the distance field, `distanceInput.value` will be "100"
-   We store these values in variables for our calculation

**3. The Calculation**

```javascript
const speed = distance / time;
```

**The Math:**

-   Speed = Distance / Time
-   This is the basic physics formula for calculating speed
-   JavaScript uses `/` for division
-   If distance is 100 km and time is 2 hours, speed will be 50 km/h

**4. Displaying the Result**

```javascript
resultDisplay.textContent = "Speed: " + speed + " km/h";
```

**What's happening:**

-   We change the text content of our result paragraph
-   We use `+` to combine (concatenate) strings together
-   If speed is 50, the result will show: "Speed: 50 km/h"

### How It All Works Together

Here's what happens when someone uses the calculator:

1. **User enters values** → Types numbers into the distance and time fields
2. **User clicks "Calculate Speed"** → The `onclick="calculateSpeed()"` triggers
3. **JavaScript gets the input values** → Uses `.value` to read what user typed
4. **JavaScript calculates** → Divides distance by time
5. **JavaScript displays result** → Updates the paragraph with the calculated speed
6. **User sees the answer** → The speed appears on the page

### Key Concepts

**Input Fields**

-   Input fields let users enter data into our web page
-   We use `type="number"` for numeric inputs
-   The `.value` property gets whatever the user typed

**Getting User Input**

-   `document.getElementById("inputId").value` gets text from an input field
-   This is how we get data from users to use in our calculations

**String Concatenation**

-   Using `+` to combine text and numbers: `"Speed: " + speed + " km/h"`
-   JavaScript automatically converts numbers to text when combining with strings

**Real-World Application**

-   This demonstrates how web pages can do useful calculations
-   Users input data, JavaScript processes it, and results are displayed
-   This is the foundation of many web applications

---

## Try It Out!

1. Open your HTML file in a browser
2. Enter a distance (like 100)
3. Enter a time (like 2)
4. Click "Calculate Speed"
5. You should see "Speed: 50 km/h"

## What Could Go Wrong? (Learning Opportunities)

Since we haven't learned about validation yet, try these experiments to see what happens:

-   What if you enter 0 for time?
-   What if you leave one field empty?
-   What if you enter negative numbers?
-   What if you enter letters instead of numbers?

**Note:** These "problems" are actually great learning opportunities! We'll learn how to handle these situations in future lessons.

---

## Practice Exercises

### Exercise 1

Modify the calculator to also show the calculation formula. For example: "100 / 2 = 50 km/h" instead of just "Speed: 50 km/h".

### Exercise 2

Add a third input field for "fuel used" and calculate fuel efficiency (distance / fuel used). Display the result as "Fuel Efficiency: X km/l".

---

After exercise 1 and 2, you calculator HTML and JavaScript files should look something like this:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Speed Calculator</title>
    </head>
    <body>
        <h1>Speed Calculator</h1>
        <p>Enter the distance and time to calculate speed:</p>

        <label for="distance">Distance (km):</label>
        <input type="number" id="distance" placeholder="Enter distance" />
        <br /><br />

        <label for="time">Time (hours):</label>
        <input type="number" id="time" placeholder="Enter time" />
        <br /><br />

        <label for="fuelUsed">Fuel used (liters):</label>
        <input type="number" id="fuelUsed" placeholder="Enter fuel used" />
        <br /><br />

        <button onclick="calculateSpeed()">Calculate Speed & Efficiency</button>

        <p id="resultSpeed">Speed will appear here</p>
        <p id="resultEfficiency">Efficiency will appear here</p>

        <script src="js/scripts.js"></script>
    </body>
</html>
```

```javascript
// Function to calculate speed
function calculateSpeed() {
    // Get element object from HTML (DOM)
    const distanceInput = document.getElementById("distance");
    const timeInput = document.getElementById("time");
    const resultSpeedDisplay = document.getElementById("resultSpeed");
    const fuelUsedInput = document.getElementById("fuelUsed");
    const resultEfficiencyDisplay = document.getElementById("resultEfficiency");

    // Get the actual values from the inputs
    const distance = distanceInput.value;
    const time = timeInput.value;
    const fuelUsed = fuelUsedInput.value;

    // Calculate speed (Speed = Distance / Time)
    const speed = distance / time;

    // Calculate fuel efficiency (Efficiency = Distance / Fuel Used)
    const efficiency = distance / fuelUsed;

    // Display the result for speed
    // resultSpeedDisplay.textContent = "Speed: " + speed + " km/h";
    resultSpeedDisplay.textContent =
        distance + " / " + time + " = " + speed + " km/h";

    // Display the result for efficiency
    resultEfficiencyDisplay.textContent =
        "Fuel Efficiency: " + efficiency + " km/l";
}
```

---

## Home Exercises

Try the following exercises at home to practice what you've learned. We'll go through the solutions in the next lesson.

### Exercise 3

Create a "Clear" button that resets all input fields and the result display to their original state.

We've used `textContent` to change text, but you can also set input values to an empty string `""` to clear them. Instead of retrieving a value from a input field, you can also set the value of a input field. Try see if you can figure out how to do that!

**$Note$:** This is also part of programming: sometimes you want something to happen, but you don't know how to do it yet. In that case, you can try things out, search online, or ask for help. The important thing is to keep experimenting and learning!

### Exercise 4

Change the units. Instead of km/h, calculate speed in meters per second. (Hint: You'll need to convert km to meters and hours to seconds)

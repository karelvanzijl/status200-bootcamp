# JavaScript Exercise - Area Calculator

## Setup

### Step 1: Create Project Structure

Use the command prompt to create a new project folder and files.

1. Create a new folder called `area-calculator`
2. Create a subfolder called `js`
3. Create a file `index.html` in the main folder
4. Create a file `scripts.js` in the `js` folder
5. Open the project folder in VS Code

### Step 2: Use this HTML & JavaScript

Copy this code exactly. We're going to build an area calculator together.

**HTML (`index.html`):**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Area Calculator</title>
    </head>
    <body>
        <h1>Rectangle Area Calculator</h1>
        <p>Enter the width and height to calculate the area:</p>

        <label for="width">Width (cm):</label>
        <input type="number" id="width" placeholder="Enter width" />
        <br /><br />

        <label for="height">Height (cm):</label>
        <input type="number" id="height" placeholder="Enter height" />
        <br /><br />

        <button onclick="calculateArea()">Calculate Area</button>

        <p id="result">Area will appear here</p>

        <script src="js/scripts.js"></script>
    </body>
</html>
```

**JavaScript (`js/scripts.js`):**

```javascript
// Function to calculate area
function calculateArea() {
    // Get the input values
    const widthInput = document.getElementById("width");
    const heightInput = document.getElementById("height");
    const resultDisplay = document.getElementById("result");

    // Get the actual values from the inputs
    const width = widthInput.value;
    const height = heightInput.value;

    // Calculate area (Area = Width × Height)
    const area = width * height;

    // Display the result
    resultDisplay.textContent = "Area: " + area + " cm²";
}
```

## Code Breakdown

Let's break down this area calculator step by step so you understand how it works with input fields and calculations.

### HTML Breakdown

**1. The Input Fields**

```html
<input type="number" id="width" placeholder="Enter width" />
<input type="number" id="height" placeholder="Enter height" />
```

-   `<input>` creates an input field where users can type
-   `type="number"` tells the browser this input should accept numbers
-   `id="width"` and `id="height"` give each input a unique name (like name tags)
-   `placeholder="..."` shows hint text inside the input when it's empty

**2. The Labels**

```html
<label for="width">Width (cm):</label> <label for="height">Height (cm):</label>
```

-   `<label>` creates text that describes what each input is for
-   `for="width"` connects this label to the input with `id="width"`
-   This makes the form more accessible and user-friendly

**3. The Result Display**

```html
<p id="result">Area will appear here</p>
```

-   This paragraph will show our calculated result
-   It starts with placeholder text that gets replaced by JavaScript

### JavaScript Breakdown

**1. Getting Input Elements**

```javascript
const widthInput = document.getElementById("width");
const heightInput = document.getElementById("height");
const resultDisplay = document.getElementById("result");
```

**What's happening here?**

-   We find the input fields and result paragraph using their IDs
-   We store them in variables so we can use them later
-   Think of it like getting references to specific form fields

**2. Getting Values from Inputs**

```javascript
const width = widthInput.value;
const height = heightInput.value;
```

**What is `.value`?**

-   `.value` is a property that gets whatever the user typed into an input field
-   For example, if user types "10" in the width field, `widthInput.value` will be "10"
-   We store these values in variables for our calculation

**3. The Calculation**

```javascript
const area = width * height;
```

**The Math:**

-   Area = Width × Height
-   This is the basic formula for calculating rectangle area
-   JavaScript uses `*` for multiplication
-   If width is 10 cm and height is 5 cm, area will be 50 cm²

**4. Displaying the Result**

```javascript
resultDisplay.textContent = "Area: " + area + " cm²";
```

**What's happening:**

-   We change the text content of our result paragraph
-   We use `+` to combine (concatenate) strings together
-   If area is 50, the result will show: "Area: 50 cm²"

### How It All Works Together

Here's what happens when someone uses the calculator:

1. **User enters values** → Types numbers into the width and height fields
2. **User clicks "Calculate Area"** → The `onclick="calculateArea()"` triggers
3. **JavaScript gets the input values** → Uses `.value` to read what user typed
4. **JavaScript calculates** → Multiplies width by height
5. **JavaScript displays result** → Updates the paragraph with the calculated area
6. **User sees the answer** → The area appears on the page

### Key Concepts

**Input Fields**

-   Input fields let users enter data into our web page
-   We use `type="number"` for numeric inputs
-   The `.value` property gets whatever the user typed

**Getting User Input**

-   `document.getElementById("inputId").value` gets text from an input field
-   This is how we get data from users to use in our calculations

**String Concatenation**

-   Using `+` to combine text and numbers: `"Area: " + area + " cm²"`
-   JavaScript automatically converts numbers to text when combining with strings

**Real-World Application**

-   This demonstrates how web pages can do useful calculations
-   Users input data, JavaScript processes it, and results are displayed
-   This is the foundation of many web applications

---

## Try It Out!

1. Open your HTML file in a browser
2. Enter a width (like 10)
3. Enter a height (like 5)
4. Click "Calculate Area"
5. You should see "Area: 50 cm²"

---

## Practice Exercises

### Exercise 1

Modify the calculator to also show the calculation formula. For example: "10 × 5 = 50 cm²" instead of just "Area: 50 cm²".

### Exercise 2

Add a "Clear" button that resets both input fields and the result display to their original state.

**Hint:** You can set input values to an empty string `""` to clear them, just like you can set `textContent`.

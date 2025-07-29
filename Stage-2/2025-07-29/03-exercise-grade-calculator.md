# JavaScript Exercise - Grade Average Calculator

## Setup

### Step 1: Create Project Structure

Use the command prompt to create a new project folder and files.

1. Create a new folder called `grade-calculator`
2. Create a subfolder called `js`
3. Create a file `index.html` in the main folder
4. Create a file `scripts.js` in the `js` folder
5. Open the project folder in VS Code

### Step 2: Use this HTML & JavaScript

Copy this code exactly. We're going to build a grade average calculator together.

**HTML (`index.html`):**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Grade Calculator</title>
    </head>
    <body>
        <h1>Grade Average Calculator</h1>
        <p>Enter two test scores to calculate the average grade:</p>

        <label for="grade1">First Test Score:</label>
        <input type="number" id="grade1" placeholder="Enter first grade" />
        <br /><br />

        <label for="grade2">Second Test Score:</label>
        <input type="number" id="grade2" placeholder="Enter second grade" />
        <br /><br />

        <button onclick="calculateAverage()">Calculate Average</button>

        <p id="result">Average will appear here</p>

        <script src="js/scripts.js"></script>
    </body>
</html>
```

**JavaScript (`js/scripts.js`):**

```javascript
// Function to calculate grade average
function calculateAverage() {
    // Get the input values
    const grade1Input = document.getElementById("grade1");
    const grade2Input = document.getElementById("grade2");
    const resultDisplay = document.getElementById("result");

    // Get the actual values from the inputs
    const grade1 = grade1Input.value;
    const grade2 = grade2Input.value;

    // Calculate average (Average = (Grade1 + Grade2) / 2)
    const average = (grade1 + grade2) / 2;

    // Display the result
    resultDisplay.textContent = "Average grade: " + average + "/10";
}
```

## Code Breakdown

Let's break down this grade calculator step by step so you understand how it works with input fields and calculations.

### HTML Breakdown

**1. The Input Fields**

```html
<input type="number" id="grade1" placeholder="Enter first grade" />
<input type="number" id="grade2" placeholder="Enter second grade" />
```

-   `<input>` creates an input field where users can type
-   `type="number"` tells the browser this input should accept numbers
-   `id="grade1"` and `id="grade2"` give each input a unique name (like name tags)
-   `placeholder="..."` shows hint text inside the input when it's empty

**2. The Labels**

```html
<label for="grade1">First Test Score:</label>
<label for="grade2">Second Test Score:</label>
```

-   `<label>` creates text that describes what each input is for
-   `for="grade1"` connects this label to the input with `id="grade1"`
-   This makes the form more accessible and user-friendly

**3. The Result Display**

```html
<p id="result">Average will appear here</p>
```

-   This paragraph will show our calculated result
-   It starts with placeholder text that gets replaced by JavaScript

### JavaScript Breakdown

**1. Getting Input Elements**

```javascript
const grade1Input = document.getElementById("grade1");
const grade2Input = document.getElementById("grade2");
const resultDisplay = document.getElementById("result");
```

**What's happening here?**

-   We find the input fields and result paragraph using their IDs
-   We store them in variables so we can use them later
-   Think of it like getting references to specific form fields

**2. Getting Values from Inputs**

```javascript
const grade1 = grade1Input.value;
const grade2 = grade2Input.value;
```

**What is `.value`?**

-   `.value` is a property that gets whatever the user typed into an input field
-   For example, if user types "8" in the first grade field, `grade1Input.value` will be "8"
-   We store these values in variables for our calculation

**3. The Calculation**

```javascript
const average = (grade1 + grade2) / 2;
```

**The Math:**

-   Average = (Grade1 + Grade2) / 2
-   This is the basic formula for calculating the average of two numbers
-   JavaScript uses `+` for addition and `/` for division
-   The parentheses `()` make sure addition happens before division
-   If grade1 is 8 and grade2 is 6, average will be 7

**4. Displaying the Result**

```javascript
resultDisplay.textContent = "Average grade: " + average + "/10";
```

**What's happening:**

-   We change the text content of our result paragraph
-   We use `+` to combine (concatenate) strings together
-   If average is 7, the result will show: "Average grade: 7/10"

### How It All Works Together

Here's what happens when someone uses the calculator:

1. **User enters values** → Types numbers into the two grade fields
2. **User clicks "Calculate Average"** → The `onclick="calculateAverage()"` triggers
3. **JavaScript gets the input values** → Uses `.value` to read what user typed
4. **JavaScript calculates** → Adds the grades together and divides by 2
5. **JavaScript displays result** → Updates the paragraph with the calculated average
6. **User sees the answer** → The average appears on the page

### Key Concepts

**Input Fields**

-   Input fields let users enter data into our web page
-   We use `type="number"` for numeric inputs
-   The `.value` property gets whatever the user typed

**Getting User Input**

-   `document.getElementById("inputId").value` gets text from an input field
-   This is how we get data from users to use in our calculations

**String Concatenation**

-   Using `+` to combine text and numbers: `"Average grade: " + average + "/10"`
-   JavaScript automatically converts numbers to text when combining with strings

**Order of Operations**

-   Parentheses `()` control the order of calculations
-   `(grade1 + grade2) / 2` ensures addition happens before division
-   Without parentheses, `grade1 + grade2 / 2` would divide grade2 by 2 first!

**Real-World Application**

-   This demonstrates how web pages can do useful calculations
-   Users input data, JavaScript processes it, and results are displayed
-   This is the foundation of many web applications

---

## Try It Out!

1. Open your HTML file in a browser
2. Enter a first grade (like 8)
3. Enter a second grade (like 6)
4. Click "Calculate Average"
5. You should see "Average grade: 7/10"

---

## Practice Exercises

### Exercise 1

Modify the calculator to also show the calculation formula. For example: "(8 + 6) / 2 = 7/10" instead of just "Average grade: 7/10".

### Exercise 2

Add a third input for a third test score and calculate the average of three grades instead of two.

**Hint:** Average of three = (Grade1 + Grade2 + Grade3) / 3

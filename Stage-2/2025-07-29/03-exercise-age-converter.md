# JavaScript Exercise - Age Converter

## Setup

### Step 1: Create Project Structure

Use the command prompt to create a new project folder and files.

1. Create a new folder called `age-converter`
2. Create a subfolder called `js`
3. Create a file `index.html` in the main folder
4. Create a file `scripts.js` in the `js` folder
5. Open the project folder in VS Code

### Step 2: Use this HTML & JavaScript

Copy this code exactly. We're going to build an age converter together.

**HTML (`index.html`):**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Age Converter</title>
    </head>
    <body>
        <h1>Age to Days Converter</h1>
        <p>Enter your age in years to see how many days you've lived:</p>

        <label for="ageYears">Age in years:</label>
        <input type="number" id="ageYears" placeholder="Enter your age" />
        <br /><br />

        <button onclick="convertAge()">Convert to Days</button>

        <p id="result">Days will appear here</p>

        <script src="js/scripts.js"></script>
    </body>
</html>
```

**JavaScript (`js/scripts.js`):**

```javascript
// Function to convert age to days
function convertAge() {
    // Get the input values
    const ageYearsInput = document.getElementById("ageYears");
    const resultDisplay = document.getElementById("result");

    // Get the actual value from the input
    const ageYears = ageYearsInput.value;

    // Convert to days (Days = Years × 365)
    const ageDays = ageYears * 365;

    // Display the result
    resultDisplay.textContent =
        "You have lived approximately " + ageDays + " days!";
}
```

## Code Breakdown

Let's break down this age converter step by step so you understand how it works with input fields and calculations.

### HTML Breakdown

**1. The Input Field**

```html
<input type="number" id="ageYears" placeholder="Enter your age" />
```

-   `<input>` creates an input field where users can type
-   `type="number"` tells the browser this input should accept numbers
-   `id="ageYears"` gives this input a unique name (like a name tag)
-   `placeholder="..."` shows hint text inside the input when it's empty

**2. The Label**

```html
<label for="ageYears">Age in years:</label>
```

-   `<label>` creates text that describes what the input is for
-   `for="ageYears"` connects this label to the input with `id="ageYears"`
-   This makes the form more accessible and user-friendly

**3. The Result Display**

```html
<p id="result">Days will appear here</p>
```

-   This paragraph will show our calculated result
-   It starts with placeholder text that gets replaced by JavaScript

### JavaScript Breakdown

**1. Getting Input Elements**

```javascript
const ageYearsInput = document.getElementById("ageYears");
const resultDisplay = document.getElementById("result");
```

**What's happening here?**

-   We find the input field and result paragraph using their IDs
-   We store them in variables so we can use them later
-   Think of it like getting references to specific form fields

**2. Getting Values from Input**

```javascript
const ageYears = ageYearsInput.value;
```

**What is `.value`?**

-   `.value` is a property that gets whatever the user typed into an input field
-   For example, if user types "25" in the age field, `ageYearsInput.value` will be "25"
-   We store this value in a variable for our calculation

**3. The Calculation**

```javascript
const ageDays = ageYears * 365;
```

**The Math:**

-   Days = Years × 365
-   This converts years to approximate days (ignoring leap years for simplicity)
-   JavaScript uses `*` for multiplication
-   If age is 25 years, total days will be 9,125 days

**4. Displaying the Result**

```javascript
resultDisplay.textContent =
    "You have lived approximately " + ageDays + " days!";
```

**What's happening:**

-   We change the text content of our result paragraph
-   We use `+` to combine (concatenate) strings together
-   If ageDays is 9125, the result will show: "You have lived approximately 9125 days!"

### How It All Works Together

Here's what happens when someone uses the converter:

1. **User enters value** → Types their age in years into the input field
2. **User clicks "Convert to Days"** → The `onclick="convertAge()"` triggers
3. **JavaScript gets the input value** → Uses `.value` to read what user typed
4. **JavaScript calculates** → Multiplies age by 365
5. **JavaScript displays result** → Updates the paragraph with the calculated days
6. **User sees the answer** → The total days appears on the page

### Key Concepts

**Input Fields**

-   Input fields let users enter data into our web page
-   We use `type="number"` for numeric inputs
-   The `.value` property gets whatever the user typed

**Getting User Input**

-   `document.getElementById("inputId").value` gets text from an input field
-   This is how we get data from users to use in our calculations

**String Concatenation**

-   Using `+` to combine text and numbers: `"You have lived approximately " + ageDays + " days!"`
-   JavaScript automatically converts numbers to text when combining with strings

**Unit Conversion**

-   Converting between different units (years to days)
-   Shows how multiplication can be used for conversions
-   Real-world applications include currency conversion, temperature conversion, etc.

**Real-World Application**

-   This demonstrates how web pages can do useful calculations
-   Users input data, JavaScript processes it, and results are displayed
-   This is the foundation of many web applications

---

## Try It Out!

1. Open your HTML file in a browser
2. Enter your age (like 25)
3. Click "Convert to Days"
4. You should see "You have lived approximately 9125 days!"

---

## Practice Exercises

### Exercise 1

Modify the converter to also show the calculation formula. For example: "25 × 365 = 9125 days" instead of just showing the result.

### Exercise 2

Add a second conversion that also calculates hours and minutes. Add two more result paragraphs that show:

-   Hours: age × 365 × 24
-   Minutes: age × 365 × 24 × 60

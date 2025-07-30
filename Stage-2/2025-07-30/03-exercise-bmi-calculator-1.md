# Exercise: BMI Calculator 1.0

## Overview

Your task is to create a **Body Mass Index (BMI) Calculator** using HTML and JavaScript. This assignment will test your understanding of:

-   HTML input fields and forms
-   JavaScript functions
-   Getting values from input fields
-   Performing calculations
-   Displaying results to users

## What is BMI?

**Body Mass Index (BMI)** is a measure used to determine if a person has a healthy weight for their height.

**Formula:** `BMI = weight (kg) / (height (m))^2`

**Example:** If someone weighs 70 kg and is 1.75 m tall:

-   BMI = 70 / (1.75 \* 1.75) = 70 / 3.0625 = 22.86

**$Note$:** _Don't worry about the amount of decimal places for the BMI value. We'll keep it simple for now and just show the results of the calculation without rounding._

## Assignment Requirements

### Part 1: Basic BMI Calculator

Create a web page that:

1. **Has a title** - "BMI Calculator"
2. **Has two input fields:**
    - Weight (in kilograms)
    - Height (in meters)
3. **Has a button** - "Calculate BMI"
4. **Displays the result** - Shows the calculated BMI value

### Part 2: Personalized Results

If you finish Part 1 early, make the calculator more personal:

1. **Add a name input field** - "Enter your name"
2. **Use the name in your result** - Instead of showing "Your BMI is 22.86", show "Hello John, your BMI is 22.86"

**Example:** If someone enters "Sarah" as their name, the result should display: "Hello Sarah, your BMI is 22.86"

## Testing Your Calculator

Test your calculator with these values:

### Task 1

-   **Weight: 70 kg, Height: 1.75 m** → Your BMI is 22.86
-   **Weight: 80 kg, Height: 1.80 m** → Your BMI is 24.69
-   **Weight: 60 kg, Height: 1.65 m** → Your BMI is 22.04

### Task 2

-   **Name:** Alex,
-   **Weight:** 70 kg,
-   **Height:** 1.75 m

Should show _"Hello Alex, your BMI is 22.86"_

---

You should have ended up with something like this (not exact, but functionally similar):

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>BMI Calculator</title>
    </head>
    <body>
        <h1>BMI Calculator</h1>
        <p>
            <label for="name">Your name</label>
            <input type="text" id="name" placeholder="Enter name" />
        </p>
        <p>
            <label for="weight">Weight (kg)</label>
            <input type="number" id="weight" placeholder="Enter your weight" />
        </p>
        <p>
            <label for="height">Height (m)</label>
            <input type="number" id="height" placeholder="Enter your height" />
        </p>
        <p>
            <button onclick="calculateBmi()">Calculate BMI Score</button>
        </p>
        <p id="result"></p>
        <script src="./script.js"></script>
    </body>
</html>
```

```javascript
function calculateBmi() {
    // Step 1: HTML input fields
    // Step 2: get user input
    const name = document.getElementById("name").value;
    const weight = document.getElementById("weight").value;
    const height = document.getElementById("height").value;

    // Step 3: process / calculation
    const bmiScore = weight / (height * height);

    // Step 4: create message
    const message = "Hello " + name + ", your BMI is " + bmiScore;

    // Step 5: display message in HTML
    document.getElementById("result").textContent = message;
}
```

---

### Task 3: change height input to cm

Instead of asking for height in meters, change the input field to ask for height in centimeters.

The BMI formula still needs meters, so you need to change something.

### Task 4: two unit systems

Add a dropdown to select between two unit systems:

```html
<select>
    <option value="metric">Metric (kg, cm)</option>
    <option value="imperial">Imperial (lbs, inches)</option>
</select>
```

> A `select` element also has event listeners, just like buttons (`onclick`). For this execise, you can use the `onchange` event to trigger a function when the user selects a different unit system.

1. When the users selects "Metric", The labels should say "Weight (kg)" and "Height (cm)".
2. When the users selects "Imperial", The labels should change to "Weight (lbs)" and "Height (inches)".
3. The calculation should also change:
    - For Metric: `BMI = weight (kg) / (height (m))^2)`
    - For Imperial: `BMI = (weight (lbs) / (height (inches) * height (inches)) * 703`

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

## Assignment Requirements

### Part 1: Basic BMI Calculator

Create a web page that:

1. **Has a title** - "BMI Calculator"
2. **Has two input fields:**
    - Weight (in kilograms)
    - Height (in meters)
3. **Has a button** - "Calculate BMI"
4. **Displays the result** - Shows the calculated BMI value
5. **Uses JavaScript** - All calculations must be done in JavaScript

### Part 2: Personalized Results (Bonus)

If you finish Part 1 early, make the calculator more personal:

1. **Add a name input field** - "Enter your name"
2. **Use the name in your result** - Instead of showing "Your BMI is 22.86", show "Hello John, your BMI is 22.86"

**Example:** If someone enters "Sarah" as their name, the result should display: "Hello Sarah, your BMI is 22.86"

## Project Setup

### Step 1: Create Project Structure

1. Create a new folder called `bmi-calculator-1`
2. Create a subfolder called `js`
3. Create `index.html` in the main folder
4. Create `scripts.js` in the `js` folder
5. Open the project folder in VS Code

### Step 2: Start with Basic HTML Structure

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>BMI Calculator</title>
    </head>
    <body>
        <!-- Your HTML goes here -->

        <!-- Don't forget to link your JavaScript file! -->
        <script src="js/scripts.js"></script>
    </body>
</html>
```

## Hints and Tips

### HTML Hints

-   Use `<input type="number">` for numeric inputs (weight and height)
-   Use `<input type="text">` for text inputs (name)
-   Give each input a unique `id` so JavaScript can find them
-   Use `<label>` elements to describe your inputs
-   Remember to add `onclick="functionName()"` to your button

### JavaScript Hints

-   Use `document.getElementById("inputId").value` to get input values
-   The BMI formula is: `weight / (height * height)`
-   Use `textContent` to display results in a paragraph
-   For the bonus: Use `+` to combine strings: `"Hello " + name + ", your BMI is " + bmi`
-   Don't forget to create a function that gets called when the button is clicked

### Example Structure (Don't Copy Exactly!)

```javascript
function calculateBMI() {
    // Get input values (weight, height, and optionally name)
    // Do the calculation
    // Display the result (with or without name)
}
```

## Testing Your Calculator

Test your calculator with these values:

1. **Weight: 70 kg, Height: 1.75 m** → Your BMI is 22.86
2. **Weight: 80 kg, Height: 1.80 m** → Your BMI is 24.69
3. **Weight: 60 kg, Height: 1.65 m** → Your BMI is 22.04

Don't worry about the amount of decimal places for the BMI value. We'll keep it simple for now and just show the results of the calculation without rounding.

**For the bonus (with name):**

-   **Name: "Alex", Weight: 70 kg, Height: 1.75 m** → Should show "Hello Alex, your BMI is 22.86"

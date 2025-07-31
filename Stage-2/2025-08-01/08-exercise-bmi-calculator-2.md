## Navigation

1. [Overview](readme.md)
2. [Understanding Web App Logic Flow](01-web-app-logic-flow.md)
3. [JavaScript Variables in Web Apps](02-variable-flow.md)
4. [Counter Exercise Practice](03-counter-exercise.md)
5. [BMI Calculator Exercise - Part 1](04-exercise-bmi-calculator-1.md) ← _You are here_

---

# Exercise: BMI Calculator 2.0

Lets improve our BMI Calculator from the previous exercise by adding more features and making it more user-friendly.

## Setup

Use teh following HTML and Javascript code as a starting point for your BMI Calculator:

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
            <label for="height">Height (cm)</label>
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
// Function to calculate BMI Score
function calculateBmi() {
    // Step 2: get user input
    const name = document.getElementById("name").value;
    const weight = document.getElementById("weight").value;
    const height = document.getElementById("height").value;

    // Step 3: process / calculation
    const heightInMeters = height / 100;
    const bmiScore = weight / (heightInMeters * heightInMeters);

    // Step 4: create message
    const message = "Hello " + name + ", your BMI is " + bmiScore;

    // Step 5: display message in HTML
    document.getElementById("result").textContent = message;
}
```

### Task 1: Classification

Modify your BMI calculator to classify the user's BMI into categories:

-   Underweight: BMI < 18.5
-   Normal weight: 18.5 ≤ BMI < 24.9
-   Overweight: 25 ≤ BMI < 29.9
-   Obesity: BMI ≥ 30

**The expected output** in the HTML should be something like this:

-   Hello John, your BMI is 17.5 (Underweight)
-   Hello Sarah, your BMI is 22.0 (Normal weight)
-   Hello Mike, your BMI is 27.5 (Overweight)
-   Hello Anna, your BMI is 32.0 (Obesity)

### Task 2: Add colors

Add some colors to the BMI result based on the classification:

-   Underweight: Blue
-   Normal weight: Green
-   Overweight: Orange
-   Obesity: Red

**The expected output** in the HTML should be the same text as we ended with in Task 1, but with the text color changed based on the classification.

**Hint:** You can use the `style` property of the HTML element to change its color. For example:

```javascript
document.getElementById("result").style.color = "blue";
```

Or any style for that matter, like font size, background color, etc.

```javascript
document.getElementById("result").style.fontSize = "20px";
document.getElementById("result").style.backgroundColor = "lightblue";
```

### Task 3: Two unit systems

1. Add a dropdown menu allowing users to select between "Metric" (kg, cm) and "Imperial" (lbs, inches).
2. Change the labels and calculation based on the selected unit system.
3. Modify your calculation to handle both unit systems:
    - For Metric: `BMI = weight (kg) / (height (m))^2)`
    - For Imperial: `BMI = (weight (lbs) / (height (inches) * height (inches)) * 703`

#### Important notes for task 3:

This exercise requires new a HTML element, a new trigger event you can listen to!

##### The `<select>` element

This element allows users to choose from a list of options. You write it like this:

```html
<select id="unitSystem">
    <option value="metric">Metric (kg, cm)</option>
    <option value="imperial">Imperial (lbs, inches)</option>
</select>
```

The `value` attribute is used to identify which option was selected. You can use this value in your JavaScript code to determine which unit system the user has chosen _(just like hwo we got the value of the input field)_:

```javascript
const selectedUnitSystem = document.getElementById("unitSystem").value;
```

##### The `onchange` event

There are many events you can listen to in JavaScript. So far we've only used the `onclick` event, which is triggered when a user clicks on an element. But for this exercise, we need to listen to the `onchange` event. This event is triggered when the user changes the selected option in a `<select>` element.

To use this event, you can add it directly to the `<select>` element like this:

```html
<select id="unitSystem" onchange="changeUnitSystem()"></select>
```

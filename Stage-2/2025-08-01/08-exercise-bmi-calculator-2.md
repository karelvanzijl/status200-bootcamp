## Navigation

1. [Overview](readme.md)
2. [Ternary Operator](./01-js-ternary-operator.md)
3. [Exercise: Ternary Operator](./02-exercise-ternary-operator.md)
4. [Logical Operators](./03-js-logical-operators.md)
5. [Exercise: Logical Operators](./04-exercise-logical-operators.md)
6. [Quick Quiz - Operators](./05-quick-quiz-javascript-operators.md)
7. [If ... else Statements](./06-js-if-else.md)
8. [Exercise: If ... else Statements](./07-exercise-for-if.md)
9. [Exercise: BMI Calculator 2.0](./08-exercise-bmi-calculator-2.md) ← _You are here_
10. [ssignment: ATM Machine - Version 1.0](./09-assignment-atm-v1.md)

---

# Exercise: BMI Calculator 2.0

Lets improve our BMI Calculator from the previous exercise by adding more features and making it more user-friendly.

## Setup

Use the following HTML and Javascript code as a starting point for your BMI Calculator:

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
    let message = "Hello " + name + ", your BMI is " + bmiScore;
    let fontColor = "";

    // Classify score
    if (bmiScore < 18.5) {
        message += " (Underweight)";
        fontColor = "blue";
    } else if (bmiScore < 24.9) {
        message += " (Normal weight)";
        fontColor = "green";
    } else if (bmiScore < 29.9) {
        message += " (Overweight)";
        fontColor = "orange";
    } else {
        message += " (Obese)";
        fontColor = "red";
    }

    // Step 5: display message in HTML
    document.getElementById("result").style.color = fontColor; // Set style font color
    document.getElementById("result").textContent = message; // Show message in HTML
}
```

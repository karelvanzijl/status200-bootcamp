# JavaScript Exercise - Age Converter

### Exercise 1

Create a age converter.

The user can enter their age in years, and the converter will calculate and display their age in days. The age in days is displayed in a paragraph below the input field.

**Hint:** Use the formula `age × 365` to convert years to days.

### Exercise 2

Modify the converter to also show the calculation formula. For example: "25 × 365 = 9125 days" instead of just showing the result.

### Exercise 3

Add a second conversion that also calculates hours and minutes. Add two more result paragraphs that show:

-   Hours: age × 365 × 24
-   Minutes: age × 365 × 24 × 60

### Exercise 4

Do you think you could rewrite the converter so that the user inputs their birth year instead of their age in days?

---

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Age Converter</title>
    </head>
    <body>
        <!-- Original input (when we were asking for age in years) -->
        <!-- <input
            id="userInput"
            type="number"
            placeholder="Enter your age in years"
        /> -->

        <input
            id="userInput"
            type="number"
            placeholder="Enter your birth year"
        />

        <button onclick="converter()">Convert my age</button>
        <p id="ageInDays"></p>
        <p id="ageInHours"></p>
        <p id="ageInMinutes"></p>
        <script src="./js/script.js"></script>
    </body>
</html>
```

```javascript
function converter() {
    // Get input element value
    const birthYear = document.getElementById("userInput").value;

    // Get the user age in years
    const years = 2025 - birthYear;

    // Convert years to days
    const days = years * 365;

    // Convert years to hours
    const hours = days * 24;

    // Convert to minutes
    const minutes = hours * 60;

    // Show days result to user
    document.getElementById("ageInDays").textContent =
        years + " x 365 = " + days + " days";

    // Show hours result to user
    document.getElementById("ageInHours").textContent =
        years + " x 365 x 24 = " + hours + " hours";

    // Show minutes result to user
    document.getElementById("ageInMinutes").textContent =
        years + " x 365 x 24 x 60 = " + minutes + " minutes";
}
```

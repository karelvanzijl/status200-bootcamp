## Navigation

1. [Overview](readme.md)
2. [Button Click Exercises](00-exercise-button-click.md)
3. [Area Calculator Exercise](01-exercise-area-calculator.md)
4. [Shopping Calculator Exercise](02-exercise-shopping-calculator.md)
5. [Age Converter Exercise](03-exercise-age-converter.md)
6. [Simple Counter Exercise](04-exercise-simple-counter.md) ← _You are here_
7. [Name Greeting Exercise](05-exercise-name-greeting.md)

---

# JavaScript Exercise - Simple Counter

**Difficult part:**

-   What variable declaration should you use for your counter?
-   Where should you place the variable declaration?

### Exercise 1

Create a counter that starts at 0. The user can click a button to increase the counter by 1. The current count is displayed in a paragraph below the button.

### Exercise 2

Add two new buttons: "Add 5" and "Subtract 5" that change the counter by 5 instead of 1.

### Exercise 3

Add a "Double" button that multiplies the current count by 2. Also add a "Half" button that divides the current count by 2.

**Hint:** Use `*` for multiplication and `/` for division. For the half button, you might get decimal numbers!

---

If you followed the steps during class, you should have ended up with something like this:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Simple Counter</title>
    </head>
    <body>
        <h1>Counter</h1>
        <p>Click on the buttons to increase or decrease the count.</p>
        <h2 id="counterValue">0</h2>
        <p>
            <button onclick="increase()">Increase by 1</button>
            <button onclick="increaseByFive()">Increase by 5</button>
            <button onclick="decrease()">Decrease by 1</button>
            <button onclick="decreaseByFive()">Decrease by 5</button>
            <button onclick="double()">Double</button>
            <button onclick="reset()">reset</button>
        </p>
        <script src="./script.js"></script>
    </body>
</html>
```

```javascript
// We're keeping track of the counter in a variable
// We declare it globally so that all functions can access it
let counter = 0;

// This is the element where we will display the counter value
// We're also declaring it globally so we don't have to look for it every time we want to update the display
const counterValue = document.getElementById("counterValue");

function increase() {
    counter = counter + 1;
    counterValue.textContent = counter;
}

function decrease() {
    counter = counter - 1;
    counterValue.textContent = counter;
}

function reset() {
    counter = 0;
    counterValue.textContent = counter;
}

function increaseByFive() {
    counter = counter + 5;
    counterValue.textContent = counter;
}

function decreaseByFive() {
    counter = counter - 5;
    counterValue.textContent = counter;
}

function double() {
    counter = counter * 2;
    counterValue.textContent = counter;
}
```

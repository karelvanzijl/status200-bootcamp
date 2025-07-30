## Navigation

1. [Overview](readme.md)
2. [Button Click Exercises](00-exercise-button-click.md)
3. [Area Calculator Exercise](01-exercise-area-calculator.md)
4. [Shopping Calculator Exercise](02-exercise-shopping-calculator.md) ← _You are here_
5. [Age Converter Exercise](03-exercise-age-converter.md)
6. [Simple Counter Exercise](04-exercise-simple-counter.md)
7. [Name Greeting Exercise](05-exercise-name-greeting.md)

---

# JavaScript Exercise - Shopping Total Calculator

## Setup

### Step 1: Create Project Structure

Use the command prompt to create a new project folder and files.

1. Create a new folder called `shopping-calculator`
2. Create a subfolder called `js`
3. Create a file `index.html` in the main folder
4. Create a file `scripts.js` in the `js` folder
5. Open the project folder in VS Code

### Step 2: Use this HTML & JavaScript

Copy this code exactly. We're going to build a shopping total calculator together.

**HTML (`index.html`):**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Shopping Calculator</title>
    </head>
    <body>
        <h1>Shopping Total Calculator</h1>
        <p>Enter the price and quantity to calculate the total cost:</p>

        <label for="price">Price per item (€):</label>
        <input type="number" id="price" placeholder="Enter price" />
        <br /><br />

        <label for="quantity">Quantity:</label>
        <input type="number" id="quantity" placeholder="Enter quantity" />
        <br /><br />

        <button onclick="calculateTotal()">Calculate Total</button>

        <p id="result">Total will appear here</p>

        <script src="js/scripts.js"></script>
    </body>
</html>
```

**JavaScript (`js/scripts.js`):**

```javascript
// Function to calculate shopping total
function calculateTotal() {
    // Get the input values
    const priceInput = document.getElementById("price");
    const quantityInput = document.getElementById("quantity");
    const resultDisplay = document.getElementById("result");

    // Get the actual values from the inputs
    const price = priceInput.value;
    const quantity = quantityInput.value;

    // Calculate total (Total = Price × Quantity)
    const total = price * quantity;

    // Display the result
    resultDisplay.textContent = "Total: €" + total;
}
```

## Code Breakdown

Let's break down this shopping calculator step by step so you understand how it works with input fields and calculations.

### HTML Breakdown

**1. The Input Fields**

```html
<input type="number" id="price" placeholder="Enter price" />
<input type="number" id="quantity" placeholder="Enter quantity" />
```

-   `<input>` creates an input field where users can type
-   `type="number"` tells the browser this input should accept numbers
-   `id="price"` and `id="quantity"` give each input a unique name (like name tags)
-   `placeholder="..."` shows hint text inside the input when it's empty

**2. The Labels**

```html
<label for="price">Price per item (€):</label>
<label for="quantity">Quantity:</label>
```

-   `<label>` creates text that describes what each input is for
-   `for="price"` connects this label to the input with `id="price"`
-   This makes the form more accessible and user-friendly

**3. The Result Display**

```html
<p id="result">Total will appear here</p>
```

-   This paragraph will show our calculated result
-   It starts with placeholder text that gets replaced by JavaScript

### JavaScript Breakdown

**1. Getting Input Elements**

```javascript
const priceInput = document.getElementById("price");
const quantityInput = document.getElementById("quantity");
const resultDisplay = document.getElementById("result");
```

**What's happening here?**

-   We find the input fields and result paragraph using their IDs
-   We store them in variables so we can use them later
-   Think of it like getting references to specific form fields

**2. Getting Values from Inputs**

```javascript
const price = priceInput.value;
const quantity = quantityInput.value;
```

**What is `.value`?**

-   `.value` is a property that gets whatever the user typed into an input field
-   For example, if user types "2.50" in the price field, `priceInput.value` will be "2.50"
-   We store these values in variables for our calculation

**3. The Calculation**

```javascript
const total = price * quantity;
```

**The Math:**

-   Total = Price × Quantity
-   This is the basic formula for calculating shopping totals
-   JavaScript uses `*` for multiplication
-   If price is €2.50 and quantity is 3, total will be €7.50

**4. Displaying the Result**

```javascript
resultDisplay.textContent = "Total: €" + total;
```

**What's happening:**

-   We change the text content of our result paragraph
-   We use `+` to combine (concatenate) strings together
-   If total is 7.5, the result will show: "Total: €7.5"

### How It All Works Together

Here's what happens when someone uses the calculator:

1. **User enters values** → Types numbers into the price and quantity fields
2. **User clicks "Calculate Total"** → The `onclick="calculateTotal()"` triggers
3. **JavaScript gets the input values** → Uses `.value` to read what user typed
4. **JavaScript calculates** → Multiplies price by quantity
5. **JavaScript displays result** → Updates the paragraph with the calculated total
6. **User sees the answer** → The total appears on the page

### Key Concepts

**Input Fields**

-   Input fields let users enter data into our web page
-   We use `type="number"` for numeric inputs
-   The `.value` property gets whatever the user typed

**Getting User Input**

-   `document.getElementById("inputId").value` gets text from an input field
-   This is how we get data from users to use in our calculations

**String Concatenation**

-   Using `+` to combine text and numbers: `"Total: €" + total`
-   JavaScript automatically converts numbers to text when combining with strings

**Real-World Application**

-   This demonstrates how web pages can do useful calculations
-   Users input data, JavaScript processes it, and results are displayed
-   This is the foundation of many web applications

---

## Try It Out!

1. Open your HTML file in a browser
2. Enter a price (like 2.50)
3. Enter a quantity (like 3)
4. Click "Calculate Total"
5. You should see "Total: €7.5"

---

## Practice Exercises

### Exercise 1

Modify the calculator to also show the calculation formula. For example: "€2.50 × 3 = €7.50" instead of just "Total: €7.5".

### Exercise 2

Add a third input for "discount percentage" and calculate the final price after discount. Display both the subtotal and the final price.

**Hint:** Final price = Total - (Total × Discount / 100)

---

If you followed the steps during class, you should have ended up with something like this:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Shopping Calculator</title>
    </head>
    <body>
        <h1>Shopping Total Calculator</h1>
        <p>Enter the price and quantity to calculate the total cost:</p>
        <p>
            <label for="price">Price per item (€):</label>
            <input type="number" id="price" placeholder="Enter price" />
        </p>
        <p>
            <label for="quantity">Quantity:</label>
            <input type="number" id="quantity" placeholder="Enter quantity" />
        </p>
        <p>
            <label for="discount">Disount (%):</label>
            <input
                type="number"
                id="discount"
                placeholder="Enter discount percentage"
            />
        </p>
        <p>
            <button onclick="calculateTotal()">Calculate Total</button>
        </p>
        <p id="result"></p>
        <script src="./js/script.js"></script>
    </body>
</html>
```

```javascript
function calculateTotal() {
    // Get user input values
    const priceInput = document.getElementById("price").value;
    const quantityInput = document.getElementById("quantity").value;
    const discountInput = document.getElementById("discount").value;

    // Get elemnt we're going to show the result
    const result = document.getElementById("result");

    // Calculate the total price
    const total = priceInput * quantityInput;

    // Calculate the discount
    const discount = total * (discountInput / 100);

    // Calculate final price
    const final = total - discount;

    // Display result (step 1)
    // result.textContent = "Total Price: €" + total;

    // Display result (step 2)
    // result.textContent = "€" + priceInput + " x " + quantityInput + " = " + "€" + total;

    // Display result (step 3)
    result.textContent = "Total Price: €" + final;
}
```

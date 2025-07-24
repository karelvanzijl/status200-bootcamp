## Navigation

1. [Overview](readme.md)
2. [Quick Quiz](./01-quick-quiz.md)
3. [Live Coding](./02-live-coding.md)
4. [Box Model & Selectors](./03-box-model-and-selectors.md) ← _You are here_
5. [Positioning & Flexbox](./04-positioning-and-flexbox.md)
6. [Flexbox Froggy Game](./05-flex-froggy-game.md)
7. [Media Queries & Responsive Design](./06-media-queries.md)

---

# Box Model & Selectors Mini-Challenge

---

## Setup

### Step 1: Create Project Structure

Use the command prompt to create a new project folder and files.

1. Create a new folder called `box-model-and-selectors`
2. Create a subfolder called `css`
3. Create a file `index.html` in the main folder
4. Create a file `styles.css` in the `css` folder
5. Open the project folder in VS Code

### Step 2: Use this HTML & CSS

Copy this code exactly. We're going to debug and improve it together.

**HTML (`index.html`):**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Box Model Challenge</title>
        <link rel="stylesheet" href="css/styles.css" />
    </head>
    <body>
        <main>
            <h1>Main Title</h1>
            <div class="box">Hello World</div>
            <div class="box">Another Box</div>
        </main>

        <section>
            <h2>Section Title</h2>
            <div class="box">Box in Section</div>
            <p class="highlight">This is important text</p>
        </section>
    </body>
</html>
```

**CSS (`css/styles.css`):**

```css
.box {
    width: 200px;
    padding: 20px;
    border: 2px solid black;
    margin: 40px;
    background: #eee;
}
```

### Step 3:

Make sure you can see three gray boxes with black borders.

---

## Challenge 1: Box Model Math

#### Question: What is the total width of each `.box`?

Look at your boxes. What's the total width they take up on screen?

**Hint:** Use DevTools to inspect the boxes!

---

## Challenge 2: Force 200px Total Width

The client wants each box to be EXACTLY 200px wide total, including padding and border. How do we fix this?

**Remember:** The box model? We've discussed two differrent box-sizing methods and what they do.

**Check:** Use DevTools to see if your boxes are now 200px wide (with the border and padding included).

---

## Challenge 3: Hover Effect

#### Add Pseudo-Class Selector

When you hover over a box, it should change:

-   background color to blue
-   text color to white

**Test:** Hover over boxes to see the effect!

**Info:** "The `:hover` is called a pseudo-class. It targets a specific state.

---

## Challenge 4: Descendant Selectors

### Problem: Target Only Boxes in Main

I want only the boxes inside `<main>` to have a green border. The box in `<section>` should stay black.

### Bonus Challenge: Direct Child Selector

**Advanced students:** What if we only wanted to target only direct children of the `main` element that have the class `.box`? How would we need to change our selector?

---

## Challenge 5: Multiple Selectors

### Style Multiple Different Elements

Make both headings (`h1` AND `h2`) have the same red color and underline, without writing separate rules for each element and using classes.

**Hint:** Use commas to separate multiple selectors in one rule.

**Bonus:** Make both `.box` AND `.highlight` have the same yellow background using multiple selectors.

---

## Final DevTools Exploration

### Interactive Discovery

Let's explore what we built!

1. **Inspect each box** - Compare content-box vs border-box sizes
2. **Toggle hover state** - DevTools can force :hover state
3. **Edit live CSS** - Change colors, sizes directly in DevTools
4. **View computed styles** - See final calculated values

---

## Common Issues & Solutions

### CSS Not Working

-   **Check:** File saved? CSS linked correctly?
-   **Fix:** Refresh browser, check file paths

### Hover Not Working

-   **Check:** Spelled `:hover` correctly?
-   **Fix:** Make sure there's no space before the colon

### Wrong Boxes Changing Color

-   **Check:** Selector specificity
-   **Fix:** Review descendant selector syntax

### Box Sizes Look Wrong

-   **Check:** `box-sizing` property applied?
-   **Fix:** Verify property spelling and value

---

## Extension Activities (If Time)

You can also try this on your own if we didn't have time in class.

1. **Add more pseudo-classes:**

    ```css
    .box:active {
        background: red;
    }
    .box:focus {
        outline: 3px solid orange;
    }
    ```

2. **Experiment with margins:**

    ```css
    .box:first-child {
        margin-top: 0;
    }
    .box:last-child {
        margin-bottom: 0;
    }
    ```

3. **Advanced selectors:**
    ```css
    .box:nth-child(2) {
        background: yellow;
    }
    ```

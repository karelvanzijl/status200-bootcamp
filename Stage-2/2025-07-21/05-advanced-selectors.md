## Navigation

1. [Overview](README.md)
2. [VS Code Setup](01-setup-vscode.md)
3. [Terminal & Folder Basics](02-terminal-folder.md)
4. [HTML Recap](03-html-recap.md)
5. [CSS Basics](04-css-basics.md)
6. [Advanced Selectors](05-advanced-selectors.md) ← _You are here_
7. [Box Model](06-box-model.md)

---

# Advanced CSS Selectors

Welcome to the Advanced Selectors section! Here, you'll learn how to use CSS selectors to target specific elements in your HTML documents. This allows you to apply styles with precision and control.

## What are Advanced Selectors?

Advanced selectors let you target specific elements based on their relationships to other elements, their position, or their attributes. They give you precise control over which elements to style.

## Relationship Selectors

### Descendant Selector (Space)

Targets elements that are nested inside other elements (at any level):

```css
div p {
    color: blue;
}
```

```html
<div>
    <p>This will be blue</p>
    <section>
        <p>This will also be blue (nested deeper)</p>
    </section>
</div>
<p>This will NOT be blue (not inside a div)</p>
```

**Using the universal selector with descendants:**

```css
div * {
    font-weight: bold;
}
```

```html
<div>
    <p>This will be bold</p>
    <h2>This will also be bold</h2>
    <section>
        <span>This will also be bold (any element inside div)</span>
    </section>
</div>
<p>This will NOT be bold (not inside a div)</p>
```

### Child Selector (>)

Targets only **direct children** (not grandchildren):

```css
div > p {
    color: red;
}
```

```html
<div>
    <p>This will be red (direct child)</p>
    <section>
        <p>This will NOT be red (grandchild, not direct)</p>
    </section>
</div>
```

### Adjacent Sibling Selector (+)

Targets the **next sibling** element immediately after another:

```css
h2 + p {
    font-weight: bold;
}
```

```html
<h2>Heading</h2>
<p>This paragraph will be bold (immediately after h2)</p>
<p>This paragraph will be normal (not immediately after h2)</p>
```

### General Sibling Selector (~)

Targets **all sibling** elements that come after another:

```css
h2 ~ p {
    margin-left: 20px;
}
```

```html
<h2>Heading</h2>
<p>This will have left margin</p>
<div>Some content</div>
<p>This will also have left margin (sibling after h2)</p>
```

## Pseudo-Classes

Pseudo-classes target elements based on their state or position:

### Interactive States

```css
/* When user hovers over a link */
a:hover {
    color: red;
}

/* When a link has been visited */
a:visited {
    color: purple;
}
```

### Position-based

```css
/* First child element */
li:first-child {
    font-weight: bold;
}

/* Last child element */
li:last-child {
    border-bottom: none;
}

/* Every second element (even) */
li:nth-child(even) {
    background-color: lightgray;
}

/* Every third element */
li:nth-child(3n) {
    color: red;
}
```

## Combining Selectors

You can combine multiple selectors for precise targeting:

```css
/* Class with pseudo-class */
.button:hover {
    background-color: blue;
}

/* Multiple classes */
.card.featured {
    border: 3px solid gold;
}

/* Child selector with class */
.nav > li {
    display: inline-block;
}

/* Complex combination */
.article p:first-child {
    font-size: 1.2em;
}
```

## Common Patterns

### Navigation Styling

```css
.nav li:first-child {
    margin-left: 0;
}

.nav li:last-child {
    margin-right: 0;
}

.nav a:hover {
    text-decoration: underline;
}
```

## Practice Exercise

Use Internal CSS to style the following HTML elements:

## HTML Practice Code

Copy this HTML code to practice advanced CSS selectors:

1. **Direct children**: Give direct children of `.container` a 2px solid blue border
2. **Adjacent siblings**: Make the first paragraph after each `h2` bold (font-weight: bold)
3. **Nth-child**: Give even list items a lightgray background
4. **Hover effects**: Make links turn red (color: red) when hovered
5. **Attribute selectors**: Give required input fields a 2px solid red border

## HTML Practice Code

Copy this HTML code to practice advanced CSS selectors:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Advanced Selectors Practice</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 2rem;
            }

            /* Add your advanced selectors here */

            /* Task 1: Give direct children of .container a 2px solid blue border */

            /* Task 2: Make the first paragraph after each h2 bold */

            /* Task 3: Give even list items a lightgray background */

            /* Task 4: Make links turn red when hovered */

            /* Task 5: Give required input fields a 2px solid red border */
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Advanced Selectors Practice</h1>
            <p>This is a direct child of container.</p>
            <div>
                <p>This is a grandchild (not direct).</p>
            </div>
        </div>

        <h2>Section 1</h2>
        <p>First paragraph after h2 - should be styled.</p>
        <p>Second paragraph after h2 - should be normal.</p>

        <h2>Section 2</h2>
        <p>Another first paragraph after h2 - should be styled.</p>

        <ul class="feature-list">
            <li>First feature</li>
            <li>Second feature</li>
            <li>Third feature</li>
            <li>Fourth feature</li>
            <li>Fifth feature</li>
        </ul>

        <nav>
            <a href="#home">Home</a>
            <a href="#about">About</a>
            <a href="#contact">Contact</a>
        </nav>

        <form>
            <input type="text" placeholder="Optional field" />
            <input type="email" placeholder="Required email" required />
            <input type="password" placeholder="Required password" required />
        </form>
    </body>
</html>
```

📖 [Show Answers (try yourself first!)](https://status200.my/bootcamp/practice/2025-07-21/css-advanced-selectors.html)

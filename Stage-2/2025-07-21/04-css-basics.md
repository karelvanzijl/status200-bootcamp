## Navigation

1. [Overview](readme.md)
2. [VS Code Setup](01-setup-vscode.md)
3. [Terminal & Folder Basics](02-terminal-folder.md)
4. [HTML Recap](03-html-recap.md)
5. [CSS Basics](04-css-basics.md) ← _You are here_
6. [Advanced Selectors](05-advanced-selectors.md)
7. [Box Model](06-box-model.md)

---

# CSS Basics

Welcome to the CSS Basics section! Here, you'll learn how to style your HTML documents using CSS (Cascading Style Sheets). This is where you make your web pages look beautiful and user-friendly.

## What is CSS?

CSS (Cascading Style Sheets) is the language used to style HTML documents. It controls how elements are displayed, including layout, colors, fonts, and more.

## CSS Syntax

```css
selector {
    property: value;
    property: value;
}
```

-   **Selector**: Targets which HTML elements to style
-   **Property**: The aspect you want to change (color, font-size, etc.)
-   **Value**: How you want to change it

## How to Add CSS to HTML

### 1. Inline CSS

```html
<p style="color: blue;">This text is blue</p>
```

### 2. Internal CSS

```html
<style>
    p {
        color: blue;
    }
</style>
```

### 3. External CSS (Recommended)

```html
<link rel="stylesheet" href="css/styles.css" />
```

## CSS Selectors

### Element Selector

Targets all elements of a specific type:

```css
p {
    color: blue;
}
```

### Class Selector

Targets elements with a specific class attribute:

```css
.highlight {
    background-color: yellow;
}
```

```html
<p class="highlight">This paragraph is highlighted</p>
```

### ID Selector

Targets an element with a specific ID attribute:

```css
#header {
    font-size: 24px;
}
```

```html
<h1 id="header">Main Heading</h1>
```

### Multiple Selectors

Apply the same styles to multiple elements:

```css
h1,
h2,
h3 {
    color: navy;
    font-family: Arial, sans-serif;
}
```

### Universal Selector

**What it does:**

-   The `*` selector applies styles to every element that matches the selector.
-   Use it carefully as it affects everything
-   Combine with other selectors for more control (you'll learn this later)

**Example:**

```css
/* Make all text on the page red */
* {
    color: red;
}
```

## CSS Specificity

When multiple rules target the same element, CSS uses specificity to determine which rule wins:

1. **Inline styles** (highest specificity)
2. **IDs**
3. **Classes**
4. **Elements** (lowest specificity)

```css
/* Element selector - specificity: 1 */
p {
    color: blue;
}

/* Class selector - specificity: 10 */
.text {
    color: red;
}

/* ID selector - specificity: 100 */
#intro {
    color: green;
}
```

## Comments in CSS

```css
/* This is a comment */
.button {
    background-color: blue; /* This is also a comment */
}
```

## Practice Exercise

Use Internal CSS to style the following HTML elements:

1. Make all paragraphs blue
2. Give elements with class 'important' a red background and white text
3. Make the element with ID 'header' have a font size of 2.5rem
4. Make all h2 elements green

## HTML Practice Code

Copy this HTML code to practice basic CSS selectors:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>CSS Selector Practice</title>
        <style>
            /* Add your CSS here */

            /* Task 1: Style all paragraphs with blue text */

            /* Task 2: Create a class called 'important' with red background and white text */

            /* Task 3: Style the element with ID 'header' with large font */

            /* Task 4: Style all h2 elements with green text */
        </style>
    </head>
    <body>
        <h1 id="header">CSS Selector Practice</h1>

        <p>This is a regular paragraph. It should be blue.</p>

        <p class="important">
            This paragraph has the 'important' class. It should have a red
            background.
        </p>

        <h2>This is a heading 2</h2>
        <p>Another paragraph that should be blue.</p>

        <h2>Another heading 2</h2>
        <p>One more paragraph that should be blue.</p>

        <div class="important">
            <p>This paragraph is inside a div with the 'important' class.</p>
        </div>
    </body>
</html>
```

📖 [Show Answers (try yourself first!)](https://status200.my/bootcamp/practice/2025-07-21/css-basics.html)

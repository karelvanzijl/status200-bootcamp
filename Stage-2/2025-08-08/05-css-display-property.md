# CSS - Display Property

We've already learned about the `display` property in CSS, which controls how elements are displayed on the page. We've used it to make a container a flex box or a css grid.

-   [Flexbox](../2025-07-22/02-flexbox.md)
-   [CSS Grid](../2025-07-23/03-css-grid.md)

But the `display` property has many more values that can change how elements behave.

### Task

1. Create a HTML file
2. Create a CSS file and link it to the HTML file
3. Add some elements to the HTML file
    1. A `<h1>` heading
    2. A `<p>` paragraph
4. Add a new style rule for the `<p>` element in the CSS file:

```css
p {
    display: ;
}
```

As you can see VS Code will show you a list of possible values for the `display` property. You can choose one of them to see how it changes the behavior of the paragraph element.

Let's explore some common values for the `display` property and how they affect elements.

## Common Display Values

`display: block;`

-   Makes the element a block-level element, like:
    -   `<div>`
    -   `<p>`
    -   `<h1>`, `<h2>`, etc.
-   Takes up the full width available
-   Starts on a new line

`display: inline;`

-   Makes the element an inline element, like:
    -   `<span>`
    -   `<a>`
-   Only takes up as much width as its content
-   Does not start on a new line

`display: inline-block;`

-   Combines features of both block and inline
-   Allows setting width and height like a block element
-   Still flows inline with text

`display: none;`

-   Hides the element completely
-   Does not take up any space in the layout

## Change Display Value using JavaScript

You can change the `display` property of an element using JavaScript. This is useful for showing/hiding elements dynamically.

```javascript
// Get the element by ID
let myElement = document.getElementById("myElement");

// Hide the element
myElement.style.display = "none";

// Show the element as a block
myElement.style.display = "block";

// Show the element as inline
myElement.style.display = "inline";

// Show the element as inline-block
myElement.style.display = "inline-block";
```

## Examples

Get element by ID and check its current display value:

```javascript
// Get the element by ID
let myElement = document.getElementById("myElement");

// Display the current display value
console.log(myElement.style.display);
```

Get an element by ID and change its display value:

```javascript
// Get the element by ID
let myElement = document.getElementById("myElement");

// Change the display value to none
myElement.style.display = "none";
```

## Exercise: Change Display Property

Create a simple webpage with a button that toggles the display of a paragraph. In other words: when you click the button, the paragraph should either show or hide depending on its current state.

-   If the paragraph is visible, clicking the button should hide it.
-   If the paragraph is hidden, clicking the button should show it.

**Answer:**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
    </head>
    <body>
        <button onclick="toggle()">Toggle</button>
        <p id="result">Element that toggle from visible ti invisible</p>
        <script src="./script.js"></script>
    </body>
</html>
```

```javascript
function toggle() {
    let paragraph = document.getElementById("result");
    if (paragraph.style.display == "none") {
        paragraph.style.display = "block";
    } else {
        paragraph.style.display = "none";
    }
}
```

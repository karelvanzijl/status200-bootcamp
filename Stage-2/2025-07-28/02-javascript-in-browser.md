## Navigation

1. [Overview](readme.md)
2. [JavaScript Introduction](01-javascript-introduction.md)
3. [JavaScript in HTML](./02-javascript-in-browser.md) ← _You are here_
4. [JavaScript Variables](./03-javascript-variables.md)
5. [JavaScript Functions](./04-javascript-functions.md)
6. [Quick Quiz](./05-quick-quiz.md)
7. [Exercise: change text](./06-exercise-and-html.md)
8. [Exercise: speed calculator](./07-exercise-speed-calculator.md)

---

# JavaScriptt in Browser

This section covers how JavaScript is executed in the browser.

## JavaScript in the Browser

There are multiple ways to run JavaScript code in a web browser. It's the same as with CSS, where we can add JavaScript code directly in the HTML file or link to an external JavaScript file.

##### Inline

You can write JavaScript code directly in the HTML elements. For example, you can use the `onclick` attribute to run JavaScript when a button is clicked:

```html
<button onclick="alert('Hello, World!')">Click Me</button>
```

##### Internal

You can place the `<script>` tag in the `<head>` or at the end of the `<body>` section of your HTML file. Placing it at the end of the `<body>` is often recommended to ensure that the HTML elements are fully loaded before the JavaScript runs.

```html
<script>
    // JavaScript code goes here
    console.log("Hello, World!");
</script>
```

##### External

You can also link to an external JavaScript file using the `<script>` tag with the `src` attribute. This is the preferred method for larger projects as it keeps your HTML and JavaScript code separate.

```html
<script src="script.js"></script>
```

**Wait a minute teacher! ... why isn't this a self-closing tag?**
Great question! The `<script>` tag is not self-closing because it can contain JavaScript code directly within it. We use the same `script` tag when using inline or external JavaScript. There's a rule thought:

> Your `<script>` tag either has to have a `src` attribute or contain JavaScript code, but not both at the same time.

### Separating Of Concerns

Separating HTML, CSS, and JavaScript into different files is a best practice in web development. This approach, known as _"Separation of Concerns"_, helps keep your code organized and maintainable.

## Let's Write Our First JavaScript

**Step 1:** Copy and paste the following code into a new HTML file.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>JavaScript Example</title>
        <script src="script.js"></script>
    </head>
    <body>
        <h1>JavaScript in the Browser</h1>
        <p>This is a simple example of JavaScript running in the browser.</p>
    </body>
</html>
```

**Step 2:** Copy the following JavaScript code into a file named `script.js` in the same directory as your HTML file:

```javascript
// This is a comment in JavaScript, it won't be executed and is used for explanations
console.log("Hello, World! This is JavaScript running in the browser.");
```

**Step 3:** Open the Developer Tools console and open the "Console Tab" to see the output of the `console.log` statement. It should display the message _"Hello, World! This is JavaScript running in the browser."_

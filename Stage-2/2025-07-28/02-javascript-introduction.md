# JavaScript Introduction

This section introduces JavaScript, a key technology in web development that enables interactivity and dynamic content on websites.

## Analogy

When building a house we need three main components:

-   Structure (the walls, roof, etc.)
-   Style (the paint, decorations, etc.)
-   Functionality (the plumbing, electrical systems, etc.)

The same concept applies to web development:

-   HTML is for structure.
-   CSS is for style.
-   JavaScript is for functionality.

We've already learned about HTML and CSS in previous sections. Now, we will explore JavaScript, which allows us to make our web pages interactive and dynamic.

## What is JavaScript?

JavaScript is a programming language that was originally developed to add interactivity to web pages. It allows developers to create dynamic content, control multimedia, animate images, and much more. We can think of JavaScript as the "brains" of a web page, enabling it to respond to user actions and change content on the fly.

To run JavaScript in a browser, each browser has a built-in JavaScript engine. This engine interprets and executes JavaScript code. For example Googgle Chrome uses the V8 engine, while Firefox uses SpiderMonkey and Safari uses JavaScriptCore. You don't need to install anything extra to run JavaScript in your browser; it's already there, ready to use.

When we run JavaScript code in the browser, we refer to it as "client-side" JavaScript because it runs on the user's device. There is also "server-side" JavaScript, which runs on a web server, but for now, we will focus on client-side JavaScript.

## Why Use JavaScript?

JavaScript is essential for modern web development for several reasons:

-   **Interactivity**: JavaScript allows us to create interactive elements like buttons, forms, and animations that respond to user actions.
-   **Dynamic Content**: We can change the content of a web page without reloading it, making the user experience smoother and more engaging.
-   **Event Handling**: JavaScript can respond to user events like clicks, key presses, and mouse movements, allowing us to create applications that respond to user input.
-   **APIs**: JavaScript can interact with APIs (Application Programming Interfaces) to fetch data from servers, enabling us to build applications that can display real-time information.

## Lets see some JavaScript Examples!

> 💡 Some of these examples will probably look complex and alien now, but don't worry! We're just showing them to give you an idea of what's possible with JavaScript. In a few days from now it will make much more sense.

The first two examples of JavaScript code we can run in the browser's Developer Tools (DEV Tools) console. These examples demonstrate how JavaScript can be used to perform basic tasks.

The last two examples are more complex and show how JavaScript can be used in HTML files to create interactive web pages. You can copy and paste the code into your own HTML files and open them in a web browser to see them in action.

### Example 1: Console Log

We can also use JavaScript to log messages to the console, which is useful for debugging.

```javascript
console.log("This is a message in the console.");
```

### Example 2: Alert Box

We can create a simple alert box that pops up in the browser.

```javascript
alert("Hello, World!");
```

### Example 3: Move a Box with Arrow Keys

This example shows how we can use JavaScript to move a box around the screen using the arrow keys. The box will respond to key presses and change its position accordingly.

[👁️ View online example](https://status200.my/bootcamp/practice/2025-07-28/move-box.html)

Here's the HTML code for the box movement example. You can copy and paste this code into your own HTML file and open it in a web browser to see it in action:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Move Box</title>
        <style>
            body {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
                background-color: #f0f0f0;
            }
            #box {
                width: 100px;
                height: 100px;
                background-color: blue;
                position: relative;
            }
        </style>
    </head>
    <body>
        <div id="box"></div>
        <script>
            const box = document.getElementById("box");
            let position = { x: 0, y: 0 };
            document.addEventListener("keydown", (event) => {
                switch (event.key) {
                    case "ArrowUp":
                        position.y -= 20;
                        break;
                    case "ArrowDown":
                        position.y += 20;
                        break;
                    case "ArrowLeft":
                        position.x -= 20;
                        break;
                    case "ArrowRight":
                        position.x += 20;
                        break;
                }
                box.style.transform = `translate(${position.x}px, ${position.y}px)`;
            });
        </script>
    </body>
</html>
```

### Example 3: Basic Calculator

We can write a simple program to mimic a simple calculator that can add, subtract, multiply, and divide two numbers. This example shows how we can use JavaScript to perform calculations based on user input.

[👁️ View online example](https://status200.my/bootcamp/practice/2025-07-28/basic-calculator.html)

Here's the HTML code we used for the sum calculator. You can copy and paste this code into your own HTML file and open it in a web browser to see it in action:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Sum Calculator</title>
        <style>
            body {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                height: 100vh;
                margin: 0;
                background-color: #f0f0f0;
            }
            input {
                width: 200px;
                padding: 10px;
                margin: 10px;
                font-size: 16px;
            }
            button {
                padding: 10px 20px;
                font-size: 16px;
                cursor: pointer;
            }
            .buttons {
                display: flex;
                gap: 10px;
            }
        </style>
    </head>
    <body>
        <h1>Sum Calculator</h1>
        <input type="number" id="num1" placeholder="Enter first number" />
        <input type="number" id="num2" placeholder="Enter second number" />
        <div class="buttons">
            <button onclick="calculateSum()">+</button>
            <button onclick="calculateDifference()">-</button>
            <button onclick="calculateProduct()">x</button>
            <button onclick="calculateQuotient()">/</button>
        </div>
        <h2 id="result">&nbsp;</h2>
        <script>
            function calculateSum() {
                const num1 = parseFloat(document.getElementById("num1").value);
                const num2 = parseFloat(document.getElementById("num2").value);
                const sum = num1 + num2;
                document.getElementById(
                    "result"
                ).innerText = `The sum is: ${sum}`;
            }

            function calculateDifference() {
                const num1 = parseFloat(document.getElementById("num1").value);
                const num2 = parseFloat(document.getElementById("num2").value);
                const difference = num1 - num2;
                document.getElementById(
                    "result"
                ).innerText = `The difference is: ${difference}`;
            }

            function calculateProduct() {
                const num1 = parseFloat(document.getElementById("num1").value);
                const num2 = parseFloat(document.getElementById("num2").value);
                const product = num1 * num2;
                document.getElementById(
                    "result"
                ).innerText = `The product is: ${product}`;
            }

            function calculateQuotient() {
                const num1 = parseFloat(document.getElementById("num1").value);
                const num2 = parseFloat(document.getElementById("num2").value);
                if (num2 === 0) {
                    document.getElementById("result").innerText =
                        "Cannot divide by zero!";
                    return;
                }
                const quotient = num1 / num2;
                document.getElementById(
                    "result"
                ).innerText = `The quotient is: ${quotient}`;
            }
        </script>
    </body>
</html>
```

## The Document Object Model (DOM)

The DOM represents the structure of a document as a tree of objects, allowing JavaScript to interact with HTML elements and modify them dynamically.

You don't need to know the details of the DOM. for this course, but it's important that you know the term and that it exists. The DOM allows us to:

-   Access and manipulate HTML elements
-   Change styles and attributes
-   Respond to user events like clicks and key presses

## Summary

JavaScript is a powerful tool that allows us to create interactive and dynamic web pages.

The Document Object Model (DOM) is a crucial part of how JavaScript interacts with HTML, enabling us to manipulate web pages in real-time.

As we continue through the bootcamp, we will dive deeper into JavaScript and learn how to use it effectively in our web development projects.

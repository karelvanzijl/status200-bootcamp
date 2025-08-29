# DOM Manipulation

DOM manipulation is the process of using JavaScript to dynamically change the content, structure, and style of a web page. The Document Object Model (DOM) is a programming interface that represents the structure of an HTML or XML document as a tree of objects, where each object corresponds to a part of the document (like elements, attributes, and text).

-   [Selecting Elements](#selecting-elements)
-   [Creating Elements](#creating-elements)
-   [Modifying Elements](#modifying-elements)
-   [Removing Elements](#removing-elements)
-   [Event Handling](#event-handling)

---

## Selecting Elements

To manipulate elements in the DOM, you first need to select them. You can use various methods provided by the `document` object:

-   `getElementById(id)`: Selects a single element by its ID.
-   `getElementsByClassName(className)`: Selects all elements with a specific class name (returns an HTMLCollection).
-   `getElementsByTagName(tagName)`: Selects all elements with a specific tag name (returns an HTMLCollection).

We've only used the first one so far, but you're welcome to explore the others, see how they work and use them if needed. There are also other methods, but for now we'll stick to these three.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>DOM Manipulation Example</title>
    </head>
    <body>
        <div id="myId">This is a div with ID "myId"</div>
        <div class="myClass">This is a div with class "myClass"</div>
        <div class="myClass">This is another div with class "myClass"</div>
        <script>
            const elementById = document.getElementById("myId");
            const elementsByClass = document.getElementsByClassName("myClass");
            const elementsByTag = document.getElementsByTagName("div");

            console.log(elementById); // Logs the element with ID "myId"
            console.log(elementsByClass); // Logs an HTMLCollection of elements with class "myClass"
            console.log(elementsByTag); // Logs an HTMLCollection of all <div> elements
        </script>
    </body>
</html>
```

---

## Creating Elements

We've only learned one way to create elements far: `innerHTML`. We can completely replace the content of an element using `innerHTML`, but we can also use it to add new elements using concatenation.

```javascript
const container = document.getElementById("container");

// Using innerHTML to add a new paragraph (concatenation)
container.innerHTML += "<p>This is a new paragraph added using innerHTML.</p>";

// Remember? The above line is the same as:
container.innerHTML =
    container.innerHTML +
    "<p>This is a new paragraph added using innerHTML.</p>";
```

To replace the entire content of an element, you can directly assign a new value to `innerHTML`:

```javascript
// Using innerHTML to replace the entire content
container.innerHTML = "<h2>This is a new heading replacing all content.</h2>";
```

---

## Modifying Elements

Once you've selected an element, you can modify its properties, attributes, and styles. Here are some common ways to modify elements:

-   `.innerHTML`: Change the HTML content of an element.
-   `.textContent`: Change the text content of an element (ignores HTML tags).
-   `.value`: Change the value of form elements like input, textarea, and select.
-   `.style`: Change the inline CSS styles of an element.

There are many more properties and methods available for modifying elements, but these are some of the most commonly used ones.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>DOM Manipulation Example</title>
    </head>
    <body>
        <div id="myDiv">This is a div.</div>
        <input type="text" id="myInput" value="Initial Value" />
        <button id="myButton">Click Me</button>
        <script>
            const myDiv = document.getElementById("myDiv");
            const myInput = document.getElementById("myInput");
            const myButton = document.getElementById("myButton");

            // Change the HTML content of the div
            myDiv.innerHTML = "<strong>This is bold text now!</strong>";

            // Change the text content of the div (ignores HTML tags)
            myDiv.textContent = "This is plain text now!";

            // Change the value of the input field
            myInput.value = "New Value";

            // Change the background color of the button
            myButton.style.backgroundColor = "blue";
            myButton.style.color = "white";
        </script>
    </body>
</html>
```

---

## Removing Elements

We didn't really cover this in class, but it's good to know that you can remove elements from the DOM using the `remove()` method.

```javascript
const elementToRemove = document.getElementById("elementId");
elementToRemove.remove(); // This will remove the element from the DOM
```

This could be useful if you want to delete something from the page based on user interaction, like clicking a button. For example, you want to remove an item from you order list when the user clicks a "Remove" button next to that item.

---

## Event Handling

We've learned 2 event handlers so far: `onclick` and `onchange`. There are many more events you can listen to, such as `onmouseover`, `onmouseout`, `onkeydown`, `onkeyup`, and many others. You can use these events to make your web pages more interactive.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>DOM Manipulation Example</title>
    </head>
    <body>
        <input
            type="text"
            placeholder="Type something..."
            onkeydown="alert('Key pressed!')"
        />
        <select onchange="alert('Selection changed!')">
            <option value="option1">Option 1</option>
            <option value="option2">Option 2</option>
            <option value="option3">Option 3</option>
        </select>
        <button onclick="alert('Button clicked!')">Click Me</button>
    </body>
</html>
```

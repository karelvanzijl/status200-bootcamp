## Day 1: Quick Recap & CSS Introduction

**Goal**: Confirm that everyone has retained Stage 1 essentials and jump into styling.

### Stage 1 Recap

-   Folder structure + terminal navigation
-   Relative vs absolute paths
-   HTML structure & valid nesting
-   Block vs inline
-   Simple multi-page linking

### Stage 2 Folder Structure

Create the following folder structure inside inside the `Bootcamp/` directory you created in Stage 1:

```
Bootcamp/
├── Stage-1/
├── Stage-2/
│   ├── Class/
│   │   ├── 2025-07-21
│   │   │   ├── css/
│   │   │   │   └── styles.css
│   │   │   └── index.html
│   ├── Projects/
│   │   ├── 2025-07-21
│   │   │   ├── css/
│   │   │   │   └── styles.css
│   │   │   ├── images/
│   │   │   │   └── profile.jpg
│   │   │   ├── index.html
│   │   │   └── about.html
```

**Class folder**
For in-class exercises

**Projects folder**
For homework or personal projects

> 💡 Every day we will create a new folder inside the `Class` and `Projects` folders using the date format `YYYY-MM-DD`

### VS Code Setup

**Install**

-   Install [Visual Studio Code](https://code.visualstudio.com/)

**Extensions**

-   Live Server
-   Prettier
    -   Use Prettier for formatting code
    -   Format on save

**Useful commands**

-   **`!`** (exclamation mark) in VS Code to quickly generate HTML boilerplate in an empty HTML file

    ```html
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="UTF-8" />
            <meta
                name="viewport"
                content="width=device-width, initial-scale=1.0"
            />
            <title>Document</title>
        </head>
        <body>
            <!-- Your content goes here -->
        </body>
    </html>
    ```

-   **`lorem`** command in VS Code will generate placeholder text (Lorem Ipsum) for you.
    -   `lorem10` will generate 10 words
    -   `lorem25` for 25 words
-   **`ul>li*4`** to create a list with 4 items:
    ```html
    <ul>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>
    ```

### CSS Introduction with simple examples

**What is CSS?**

-   A language for styling HTML documents, stands for _Cascading Style Sheets_
-   Why we use it: separation of concerns, styling HTML
-   HTML structures content, CSS styles it

**Demo (just to show examples, not to memorize)**

```html
<!--
1. img > width: 200px
2. img > border-radius: 10px
3. img > float: left
4. img > margin-right: 10px
5. p > font-weight: bold
6. p.username > font-weight: bold
7. em > color: red
8. em > font-style: normal

Symantic HTML:
- use <em> instead of <i>
- use <strong> instead of <b>

Why?
<i> and <b> are for visual styling only, while <em> and <strong> convey meaning (emphasis, strong importance).
- Screens readers and search engines understand <em> and <strong> better.
- We can use CSS to style them visually.
-->
<head>
    <style>
        img {
            width: 200px;
            border-radius: 10px;
            float: left;
            margin-right: 10px;
        }
        p {
            font-size: 16px;
        }
        p.username {
            font-weight: bold;
            font-size: 20px;
        }
        em {
            color: red;
            font-style: normal;
        }
    </style>
</head>
<body>
    <img src="images/profile.jpg" alt="Profile Picture" />
    <p class="username">John Doe</p>
    <p>
        Hi, I'm <strong>Karel</strong>, a developer who
        <em>truly enjoys</em> teaching others how to code effectively and
        creatively.
    </p>
</body>
```

**Inline vs internal vs external stylesheets**

-   Inline:
    ```html
    <img style="width: 200px;" />
    ```
-   Internal (nested in `<head>`):
    ```html
    <style>
        img {
            width: 200px;
        }
    </style>
    ```
-   External (nested in `<head>`, linked to a separate CSS file):
    ```html
    <link rel="stylesheet" href="styles.css" />
    ```

**Best practice**:
Use external stylesheets for maintainability and reusability.

### Practice in class

Style a basic multi-page website inside `Stage-2/2025-07-21` folder

-   Add HTML boilerplate to `index.html` and `about.html`
-   Link your `css/style.css` CSS file in both HTML files
-   Make sure both pages link to each other

---

## Day 2: Box Model, Positioning & Flexbox

**Goal**: Build strong layout foundation

> Create new folders in `Class` and `Projects` for today's date: `2025-07-22`

```
Stage-2/
├── Class/
│   ├── 2025-07-22
│   │   │   ├── css/
│   │   │   │   └── styles.css
│   │   │   └── index.html
│   ├── Projects/
│   │   ├── 2025-07-22
│   │   │   ├── css/
│   │   │   │   └── styles.css
│   │   │   ├── images/
│   │   │   │   └── profile.jpg
│   │   │   ├── index.html
│   │   │   └── about.html
```

### Box Model

-   `content`, `padding`, `border`, `margin`
-   Visualize with dev tools (Inspect Element)
-   Demo with simple boxes (`div`) and borders
-   Show how `width`/`height` affect layout

### Positioning

-   `static`, `relative`, `absolute`, `fixed`, `sticky`
-   `top`, `left`, etc. with `position`
-   `z-index` basics

### Flexbox Fundamentals

-   Flex container: `display: flex`, `justify-content`, `align-items`, `gap`
-   Flex items: `flex-grow`, `flex-basis`, `order`

### Practice in class

### Assigment

---

## Day 3: Responsive Design

**Goal**: Make pages mobile-friendly

> Create new folders in `Class` and `Projects` for today's date: `2025-07-23`

```
Stage-2/
├── Class/
│   ├── 2025-07-23
│   │   │   ├── css/
│   │   │   │   └── styles.css
│   │   │   └── index.html
│   ├── Projects/
│   │   ├── 2025-07-23
│   │   │   ├── css/
│   │   │   │   └── styles.css
│   │   │   ├── images/
│   │   │   │   └── profile.jpg
│   │   │   ├── index.html
│   │   │   └── about.html
```

### Media Queries

-   Breakpoints
-   Show/hide, rearrange content

### Units for responsiveness

-   `%`, `vw`, `vh`
-   Relative font sizing

### Practice in class

### Assigment

---

## Day 4: Intro to JavaScript

**Goal**: Understand basic scripting and DOM interaction

> Create new folders in `Class` and `Projects` for today's date: `2025-07-24`
> Add a new `js/` folder inside `Class/2025-07-24/` and `Projects/2025-07-24/`

```
Stage-2/
├── Class/
│   ├── 2025-07-24
│   │   │   ├── css/
│   │   │   │   └── styles.css
│   │   │   ├── js/
│   │   │   │   └── script.js
│   │   │   └── index.html
│   ├── Projects/
│   │   ├── 2025-07-24
│   │   │   ├── css/
│   │   │   │   └── styles.css
│   │   │   ├── images/
│   │   │   │   └── profile.jpg
│   │   │   ├── js/
│   │   │   │   └── script.js
│   │   │   ├── index.html
│   │   │   └── about.html
```

### JS Basics

-   Variables: `let`, `const`, data types
-   Arithmetic + string operations
-   Functions

    ```js
    function add(a, b) {
        return a + b;
    }

    const add = (a, b) => {
        return a + b;
    };

    const add = (a, b) => a + b;
    ```

-   Conditionals (`if`, `else`)
-   Events (`onclick`, `oninput`)
-   Like CSS, we can link JS files in HTML inside the `<head>` or at the end of `<body>`:

    ```html
    <script src="js/script.js"></script>
    ```

### DOM Manipulation

-   `getElementById`, `innerHTML`, `value`
-   Output text in HTML

### Practice in class

### Assigment

---

## Day 5–6: Forms, Logic, JS in the Browser

**Goal**: Make interactive forms and dynamic pages

> Create new folders

### HTML Forms + JS

-   Form elements
-   Submit prevention
-   Processing user input

### More JS Logic

-   Comparison operators
-   Boolean logic
-   `isNaN`, `parseInt`, `parseFloat`, `toFixed()`

### Practice in class

### Assigment

---

## Week 2: Advanced JS + DOM

> Create new folders

-   Arrays, objects
-   Loops (`for`, `while`)
-   Array methods (`map`, `filter`, `reduce`)
-   Event listeners
-   Creating/modifying DOM elements dynamically

## Week 3: Real Projects + Modular JS

> Create new folders

-   Refactor to multiple files
-   Start with reusable functions

## Week 4: Node + NPM

> Create new folders

-   JSON
-   Synchronous vs Asynchronous
    -   Use waiter in restaurant analogy
-   setTimeout / setInterval
-   Promises

## Week 5: MySQL + Backend APIs

> Create new folders

## Week 6: GitHub & Final Project

> Create new folders

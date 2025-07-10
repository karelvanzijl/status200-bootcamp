# HTML Complete Guide

Now that you know how to use folders and the terminal, it's time to write your first real code: a personal web page using **HTML**.

---

## Table of Contents

-   [What is HTML?](#what-is-html)
-   [Basic Structure of an HTML Page](#basic-structure-of-an-html-page)
-   [Activity: Write Your First HTML Code](#activity-write-your-first-html-code)
-   [The Anatomy of HTML Elements](#the-anatomy-of-html-elements)
    -   [Regular (Non-Self-Closing) Element](#regular-non-self-closing-element)
        -   [Step-by-Step Breakdown](#step-by-step-breakdown)
    -   [Self-Closing Tags](#self-closing-tags)
        -   [Example: Image Tag](#example-image-tag)
-   [Common HTML Tags](#common-html-tags)
    -   [1. `<div>` Tag (Division)](#1-div-tag-division)
    -   [2. `<h1>` to `<h6>` Tags (Headings)](#2-h1-to-h6-tags-headings)
    -   [3. `<p>` Tag (Paragraph)](#3-p-tag-paragraph)
    -   [4. `<a>` Tag (Anchor)](#4-a-tag-anchor)
    -   [5. `<img>` Tag (Image)](#5-img-tag-image)
    -   [6. `<ul>` Tag (Unordered List)](#6-ul-tag-unordered-list)
    -   [7. `<ol>` Tag (Ordered List)](#7-ol-tag-ordered-list)
-   [Activity: Get Familiar with HTML Tags](#activity-get-familiar-with-html-tags)
-   [Block vs Inline Elements in HTML](#block-vs-inline-elements-in-html)
    -   [Block Elements](#block-elements)
        -   [Visual](#visual)
    -   [Inline Elements](#inline-elements)
-   [Nesting Tags in HTML (Tags Inside Tags)](#nesting-tags-in-html-tags-inside-tags)
    -   [What Does "Nesting" Mean?](#what-does-nesting-mean)
    -   [Example 1: Bold Text Inside a Paragraph](#example-1-bold-text-inside-a-paragraph)
    -   [Example 2: Link Inside a List](#example-2-link-inside-a-list)
    -   [Rules for Nesting Tags](#rules-for-nesting-tags)
    -   [Incorrect Nesting (Bad!)](#incorrect-nesting-bad)
    -   [Correct Nesting (Good!)](#correct-nesting-good)
    -   [Nested Layout Example](#nested-layout-example)
    -   [Tips for Clean Nesting](#tips-for-clean-nesting)
-   [Assigment: Write HTML](#assigment-write-html)
-   [What You've Learned](#what-youve-learned)

---

## What is HTML?

**HTML** stands for **HyperText Markup Language**. It is the basic building block of the web. HTML tells the browser what content to display (text, images, links, etc.) and how it is structured.

---

## Basic Structure of an HTML Page

```html
<!DOCTYPE html>
<html>
    <head>
        <!-- Not visible content goes here -->
        <title>Name of page</title>
    </head>
    <body>
        <!-- Visible content goes here -->
    </body>
</html>
```

-   HTML files normally have the extension `.html`
-   The "homepage" HTML file is generally named `index.html`

---

## Activity: Write Your First HTML Code

Open the file called `index.html` that you created in the assignment [Assignment: Create a Folder Structure](./01-folders-terminal.md#assignment-create-a-folder-structure) in your text editor.

-   _Windows_: Right-click the file and select "Open with" → "Notepad"
-   _Mac_: Right-click the file and select "Open with" → "TextEdit"

Write the following code inside the `index.html` file:

```html
<!DOCTYPE html>
<html>
    <head>
        <title>Homepage</title>
    </head>
    <body>
        <h1>Hello, this is my first HTML page!</h1>
    </body>
</html>
```

-   Try typing it out yourself first, don't just copy-paste.
-   Try to use the **correct indentation** (spaces or tabs) to make it readable.

Once done find the file in your file explorer and double-click it to open it in your browser.

> You have now created your first web page 🎉

---

## The Anatomy of HTML Elements

Understanding how HTML works starts with understanding **how each element is written**. Below is a breakdown of the structure of a typical HTML element.

---

### Regular (Non-Self-Closing) Element

A regular HTML element has **three main parts**:

```html
<tagname attribute1="value1" attribute2="value2"> Content </tagname>
```

1. **Opening tag**
    - `<tagname>`
    - Can include attributes (e.g., `href`, `src`, `target`, `width`)
2. **Content**
    - The text or other elements inside the tag
    - Can be anything visible or interactive
3. **Closing tag**
    - `</tagname>`

---

#### Step-by-Step Breakdown

1.  **Opening Tag**

    1.  Opening Angle Bracket

        ```
        <
        ```

    2.  Tagname (e.g., `p`, `h1`, `a`, `div`)

        ```
        <a
        ```

    3.  Attributes (optional) are written inside the opening tag. Each attribute has:

        -   A name (like `href`, `target`)
        -   An equal sign `=`
        -   A value inside quotes: `"value"`
        -   Example:

            ```
            <a href="https://example.com" target="_blank"
            ```

    4.  Closing Angle Bracket
        Ends the opening tag: `>`
        Example:

        ```
        <a href="https://example.com" target="_blank">
        ```

2.  **Content**
    This is the visible or interactive content inside the tag.

    Example:

    ```
    <a href="https://example.com" target="_blank"> Click here
    ```

3.  **Closing Tag**

    -   Starts with `</`
    -   Then the tag name again
    -   Ends with `>`

    Example:

    ```html
    <a href="https://example.com" target="_blank"> Click here </a>
    ```

---

#### Example: Paragraph Tag

```html
<p>This is a paragraph.</p>
```

| Part                   | Meaning                      |
| ---------------------- | ---------------------------- |
| `<p`                   | Opening bracket and tag name |
| `>`                    | Closes the opening tag       |
| `This is a paragraph.` | Inner content                |
| `</p>`                 | Closing tag                  |

---

#### Example: Anchor Tag (Link)

```html
<a href="https://example.com" target="_blank">Visit Site</a>
```

| Part                         | Description              |
| ---------------------------- | ------------------------ |
| `<a`                         | Anchor (link) tag        |
| `href="https://example.com"` | Destination of the link  |
| `target="_blank"`            | Open link in new tab     |
| `Visit Site`                 | Link text shown to users |
| `</a>`                       | Closing the anchor tag   |

---

## Self-Closing Tags

Some HTML elements don't have any content and **don't need a closing tag**. These are called **self-closing tags**.

### Structure

```html
<tagname attribute1="value1" />
```

---

#### Example: Image Tag

```html
<img src="cat.jpg" width="300" alt="A cute cat" />
```

| Part               | Meaning                            |
| ------------------ | ---------------------------------- |
| `<img`             | Tag name                           |
| `src="cat.jpg"`    | Source of image                    |
| `width="300"`      | Width of the image in pixels       |
| `alt="A cute cat"` | Description if image fails to load |
| `/>`               | Self-closing                       |

---

#### Other Self-Closing Tags

| Tag         | What it does                           |
| ----------- | -------------------------------------- |
| `<br />`    | Line break                             |
| `<hr />`    | Horizontal line                        |
| `<img />`   | Image                                  |
| `<input />` | Input field                            |
| `<meta />`  | Metadata                               |
| `<link />`  | Link to external resources (e.g., CSS) |

---

## Common HTML Tags

| Tag       | What it does                              |
| --------- | ----------------------------------------- |
| `<html>`  | The root element of the page              |
| `<head>`  | Info _about_ the page (not shown on page) |
| `<body>`  | The visible content of the page           |
| `<title>` | The title of the page (shown in tab)      |
| `<div>`   | A generic container for grouping content  |
| `<h1>`    | A big title                               |
| `<p>`     | A paragraph of text                       |
| `<a>`     | A hyperlink                               |
| `<img>`   | An image                                  |
| `<ul>`    | An unordered list                         |
| `<ol>`    | An ordered list                           |
| `<li>`    | A list item                               |

---

### 1. `<div>` Tag (Division)

-   **Purpose**: A generic container for grouping content.
-   **Usage**: Often used with CSS for layout and styling.
-   **Self-closing**: No, it wraps around other elements.

```html
<div>
    <h1>Welcome to My Page</h1>
    <p>This is a simple HTML page.</p>
</div>
```

---

### 2. `<h1>` to `<h6>` Tags (Headings)

-   **Purpose**: Define headings.
-   **Usage**: Used to create a hierarchy of headings on the page.
-   **Self-closing**: No, they wrap around text.
-   **Levels**:

    -   `<h1>` is the largest/most important.
    -   `<h6>` is the smallest.

**Example**:

```html
<h1>Main Title</h1>
<h2>Subtitle</h2>
<h3>Smaller Heading</h3>
```

---

### 3. `<p>` Tag (Paragraph)

-   **Purpose**: Defines a paragraph of text.
-   **Usage**: Used to group text into readable blocks.
-   **Self-closing**: No, it wraps around text.

**Example**:

```html
<p>This is a paragraph.</p>
```

---

### 4. `<a>` Tag (Anchor)

-   **Purpose**: Creates a hyperlink.
-   **Usage**: Used to link to other pages or resources.
-   **Self-closing**: No, it wraps around text or other elements.
-   **Attributes**:
    -   `href`: The URL the link points to.
    -   `target`: Specifies where to open the link (`_blank` opens in a new tab).
    -   `title`: Optional text shown when hovering over the link.

**Example**:

```html
<a href="https://example.com" target="_blank" title="Visit Example">
    Click here
</a>
```

---

### 5. `<img>` Tag (Image)

-   **Purpose**: Displays an image.
-   **Usage**: Used to embed images in the page.
-   **Self-closing**: Yes, it does not have a closing tag.
-   **Attributes**:
    -   `src`: The image source (file path or URL).
    -   `width`: The width of the image in pixels or %.
    -   `alt`: Alternative text for the image (shown if the image fails to load).

**Example**:

```html
<img src="photo.jpg" width="200" alt="A beautiful photo" />
```

---

### 6. `<ul>` Tag (Unordered List)

-   **Purpose**: Creates a list with bullet points.
-   **Usage**: Used for lists where the order of items does not matter (like a shopping list).
-   **Self-closing**: No, it wraps around `<li>` elements.
-   **Contains**: `<li>` tags for each list item.

**Example**:

```html
<ul>
    <li>Item 1</li>
    <li>Item 2</li>
    <li>Item 3</li>
</ul>
```

---

### 7. `<ol>` Tag (Ordered List)

-   **Purpose**: Creates a numbered list.
-   **Usage**: Used for lists where the order of items matters (like steps to get from A to B).
-   **Self-closing**: No, it wraps around `<li>` elements.
-   **Contains**: `<li>` tags for each list item.

**Example**:

```html
<ol>
    <li>First item</li>
    <li>Second item</li>
    <li>Third item</li>
</ol>
```

---

## Activity: Get Familiar with HTML Tags

Go to https://www.w3schools.com/tags/default.asp for a full list of tag names.

> 💡 W3Schools is a beginner-friendly site where you can read examples and even try the code in your browser by clicking the "Try it Yourself" button.

---

## Block vs Inline Elements in HTML

In HTML, elements behave differently depending on whether they are **block-level** or **inline**.

Understanding this difference helps you control **layout** and **styling** on your page.

---

### Block Elements

#### What is a Block Element?

-   Always starts on a **new line**
-   Takes up the **full width** of its parent (by default)

#### Examples of Block Elements

```html
<div>Hello</div>
<p>This is a paragraph.</p>
<h1>This is a heading</h1>
<ul>
    <li>List item</li>
</ul>
```

---

#### Visual

```html
<div>Block 1</div>
<div>Block 2</div>
```

Each block starts on a **new line**:

```
[Block 1                       ]
[Block 2                       ]
```

---

### Inline Elements

#### What is an Inline Element?

-   **Does NOT** start on a new line
-   Takes up **only as much width** as needed

#### Examples of Inline Elements

```html
<span>This is inline</span>
<a href="#">Link</a>
<strong>Bold</strong>
<em>Italic</em>
<img src="cat.jpg" alt="Cat" />
```

| Tag                | What it does |
| ------------------ | ------------ |
| `<a>`              | Hyperlink    |
| `<strong>` / `<b>` | Bold text    |
| `<em>` / `<i>`     | Italic text  |
| `<img>`            | Image        |

---

## Nesting Tags in HTML (Tags Inside Tags)

In HTML, **elements can be placed inside other elements**. This is called **nesting**.

It allows you to build structure and apply styles or functionality to specific parts of the content.

---

### What Does "Nesting" Mean?

To **nest** an element means to **place one HTML tag inside another**.

#### General Structure

```html
<outer-tag>
    <inner-tag>Content</inner-tag>
</outer-tag>
```

The **inner tag** is completely **inside** the **outer tag**.

---

### Example 1: Bold Text Inside a Paragraph

```html
<p>This is a <strong>bold</strong> word inside a sentence.</p>
```

-   `<p>` = Paragraph
-   `<strong>` = Makes text bold
-   `strong` is **nested** inside `p`

Output:

> This is a **bold** word inside a sentence.

---

### Example 2: Link Inside a List

```html
<ul>
    <li>
        <a href="https://status200.my">Visit Example</a>
    </li>
</ul>
```

-   `<ul>` = Unordered list
-   `<li>` = List item (nested inside the list)
-   `<a>` = Link (nested inside the list item)

Output:

-   [Visit Example](https://status200.my)

---

### Rules for Nesting Tags

| Rule                            | Description                                                  |
| ------------------------------- | ------------------------------------------------------------ |
| 🔄 Tags must be properly closed | Always close the inner tag **before** closing the outer one. |
| ❌ Don't overlap tags           | Incorrect: `<b><i>Text</b></i>` – tags are **crossed**       |
| ✅ Correct order                | `<b><i>Text</i></b>` – inner closes before outer             |

---

### Incorrect Nesting (Bad!)

```html
<p><strong>This is <em>not correct</strong></em></p>
```

**Why?**
You opened `<strong>` and `<em>`, but closed them in the wrong order.

---

### Correct Nesting (Good!)

```html
<p>
    <strong>This is <em>correct</em></strong>
</p>
```

**Rule:** Last opened = first closed

---

### Nested Layout Example

You can nest structure too, not just formatting.

```html
<div class="card">
    <h2>Product Title</h2>
    <p>This is a <b>great</b> product.</p>
    <a href="/buy">Buy now</a>
</div>
```

-   `<div>` wraps the full block
-   `<h2>`, `<p>`, and `<a>` are inside the `div`
-   `<b>` is nested inside the `p`

---

### Tips for Clean Nesting

-   ✅ Use **indentation** to make code readable
-   ✅ Close all tags properly
-   ✅ Don't mix block elements _inside_ inline-only elements

---

## Assigment: Write HTML

Now it's your turn to practice writing HTML!

> Use the HTML files you created in the assignment [Assignment: Create a Folder Structure](./01-folders-terminal.md#assignment-create-a-folder-structure).

**Tasks**

1. Set the title for each page that makes sense.
    - Homepage: "Welcome to My Site"
    - About page: "About Me"
    - Contact page: "Contact Me"
2. Add a heading (`<h1>`) to each page.
3. Add a paragraph (`<p>`) to each page.
4. Add links (`<a>`) to each page:
    - Homepage:
        - Link to the About page.
        - Link to the Contact page.
    - About:
        - Link back to the Homepage.
        - Link to the Contact page.
    - Contact:
        - Link back to the Homepage.
        - Link to the About page.
5. Add an image (`<img>`) to the Homepage:
    - Use image URL `https://picsum.photos/1000`.
    - Set the width to `300` pixels.
6. Add an unordered list (`<ul>`) to the About page:
    - List your top 3 hobbies or interests.
7. Add an image (`<img>`) to the About page:
    - Use the `profile.jpg` you saved in tour `Images` folder.
8. Add an ordered list (`<ol>`) to the Contact page:
    - List 3 ways to contact you (e.g., email, phone, social media).

**Done?**

Once done find the `index.html` in your file explorer and double-click it to open it in your browser.

You should now be able to navigate between the pages and see your content displayed correctly.

**Solution**

You can find the solution the `Assigments` folder of this stage in the file [02-write-html.md](./Assignments/02-write-html.md).

---

## What You've Learned

-   What HTML is and what it looks like
-   How to use basic HTML tags
-   How to structure a simple page
-   How to open your HTML file in a browser
-   The difference between block and inline elements
-   How to nest tags properly

> You're now officially a web developer! 🧑‍💻

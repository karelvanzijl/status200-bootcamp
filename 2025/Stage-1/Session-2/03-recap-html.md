# Basic Structure of a HTML file

```html
<html>
    <head>
        <title>Name of page</title>
    </head>
    <body>
        <!-- Visible content goes here -->
        <h1>Welcome</h1>
        <p>Hi everybody, this is my personal homepage</p>
    </body>
</html>
```

-   HTML files normally have the extension `.html`
-   The "homepage" HTML file is generally named `index.html`

# The Anatomy of HTML Elements

Understanding how HTML works starts with understanding **how each element is written**. Below is a breakdown of the structure of a typical HTML element.

---

## Regular (Non-Self-Closing) Element

A regular HTML element has **three main parts**:

```html
<tagname attribute1="value1" attribute2="value2">Content</tagname>
```

---

### Step-by-Step Breakdown

1. **Opening Angle Bracket**
   Begins with a `<`

2. **Tag Name**

    - For example: `p`, `h1`, `a`, `div`, etc.
    - Go to https://www.w3schools.com/tags/default.asp for a full is of tag names

    Example:

    ```html
    <a
    ```

3. **Attributes (optional)**
   Written inside the opening tag. Each attribute is:

    - A name (like `class`, `id`, `href`, `src`)
    - An equal sign `=`
    - A value inside quotes: `"value"`

    Example:

    ```html
    <a href="https://example.com" target="_blank"
    ```

4. **Closing Angle Bracket**
   Ends the opening tag: `>`

    Example:

    ```html
    <a href="https://example.com" target="_blank"></a>
    ```

5. **Content**
   This is the visible or interactive content inside the tag.

    Example:

    ```html
    <a href="https://example.com" target="_blank"> Click here</a>
    ```

6. **Closing Tag**

    - Starts with `</`
    - Then the tag name again
    - Ends with `>`

    Example:

    ```html
    <a href="https://example.com" target="_blank"> Click here </a>
    ```

---

#### Example

```html
<p class="intro">This is a paragraph.</p>
```

| Part                   | Meaning                                  |
| ---------------------- | ---------------------------------------- |
| `<p`                   | Opening bracket and tag name             |
| `class="intro"`        | Attribute (`class`) with value `"intro"` |
| `>`                    | Closes the opening tag                   |
| `This is a paragraph.` | Inner content                            |
| `</p>`                 | Closing tag                              |

---

#### Another Example

```html
<a href="https://example.com" target="_blank">Visit Site</a>
```

| Part              | Description              |
| ----------------- | ------------------------ |
| `<a`              | Anchor (link) tag        |
| `href="..."`      | Destination of the link  |
| `target="_blank"` | Open link in new tab     |
| `Visit Site`      | Link text shown to users |
| `</a>`            | Closing the anchor tag   |

---

## Self-Closing Tags

Some HTML elements don’t have any content and **don’t need a closing tag**. These are called **self-closing tags**.

### Structure

```html
<tagname attribute1="value1" />
```

---

#### Example: Image Tag

```html
<img src="cat.jpg" alt="A cute cat" />
```

| Part               | Meaning                            |
| ------------------ | ---------------------------------- |
| `<img`             | Tag name                           |
| `src="cat.jpg"`    | Source of image                    |
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

## Quick Summary

| Element Type         | Format                                    |
| -------------------- | ----------------------------------------- |
| Regular Element      | `<tagname attr="value">content</tagname>` |
| Self-Closing Element | `<tagname attr="value" />`                |

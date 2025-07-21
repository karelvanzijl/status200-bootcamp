## Navigation

1. [Overview](README.md)
2. [VS Code Setup](01-setup-vscode.md)
3. [Terminal & Folder Basics](02-terminal-folder.md)
4. [HTML Recap](03-html-recap.md) ← _You are here_
5. [CSS Basics](04-css-basics.md)
6. [Advanced Selectors](05-advanced-selectors.md)
7. [Box Model](06-box-model.md)

---

# HTML Quick Recap

Welcome to the HTML recap! This section will refresh your memory on the essential HTML concepts and elements we covered in the previous stage.

## HTML Document Structure

Every HTML document should have this basic structure:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Page Title</title>
    </head>
    <body>
        <!-- Content goes here -->
    </body>
</html>
```

## Essential HTML Elements

### Text Elements

-   `<h1>` to `<h6>` - Headings (most to least important)
-   `<p>` - Paragraphs
-   `<strong>` - Important text (bold)
-   `<em>` - Emphasized text (italic)

### Semantic Structure

-   `<header>` - Page or section header
-   `<nav>` - Navigation links
-   `<main>` - Main content area
-   `<section>` - Distinct sections of content
-   `<article>` - Independent, reusable content
-   `<aside>` - Sidebar content
-   `<footer>` - Page or section footer

### Lists

-   `<ul>` - Unordered list (bullets)
-   `<ol>` - Ordered list (numbers)
-   `<li>` - List item

### Links and Images

-   `<a href="url">Link text</a>` - Links
-   `<img src="image.jpg" alt="description">` - Images

### Container Elements

-   `<div>` - Generic container for grouping elements (no semantic meaning)
-   `<span>` - Generic inline container for styling text or inline elements

**When to use `<div>`:**

-   To group elements for styling purposes
-   When no semantic HTML element fits
-   To create layout containers
-   To apply CSS classes or IDs to multiple elements

**Example:**

```html
<div class="card">
    <h3>Card Title</h3>
    <p>Card content goes here.</p>
</div>
```

### More tags

-   Go to w3schools: [HTML Elements](https://www.w3schools.com/tags/default.asp) for a complete list of HTML elements.

## Best Practices

1. **Use semantic HTML** - Choose elements based on meaning, not appearance
2. **Always include alt text** for images
3. **Proper nesting** - Close tags in reverse order of opening
4. **Consistent indentation** - Makes code readable
5. **Use lowercase** for element names and attributes

## Example Semantic Structure

```html
<header>
    <nav>
        <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
    </nav>
</header>

<main>
    <section>
        <h1>Welcome to My Website</h1>
        <p>This is the main content area.</p>
    </section>
</main>

<footer>
    <p>&copy; 2025 My Website. All rights reserved.</p>
</footer>
```

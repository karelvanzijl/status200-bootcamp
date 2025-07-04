# Assignment: Building a Personal Bio Page

This assignment helps you practice four important topics:

1. ✅ File paths (relative and absolute)
2. ✅ The anatomy of HTML tags
3. ✅ Block vs inline elements
4. ✅ Nesting tags properly

---

## Part 1: Folder & File Setup

1. Use your terminal to create the following folder structure and files:

```
bio-website/
└── index.html
└── pages/
    └── about.html
    └── extra.html
└── images/
    └── profile.jpg
```

2. Save a profile photo inside the `images/` folder and name it: `profile.jpg`. Use your file explorer to do this (don't try it using the terminal)

---

## Part 2: Basic HTML Structure

```html
<html>
    <head>
        <title>Name of page</title>
    </head>
    <body>
        <!-- Content goes here -->
    </body>
</html>
```

### ✅ Task

Open `index.html`, `about.html`, `extra.html` and add this base structure

-   `index.html`
    -   change the page title to `Homepage`
    -   add a link to `about.html` using the relative path
    -   add a link to `extra.html` using the relative path
    -   add a heading and welcome text
-   `about.html`
    -   change the page title to `About`
    -   add a link to `index.html` using the relative path
    -   add a link to `extra.html` using the relative path
    -   add a heading and about you text
    -   add image showing your `profile.jpg` using the relative path
-   `test.html`
    -   change the page title to `Extra`
    -   add a link to `index.html` using the relative path
    -   add a link to `about.html` using the relative path

---

## Extra Challenge

In `extra.html` create a paragraph with nested elements. For example a text that has:

1. one word in it that is **bold**
2. one word in it that links to `index.html`
3. one word in it that is _italic_

> ❌ Make sure you don’t overlap tags!
> ✅ Close tags in the correct order.

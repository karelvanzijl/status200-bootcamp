## Navigation

1. [Overview](readme.md)
2. [Quick Quiz](./01-quick-quiz.md) ← _You are here_
3. [Live Coding](./02-live-coding.md)
4. [Box Model & Selectors](./03-box-model-and-selectors.md)
5. [Positioning & Flexbox](./04-positioning-and-flexbox.md)
6. [Flexbox Froggy Game](./05-flex-froggy-game.md)
7. [Media Queries & Responsive Design](./06-media-queries.md)

---

# Quick Quiz

## Instructions:

**1. Raise your hand if you know the answer**

-   If you raise your hand, be ready to share your answer.

**2. If you don't know the answer, keep your hand down**

-   Be honest - it's okay not to know everything yet!

**3. Don't worry if you're unsure**

-   We'll discuss every answer together!

---

## Quiz Questions with Answers

### HTML Structure & Elements

**Question 1:** Which tag is used for the most important heading on a page?

-   a) `<h1>`
-   b) `<h2>`
-   c) `<header>`
-   d) `<p>`

**Answer: a) `<h1>`**

**Explanation:** `<h1>` is the top-level heading and should be used only once per page for the main title. It's the most important heading for SEO and accessibility. The `<header>` element is a container, not a heading. `<h2>` is for secondary headings, and `<p>` is for paragraphs, not headings.

---

**Question 2:** What's the correct order for a basic HTML file structure?

-   a) `<html>`, `<head>`, `<body>`
-   b) `<body>`, `<html>`, `<head>`
-   c) `<head>`, `<body>`, `<html>`

**Answer: a) `<html>`, `<head>`, `<body>`**

**Explanation:** The `<html>` element is the root container for everything. Inside it, `<head>` comes first (containing metadata, title, CSS links) and `<body>` comes second (containing the visible content). This structure is required by HTML standards - the browser expects this specific order.

---

### CSS Linking

**Question 3:** How do you link an external CSS file called `styles.css` to your HTML?

-   a) `<css src="styles.css">`
-   b) `<link rel="stylesheet" href="styles.css">`
-   c) `<script src="styles.css">`

**Answer: b) `<link rel="stylesheet" href="styles.css">`**

**Explanation:** The `<link>` element with `rel="stylesheet"` tells the browser this is a CSS file. The `href` attribute points to the file location. This goes in the `<head>` section. Option (a) doesn't exist, and option (c) is for JavaScript files, not CSS.

---

### Selectors & Classes

**Question 4:** Which selector targets ALL elements with class "menu"?

-   a) `menu {}`
-   b) `.menu {}`
-   c) `#menu {}`

**Answer: b) `.menu {}`**

**Explanation:** The dot `.` prefix selects elements by class name. So `.menu` targets all elements with `class="menu"`. The hash `#` is for unique IDs, and without any prefix (option a) would target HTML element names like `<menu>` which doesn't exist.

**When to use different selectors:**

-   **Tag selectors** (`p {}`, `div {}`): Use for styling ALL elements of that type (e.g., all paragraphs should have the same font)
-   **Class selectors** (`.menu {}`): Use for reusable styles across multiple elements (e.g., multiple buttons with the same style)
-   **ID selectors** (`#header {}`): Use for unique elements that appear only once per page (e.g., the main navigation, footer)

---

**Question 5:** Can you use the same class name on multiple elements on the same page?

-   a) Yes
-   b) No

**Answer: a) Yes**

**Explanation:** Classes are designed to be reusable - you can have multiple elements with the same class name like `class="button"` on many buttons. This is different from IDs which must be unique per page. Classes are perfect for styling groups of similar elements.

**Common patterns:**

-   Multiple elements can share the same class: `<div class="card">`, `<div class="card">`, `<div class="card">`
-   One element can have multiple classes: `<button class="btn primary large">`
-   IDs must be unique: Only one `<div id="header">` per page
    -   We don't use IDs that ofter for styling purposes.
    -   IDs are more for JavaScript targeting.

---

### Box Model

**Question 6:** Which property adds space INSIDE the border of an element?

-   a) margin
-   b) padding
-   c) border

**Answer: b) padding**

**Explanation:** Padding adds space inside the element's border - between the border and the content. Margin adds space outside the border. Border is the line itself, not space. Think of padding as internal cushioning and margin as external spacing from other elements.

**Box model**

```
┌─────────────────────────────────────────────────────────┐
│ margin                                                  │
│ ┌─────────────────────────────────────────────────────┐ │
│ │ border                                              │ │
│ │ ┌─────────────────────────────────────────────────┐ │ │
│ │ │ padding                                         │ │ │
│ │ │ ┌─────────────────────────────────────────────┐ │ │ │
│ │ │ │           CONTENT                           │ │ │ │
│ │ │ │                                             │ │ │ │
│ │ │ └─────────────────────────────────────────────┘ │ │ │
│ │ └─────────────────────────────────────────────────┘ │ │
│ └─────────────────────────────────────────────────────┘ │
└─────────────────────────────────────────────────────────┘
```

**Margin:**

-   Adds space OUTSIDE the element (between elements)
-   ALWAYS TRANSPARENT (shows parent's background)
-   NOT clickable (not part of the element)
-   Example: Space between paragraphs

**Padding:**

-   Adds space INSIDE the element (between border and content)
-   INHERITS the element's background color/image
-   Clickable area (part of the element)
-   Example: Button text spacing from button edge

**Visual Example:**

```
┌──────────────────────────────────────────┐ ← Some Element
│                                          │
└──────────────────────────────────────────┘
               ↕ margin (transparent space)
┌──────────────────────────────────────────┐ ← Other element
│ padding │        CONTENT       │ padding │
│         │        (text)        │         │ ← padding has background color
└──────────────────────────────────────────┘
```

**Real-world analogy:** Padding is like the cushioning inside a chair, margin is like the space between chairs.

---

**Question 7:** What is the default `box-sizing` value for most elements?

-   a) border-box
-   b) content-box
-   c) margin-box

**Answer: b) content-box**

**Explanation:** With `content-box` (the default), when you set `width: 200px`, that's only the content area. Padding and border are added on top, making the total element wider. This is why many developers use `box-sizing: border-box` to include padding and border in the width calculation.

**Visual Comparison:**

Example CSS:

`width: 200px;`
`padding: 20px;`
`border: 5px solid black;`

**content-box (default):**

```
┌────────────────────────────────────────────────┐
│ margin - NOT counted in width calculation      │
│ ┌────────────────────────────────────────────┐ │
│ │ border (5px)                               │ │
│ │ ┌────────────────────────────────────────┐ │ │
│ │ │ padding (20px)                         │ │ │
│ │ │ ┌────────────────────────────────────┐ │ │ │ ← width: 200px
│ │ │ │               CONTENT              │ │ │ │   (content only)
│ │ │ └────────────────────────────────────┘ │ │ │
│ │ └────────────────────────────────────────┘ │ │
│ └────────────────────────────────────────────┘ │ ← Element: 250px
└────────────────────────────────────────────────┘   (200+40+10)
```

**border-box:**

```
┌────────────────────────────────────────────────┐
│ margin - NOT counted in width calculation      │
│ ┌────────────────────────────────────────────┐ │ ← width: 200px
│ │ border (5px)                               │ │   (border to border)
│ │ ┌────────────────────────────────────────┐ │ │
│ │ │ padding (20px)                         │ │ │
│ │ │ ┌────────────────────────────────────┐ │ │ │
│ │ │ │         CONTENT (150px)            │ │ │ │
│ │ │ └────────────────────────────────────┘ │ │ │
│ │ └────────────────────────────────────────┘ │ │
│ └────────────────────────────────────────────┘ │ ← Element: 200px
└────────────────────────────────────────────────┘
```

**Key Difference:**

-   **content-box**: Width = content only (200px content + 40px padding + 10px border = 250px element)
-   **border-box**: Width = border to border (150px content + 40px padding + 10px border = 200px element)
-   **IMPORTANT**: Margin is ALWAYS added outside and never included in width calculations for either model!

---

### Positioning & Flexbox

**Question 8:** Which positioning value will make an element remain at the top of the viewport after scrolling past it?

-   a) `position: static`
-   b) `position: fixed`
-   c) `position: sticky`
-   d) `position: absolute`
-   e) `position: relative`

**Answer: c) `position: sticky`**

**Explanation:** `position: sticky` makes an element scroll normally until it reaches a defined position (like `top: 0`), then it remains fixed at that position while scrolling. `static` is the default with no special positioning. `fixed` would be positioned immediately regardless of scroll position. `absolute` and `relative` don't respond to scrolling in this way.

**Document Flow Impact:**

-   **static & relative**: Stay in normal document flow (other elements flow around them)
-   **absolute & fixed**: Removed from document flow (other elements ignore them)
-   **sticky**: Stays in flow until it becomes "stuck"

**Quick Reference:**

```
static    → Normal flow, no positioning
relative  → Normal flow + offset from original position
absolute  → Out of flow, positioned relative to parent
fixed     → Out of flow, positioned relative to viewport
sticky    → Normal flow until threshold, then fixed
```

---

**Question 9:** Which CSS property is used to align flex items along the **Main Axis** inside a flex container?

-   a) `align-items`
-   b) `justify-content`
-   c) `flex-direction`
-   d) `flex-wrap`

**Answer: b) `justify-content`**

**Explanation:** `justify-content` controls how flex items are distributed along the main axis (horizontally by default). It handles spacing between and around items.

`align-items` controls alignment on the cross axis (vertically by default).
`flex-direction` sets the main axis direction.
`flex-wrap` controls whether items wrap to new lines.

**Common justify-content values:**

-   `flex-start` → Items packed at start (default)
-   `flex-end` → Items packed at end
-   `center` → Items centered
-   `space-between` → Equal space between items
-   `space-around` → Equal space around each item
-   `space-evenly` → Equal space everywhere

**Quick tip:** Think "justify" = main axis (usually horizontal), "align" = cross axis (usually vertical)

---

### Code Analysis

**Question 10:** Is this valid HTML?

```
<div>
    <p>Paragraph 1</p>
    <p>Paragraph 2</div>
...
```

-   a) Yes
-   b) No

**Answer: b) No**

**Explanation:** The second paragraph is missing its closing `</p>` tag. The code shows `<p>Paragraph 2</div>` but it should be `<p>Paragraph 2</p>`. Every opening tag needs a corresponding closing tag. This would cause the HTML to be malformed and could lead to unexpected display issues.

**Quick tip:** When using VS Code and the Prettier extension, you'll see the "Prettier" button in the bottom right corner becoming red if there are syntax errors. This indicates something is wrong with your HTML structure.

---

### Semantic HTML

**Question 11:** Which element is best for marking up navigation links?

-   a) `<nav>`
-   b) `<ul>`
-   c) `<header>`
-   d) `<div>`

**Answer: a) `<nav>`**

**Explanation:** `<nav>` is the semantic HTML element specifically designed for navigation sections. While you could use `<ul>` for the list of links inside, or `<div>` as a generic container, `<nav>` tells browsers and screen readers that this section contains navigation links. `<header>` is for the top section of a page, not specifically for navigation.

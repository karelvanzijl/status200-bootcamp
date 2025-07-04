# Block vs Inline Elements in HTML

In HTML, elements behave differently depending on whether they are **block-level** or **inline**.

Understanding this difference helps you control **layout** and **styling** on your page.

---

## 1. Block Elements

### What is a Block Element?

-   Always starts on a **new line**
-   Takes up the **full width** of its parent (by default)

### Examples of Block Elements

```html
<div>Hello</div>
<p>This is a paragraph.</p>
<h1>This is a heading</h1>
<ul>
    <li>List item</li>
</ul>
```

| Tag              | What it does      |
| ---------------- | ----------------- |
| `<div>`          | Generic container |
| `<p>`            | Paragraph         |
| `<h1>` to `<h6>` | Headings          |
| `<ul>`, `<ol>`   | Lists             |
| `<li>`           | List item         |

---

### Visual

```html
<div>Block 1</div>
<div>Block 2</div>
```

Each block starts on a **new line**:

```
[Block 1          ]
[Block 2          ]
```

---

## 2. Inline Elements

### What is an Inline Element?

-   **Does NOT** start on a new line
-   Takes up **only as much width** as needed

### Examples of Inline Elements

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

# Nesting Tags in HTML (Tags Inside Tags)

In HTML, **elements can be placed inside other elements**. This is called **nesting**.

It allows you to build structure and apply styles or functionality to specific parts of the content.

---

## What Does "Nesting" Mean?

To **nest** an element means to **place one HTML tag inside another**.

### General Structure

```html
<outer-tag>
    <inner-tag>Content</inner-tag>
</outer-tag>
```

The **inner tag** is completely **inside** the **outer tag**.

---

## Example 1: Bold Text Inside a Paragraph

```html
<p>This is a <strong>bold</strong> word inside a sentence.</p>
```

-   `<p>` = Paragraph
-   `<strong>` = Makes text bold
-   `strong` is **nested** inside `p`

Output:

> This is a **bold** word inside a sentence.

---

## Example 2: Link Inside a List

```html
<ul>
    <li><a href="https://example.com">Visit Example</a></li>
</ul>
```

-   `<ul>` = Unordered list
-   `<li>` = List item
-   `<a>` = Link (nested inside the list item)

Output:

-   [Visit Example](https://example.com)

---

## ✅ Rules for Nesting Tags

| Rule                            | Description                                                  |
| ------------------------------- | ------------------------------------------------------------ |
| 🔄 Tags must be properly closed | Always close the inner tag **before** closing the outer one. |
| ❌ Don't overlap tags           | Incorrect: `<b><i>Text</b></i>` – tags are **crossed**       |
| ✅ Correct order                | `<b><i>Text</i></b>` – inner closes before outer             |

---

## ❌ Incorrect Nesting (Bad!)

```html
<p><strong>This is <em>not correct</strong></em></p>
```

**Why?**
You opened `<strong>` and `<em>`, but closed them in the wrong order.

---

## ✅ Correct Nesting (Good!)

```html
<p>
    <strong>This is <em>correct</em></strong>
</p>
```

**Rule:** Last opened = first closed

---

## Nested Layout Example

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
-   `<span>` is nested inside the `p`

---

## Real-World Analogy

Nesting is like **boxes inside boxes**:

-   A `<div>` is a **big box**.
-   Inside it, you put **smaller boxes** like `<h1>`, `<p>`, `<a>`, etc.
-   Inside those boxes, you might have even **smaller boxes** (like `<span>` or `<strong>`).

---

## Tips for Clean Nesting

-   ✅ Use **indentation** to make code readable
-   ✅ Close all tags properly
-   ✅ Don’t mix block elements _inside_ inline-only elements

---

## 🚫 Invalid Nesting Example

```html
<a href="#"><div>This is wrong</div></a>
```

-   You should **not put block elements** like `<div>` inside inline elements like `<a>`

✅ **Correct way**:

```html
<div><a href="#">This is right</a></div>
```

---

## Summary

| Concept                          | Example                             |
| -------------------------------- | ----------------------------------- |
| Nesting tags                     | `<p><strong>bold</strong></p>`      |
| Correct closing order            | Open A → Open B → Close B → Close A |
| Don't cross tags                 | ❌ `<b><i>Text</b></i>`             |
| Use indentation                  | Keeps things readable               |
| Some tags can't go inside others | E.g., `<div>` inside `<a>` ❌       |

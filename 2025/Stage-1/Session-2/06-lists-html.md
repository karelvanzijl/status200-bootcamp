# HTML Lists

In HTML, lists are used to display items in a structured format. Lists help organize content, making it easier to read and understand.

There are **three main types** of lists in HTML:

1. Unordered List (`<ul>`)
2. Ordered List (`<ol>`)


---

## 1. Unordered List (`<ul>`)

An **unordered list** is used when the order of the items does not matter. For example, a shopping list or a list of features. The items are usually shown with **bullet points**.

###  Tags Used:
- `<ul>` = unordered list (wraps the whole list)
- `<li>` = list item (used for each item)

###  Structure:

```html
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>

```
###  Explanation:

- The `<ul>` tag is used to create an unordered list.
- The `<li>` tag is used to define each item inside the list.
- All the `<li>` elements must be placed inside the `<ul>` opening and closing tags.
- The browser will display each list item with a bullet point (●) by default.

---

###  Example:

```html
<ul>
  <li>Apples</li>
  <li>Oranges</li>
  <li>Bananas</li>
</ul>
```

###  When to Use:
Use an unordered list when the order of items is not important. Some examples:

- A list of groceries
- Features of a product
- Names of friends
- Items to pack for a trip


### 2. Ordered List (`<ol>`)

An ordered list is used when the order of items does matter. This type of list is automatically numbered by the browser.

For example, if you're listing steps to bake a cake, the order is important.

###  Tags Used:

- `<ol>` = ordered list (wraps the list)
- `<li>` = list item (used for each item)


### Structure:
  
```html
<ol>
  <li>First step</li>
  <li>Second step</li>
  <li>Third step</li>
</ol>
```

###  Explanation:

- The `<ol>` tag creates a list where items are shown with numbers.
- Like the unordered list, each item is defined using `<li>`.
- The browser automatically adds the numbers (1, 2, 3...) in the correct order.

###  Example:

```html
<ol>
  <li>Wake up</li>
  <li>Brush your teeth</li>
  <li>Eat breakfast</li>
</ol>
```

### When to Use:
Use an ordered list when the sequence of items matters. Some examples:

- Steps in a recipe
- Instructions for a task
- A ranked list (e.g., Top 5 movies)
- A to-do list that must be done in order

### Things to remember

- Ordered list
- unordered list 

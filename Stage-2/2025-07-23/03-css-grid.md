## Navigation

1. [Overview](readme.md)
2. [Project Solution: Flexbox Menu & Boxes](01-project-solution.md)
3. [External CSS](02-external-css.md)
4. [CSS Grid Fundamentals](03-css-grid.md) ← _You are here_

---

# CSS Grid Fundamentals

## What is CSS Grid?

CSS Grid is a two-dimensional layout system that allows you to create complex layouts with rows and columns. It's perfect for:

-   Creating page layouts with header, footer, sidebar, and main content
-   Building responsive grids of items
-   Aligning content in both dimensions simultaneously
-   Creating complex, overlapping layouts

## Core Concepts

### Grid Container vs Grid Items

Just like Flexbox, CSS Grid works with a parent container and child items. For both the container and the items we hace different CSS properties to control their behavior.

```html
<!-- Grid Container -->
<div class="grid-container">
    <div>Item 1</div>
    <!-- Grid Item -->
    <div>Item 2</div>
    <!-- Grid Item -->
    <div>Item 3</div>
    <!-- Grid Item -->
</div>
```

### Grid Lines, Tracks, and Areas

In CSS Grid, the layout is defined by grid lines, tracks, and areas:

```
Grid Lines (numbered)
  1   2   3   4   5
1 ┌───┬───┬───┬───┐
  │   │   │   │   │  ← Grid Tracks (rows)
2 ├───┼───┼───┼───┤
  │   │   │   │   │
3 ├───┼───┼───┼───┤
  │   │   │   │   │
4 └───┴───┴───┴───┘
    ↑
    Grid Tracks (columns)
```

-   **Grid Lines**: The lines that define the grid structure
-   **Grid Tracks**: The space between two grid lines (rows/columns)
-   **Grid Areas**: Rectangular areas defined by four grid lines

## Grid Container Properties

Just like with the flexbox layout, the first step in using CSS Grid is to define a grid container. This is done by applying the `display: grid` property to a parent element. Once you have a grid container, you can define how the rows and columns are structured.

### 1. Display Grid

```css
.container {
    display: grid; /* Creates a grid container */
}
```

You might notice that by setting `display: grid`, visually nothing changes yet as it did when we defined a flexbox. This is because we still need to define the rows and columns of the grid.

### 2. Define Columns and Rows

You can define the number and size of rows and columns in your grid using the `grid-template-rows` and `grid-template-columns` properties.

```css
.container {
    /* Create a grid container */
    display: grid;

    /* Explicit column sizes */
    grid-template-columns: 100px 100px 100px; /* Fixed, fixed, fixed */
    grid-template-columns: 200px 1fr 100px; /* Fixed, flexible, fixed */
    grid-template-columns: repeat(3, 1fr); /* Three equal columns */

    /* Explicit row sizes */
    grid-template-rows: 100px auto 50px; /* Fixed, content-based, fixed */
    grid-template-rows: repeat(3, 200px); /* Fixed: three 200px rows */

    /* Combined */
    grid-template: repeat(3, 1fr) / repeat(3, 100px); /* 3 rows, 3 columns */
}
```

💡 Find more info about [units and functions](#useful-grid-functions)!

### 3. Gap (Spacing)

Just like with Flexbox, you can add spacing between grid items using the `gap` property. This property defines the space between rows and columns.

```css
.container {
    /* Create a grid container */
    display: grid;

    /* Define columns and rows  */
    /* .... */

    /* Add spacing between rows and columns */
    gap: 20px; /* Same gap for rows and columns */
    gap: 20px 10px; /* Row gap, column gap */
    row-gap: 20px; /* Gap between rows */
    column-gap: 10px; /* Gap between columns */
}
```

### 4. Alignment Properties

Keep in mind we're still working on the grid container. When we talk about alignment, we're referring to how the entire grid is positioned within its container, as well as how items are aligned within their respective grid cells.

```css
.container {
    display: grid;

    /* Align all items within their grid cells */
    justify-items: start | end | center | stretch; /* Horizontal alignment */
    align-items: start | end | center | stretch; /* Vertical alignment */
    place-items: center; /* Shorthand for both */

    /* Align the entire grid within the container */
    justify-content: start | end | center | stretch | space-around |
        space-between | space-evenly;
    align-content: start | end | center | stretch | space-around | space-between
        | space-evenly;
    place-content: center; /* Shorthand for both */
}
```

## Grid Item Properties

Once you have defined your grid container, you can control the individual grid items using various properties. These properties allow you to specify how each item behaves within the grid.

### 1. Grid Line Positioning

You can position grid items by specifying which grid lines they should start and end on. This allows for precise control over where each item appears in the grid.

```css
.item {
    /* Position by line numbers */
    grid-column-start: 1;
    grid-column-end: 3; /* Spans from line 1 to line 3 */
    grid-row-start: 2;
    grid-row-end: 4;

    /* Shorthand */
    grid-column: 1 / 3; /* Start / End */
    grid-row: 2 / 4;
    grid-area: 2 / 1 / 4 / 3; /* row-start / column-start / row-end / column-end */
}
```

💡 Keep in mind we're working with **grid lines** when determining start and end.

### 2. Grid Span

You can make grid items span multiple rows or columns using the `span` keyword. This is useful for creating larger items that take up more space in the grid.

```css
.item {
    grid-column: span 2; /* Span 2 columns */
    grid-row: span 3; /* Span 3 rows */
    grid-column: 1 / span 2; /* Start at line 1, span 2 columns */
}
```

### 3. Individual Item Alignment

```css
.item {
    justify-self: start | end | center | stretch; /* Horizontal within cell */
    align-self: start | end | center | stretch; /* Vertical within cell */
    place-self: center; /* Shorthand for both */
}
```

---

### 🌱 Interactive Practice: Grid Garden

Now that you've learned the core grid item properties, practice them with this fun interactive game:

**🎮 [Play Grid Garden](https://cssgridgarden.com/)**

This game teaches CSS grid concepts by helping you water the correct carrots using CSS grid properties. Play all levels, which cover the grid item properties you just learned!

**Tips for Grid Garden:**

-   Don't skip levels - each builds on the previous
-   If you get stuck, refer back to the concepts above

---

## Useful Grid Functions

### 1. fr (Fractional Units)

```css
.container {
    grid-template-columns: 1fr 2fr 1fr; /* 1:2:1 ratio */
}
```

### 2. minmax()

```css
.container {
    grid-template-columns: minmax(200px, 1fr) 300px; /* Min 200px, max flexible */
    grid-template-rows: minmax(100px, auto); /* Min 100px, content height */
}
```

### 3. repeat()

```css
.container {
    grid-template-columns: repeat(4, 1fr); /* Four equal columns */
    grid-template-columns: repeat(3, 100px); /* Three 100px columns */
    grid-template-columns: repeat(
        auto-fit,
        200px
    ); /* As many 200px cols as fit */
    grid-template-columns: repeat(
        auto-fill,
        minmax(250px, 1fr)
    ); /* Responsive grid */
}
```

### 4. auto-fit vs auto-fill

```css
.container {
    /* auto-fit: Stretches items to fill container */
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));

    /* auto-fill: Maintains item size, creates empty columns if needed */
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
}
```

## Common Layout Patterns

### 1. Card Grid

```css
.card-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 20px;
}

.card {
    border: 1px solid #ddd;
    padding: 20px;
    border-radius: 8px;
}
```

[📖 Online example](https://status200.my/bootcamp/practice/2025-07-23/card-grid.html)

### 2. Complex Magazine Layout

```css
.magazine {
    display: grid;
    grid-template-columns: repeat(6, 1fr);
    grid-template-rows: repeat(4, 200px);
    gap: 10px;
}

.featured {
    grid-column: 1 / 4; /* Spans 3 columns */
    grid-row: 1 / 3; /* Spans 2 rows */
}

.story-1 {
    grid-column: 4 / 7; /* Spans 3 columns */
    grid-row: 1; /* Single row */
}

.story-2 {
    grid-column: 4 / 6; /* Spans 2 columns */
    grid-row: 2;
}
```

[📖 Online example](https://status200.my/bootcamp/practice/2025-07-23/magazine-layout-grid.html)

### 3. Image Gallery

```css
.gallery {
    display: grid;
    grid-template-columns: repeat(6, 1fr);
    grid-auto-rows: 150px;
    gap: 15px;
    max-width: 1200px;
    margin: 0 auto;
}

/* Specific grid placements for masonry effect */
.item-1 {
    grid-column: span 2;
    grid-row: span 2;
}
.item-2 {
    grid-column: span 1;
    grid-row: span 1;
}
.item-3 {
    grid-column: span 1;
    grid-row: span 2;
}
.item-4 {
    grid-column: span 2;
    grid-row: span 1;
}
.item-5 {
    grid-column: span 1;
    grid-row: span 1;
}
.item-6 {
    grid-column: span 2;
    grid-row: span 2;
}
.item-7 {
    grid-column: span 1;
    grid-row: span 1;
}
.item-8 {
    grid-column: span 3;
    grid-row: span 1;
}
.item-9 {
    grid-column: span 1;
    grid-row: span 2;
}
.item-10 {
    grid-column: span 2;
    grid-row: span 1;
}
.item-11 {
    grid-column: span 1;
    grid-row: span 1;
}
.item-12 {
    grid-column: span 2;
    grid-row: span 2;
}
```

[📖 Online example](https://status200.my/bootcamp/practice/2025-07-23/image-gallery-grid.html)

## Grid vs Flexbox

| Task                         | CSS Grid         | Flexbox          |
| ---------------------------- | ---------------- | ---------------- |
| 2D Layout (rows and columns) | ✅ Perfect       | ❌ Limited       |
| 1D Layout (row or column)    | ✅ Good          | ✅ Perfect       |
| Content-first design         | ❌ Layout-first  | ✅ Content-first |
| Complex overlapping layouts  | ✅ Excellent     | ❌ Difficult     |
| Simple component alignment   | ✅ Good          | ✅ Perfect       |
| Browser support              | ✅ Good (modern) | ✅ Excellent     |

## Debugging Grid

### Browser Dev Tools

1. Right-click on grid container → Inspect
2. Look for the "Grid" badge in Elements panel
3. Click it to see grid overlay on the page
4. Shows grid lines, areas, and track sizes

### Common Issues

-   **Items not positioning correctly**: Check grid line numbers (they start at 1, not 0)
-   **Unexpected gaps**: Check for implicit grid tracks being created
-   **Items not filling cells**: Check `align-items` and `justify-items`
-   **Responsive issues**: Use `minmax()` and `auto-fit`/`auto-fill`

## Quick Reference

```css
/* Grid Container */
.container {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-template-rows: auto 1fr auto;
    gap: 20px;

    /* Alignment */
    place-items: center; /* Align items in cells */
    place-content: center; /* Align grid in container */
}

/* Grid Items */
.item {
    grid-column: 1 / 3; /* Span columns */
    grid-row: span 2; /* Span rows */
    place-self: center; /* Individual alignment */
}
```

## Practice Tips

1. Start with `grid-template-columns` and `grid-template-rows`
2. `fr` units are your friend for flexible layouts
3. Combine `minmax()` with `auto-fit` for responsive grids
4. Use browser dev tools to visualize your grid
5. Remember: Grid is layout-first, Flexbox is content-first
6. **Practice interactively**: Play [Grid Garden](https://cssgridgarden.com/) - a fun game to master CSS Grid concepts through hands-on exercises

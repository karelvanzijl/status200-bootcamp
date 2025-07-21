# Flexbox Fundamentals

## What is Flexbox?

Flexbox (Flexible Box Layout) is a one-dimensional layout method for arranging items in rows or columns. It makes it easy to:

-   Align items vertically and horizontally
-   Distribute space between items
-   Create responsive layouts
-   Handle different screen sizes

## Core Concepts

### Flex Container vs Flex Items

```html
<div class="flex-container">
    <!-- Flex Container -->
    <div>Item 1</div>
    <!-- Flex Item -->
    <div>Item 2</div>
    <!-- Flex Item -->
    <div>Item 3</div>
    <!-- Flex Item -->
</div>
```

### Main Axis vs Cross Axis

```
Main Axis (horizontal by default)
←─────────────────────────────────→
│  [Item 1]  [Item 2]  [Item 3]  │ ← Cross Axis
│                                 │   (vertical)
↓                                 ↓
```

-   **Main Axis**: Primary direction of flex items (horizontal by default)
-   **Cross Axis**: Perpendicular to main axis (vertical by default)

## Flex Container Properties

### 1. Display Flex

```css
.container {
    display: flex; /* Creates a flex container */
}
```

### 2. Flex Direction

```css
.container {
    flex-direction: row; /* Default: left to right */
    flex-direction: row-reverse; /* Right to left */
    flex-direction: column; /* Top to bottom */
    flex-direction: column-reverse; /* Bottom to top */
}
```

### 3. Justify Content (Main Axis Alignment)

```css
.container {
    justify-content: flex-start; /* Default: start of main axis */
    justify-content: flex-end; /* End of main axis */
    justify-content: center; /* Center of main axis */
    justify-content: space-between; /* Space between items */
    justify-content: space-around; /* Space around items */
    justify-content: space-evenly; /* Equal space between/around */
}
```

### 4. Align Items (Cross Axis Alignment)

```css
.container {
    align-items: stretch; /* Default: stretch to fill */
    align-items: flex-start; /* Start of cross axis */
    align-items: flex-end; /* End of cross axis */
    align-items: center; /* Center of cross axis */
    align-items: baseline; /* Align to text baseline */
}
```

### 5. Gap (Spacing Between Items)

```css
.container {
    gap: 20px; /* Same gap for rows and columns */
    gap: 20px 10px; /* Row gap, column gap */
    row-gap: 20px; /* Gap between rows */
    column-gap: 10px; /* Gap between columns */
}
```

### 6. Flex Wrap

```css
.container {
    flex-wrap: nowrap; /* Default: items on one line */
    flex-wrap: wrap; /* Items wrap to new line */
    flex-wrap: wrap-reverse; /* Items wrap in reverse order */
}
```

## Flex Item Properties

### 1. Flex Grow

```css
.item {
    flex-grow: 0; /* Default: don't grow */
    flex-grow: 1; /* Grow to fill available space */
    flex-grow: 2; /* Grow twice as much as items with flex-grow: 1 */
}
```

### 2. Flex Shrink

```css
.item {
    flex-shrink: 1; /* Default: shrink if needed */
    flex-shrink: 0; /* Don't shrink */
    flex-shrink: 2; /* Shrink twice as much */
}
```

### 3. Flex Basis

```css
.item {
    flex-basis: auto; /* Default: based on content */
    flex-basis: 200px; /* Initial size before growing/shrinking */
    flex-basis: 25%; /* Percentage of container */
}
```

### 4. Flex Shorthand

```css
.item {
    flex: 1; /* flex-grow: 1, flex-shrink: 1, flex-basis: 0 */
    flex: 0 1 200px; /* grow: 0, shrink: 1, basis: 200px */
    flex: none; /* grow: 0, shrink: 0, basis: auto */
}
```

### 5. Order

```css
.item-1 {
    order: 2;
} /* Appears second */
.item-2 {
    order: 1;
} /* Appears first */
.item-3 {
    order: 3;
} /* Appears third */
```

## Common Layout Patterns

### 1. Center Everything

```css
.center-everything {
    display: flex;
    justify-content: center; /* Horizontal center */
    align-items: center; /* Vertical center */
    height: 100vh; /* Full viewport height */
}
```

### 2. Navigation Bar

```css
.navbar {
    display: flex;
    justify-content: space-between; /* Logo left, menu right */
    align-items: center;
    padding: 0 20px;
}

.navbar .logo {
    flex-shrink: 0; /* Don't shrink logo */
}

.navbar .menu {
    display: flex;
    gap: 20px;
}
```

### 3. Three-Column Layout

```css
.three-columns {
    display: flex;
    gap: 20px;
}

.sidebar {
    flex: 0 0 200px; /* Fixed width sidebar */
}

.main-content {
    flex: 1; /* Takes remaining space */
}

.ads {
    flex: 0 0 150px; /* Fixed width ads */
}
```

### 4. Card Grid (Responsive)

```css
.card-grid {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
}

.card {
    flex: 1 1 300px; /* Grow, shrink, min-width 300px */
    min-width: 0; /* Allow cards to shrink below content width */
}
```

### 5. Holy Grail Layout

```css
.page {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

.header,
.footer {
    flex-shrink: 0; /* Don't shrink */
}

.main-area {
    display: flex;
    flex: 1; /* Take remaining space */
}

.sidebar {
    flex: 0 0 200px;
}

.content {
    flex: 1;
}
```

## Flexbox vs Other Layout Methods

| Task                         | Flexbox      | CSS Grid         | Float           |
| ---------------------------- | ------------ | ---------------- | --------------- |
| 1D Layout (row or column)    | ✅ Perfect   | ❌ Overkill      | ❌ Complex      |
| 2D Layout (rows and columns) | ❌ Limited   | ✅ Perfect       | ❌ Very complex |
| Component alignment          | ✅ Perfect   | ✅ Good          | ❌ Difficult    |
| Browser support              | ✅ Excellent | ✅ Good (modern) | ✅ Universal    |

## Debugging Flexbox

### Browser Dev Tools

1. Right-click on flex container → Inspect
2. Look for the "Flexbox" badge in Elements panel
3. Click it to see flex overlay on the page
4. Shows main/cross axis and item sizes

### Common Issues

-   **Items not centering**: Check both `justify-content` and `align-items`
-   **Items overflowing**: Add `flex-wrap: wrap` or adjust `flex-shrink`
-   **Unequal spacing**: Use `gap` instead of margins when possible
-   **Items too small**: Set `min-width` or `min-height`

---

## Quick Reference

```css
/* Flex Container */
.container {
    display: flex;
    flex-direction: row | column;
    justify-content: flex-start | center | space-between;
    align-items: stretch | center | flex-start | flex-end;
    gap: 20px;
    flex-wrap: wrap;
}

/* Flex Items */
.item {
    flex: 1; /* Grow to fill space */
    flex: 0 0 200px; /* Fixed width */
    order: 2; /* Change visual order */
}
```

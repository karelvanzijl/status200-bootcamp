# Advanced CSS Layout Methods

## 1. CSS Positioning

-   Static, relative, absolute, fixed positioning
-   Z-index and layering concepts
-   Positioning context and document flow
-   Common use cases and best practices

📖 [Complete Positioning Guide](01-positioning.md)

## 2. Flexbox Fundamentals

-   Flex containers and flex items
-   Main axis vs cross axis alignment
-   Flex properties for responsive layouts
-   Common flexbox layout patterns

📖 [Comprehensive Flexbox Guide](02-flexbox.md)

## 3. CSS Grid Layout

-   Grid containers and grid items
-   Creating responsive grid systems
-   Grid template areas and named lines
-   Advanced grid functions and techniques

📖 [CSS Grid Fundamentals Guide](03-grid.md)

---

## Quick Reference

### Positioning

```css
.relative {
    position: relative;
    top: 10px;
    left: 20px;
}
.absolute {
    position: absolute;
    top: 0;
    right: 0;
}
.fixed {
    position: fixed;
    bottom: 20px;
    right: 20px;
}
```

### Flexbox Basics

```css
.container {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 20px;
}
```

### CSS Grid Basics

```css
.grid-container {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-template-rows: auto 1fr auto;
    gap: 20px;
}
```

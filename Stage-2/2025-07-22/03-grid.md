## Navigation

1. [Overview](README.md)
2. [CSS Positioning](01-positioning.md)
3. [Flexbox Fundamentals](02-flexbox.md)
4. [CSS Grid Layout](03-grid.md) ← _You are here_

---

# CSS Grid Fundamentals

## What is CSS Grid?

CSS Grid is a two-dimensional layout system that allows you to create complex layouts with rows and columns. It's perfect for:
- Creating page layouts with header, footer, sidebar, and main content
- Building responsive grids of items
- Aligning content in both dimensions simultaneously
- Creating complex, overlapping layouts

## Core Concepts

### Grid Container vs Grid Items

```html
<div class="grid-container">  <!-- Grid Container -->
    <div>Item 1</div>         <!-- Grid Item -->
    <div>Item 2</div>         <!-- Grid Item -->
    <div>Item 3</div>         <!-- Grid Item -->
</div>
```

### Grid Lines, Tracks, and Areas

```
Grid Lines (numbered)
    1   2   3   4
1 ┌─┬─┬─┬─┐
  │ │ │ │ │  ← Grid Tracks (rows)
2 ├─┼─┼─┼─┤
  │ │ │ │ │
3 ├─┼─┼─┼─┤
  │ │ │ │ │
4 └─┴─┴─┴─┘
  ↑
  Grid Tracks (columns)
```

- **Grid Lines**: The lines that define the grid structure
- **Grid Tracks**: The space between two grid lines (rows/columns)
- **Grid Areas**: Rectangular areas defined by four grid lines

## Grid Container Properties

### 1. Display Grid
```css
.container {
    display: grid;  /* Creates a grid container */
}
```

### 2. Define Columns and Rows
```css
.container {
    /* Explicit column sizes */
    grid-template-columns: 200px 1fr 100px;      /* Fixed, flexible, fixed */
    grid-template-columns: repeat(3, 1fr);       /* Three equal columns */
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); /* Responsive */
    
    /* Explicit row sizes */
    grid-template-rows: 100px auto 50px;         /* Fixed, content-based, fixed */
    grid-template-rows: repeat(3, 200px);        /* Three 200px rows */
}
```

### 3. Grid Template Areas
```css
.container {
    grid-template-areas: 
        "header header header"
        "sidebar main ads"
        "footer footer footer";
    grid-template-columns: 200px 1fr 150px;
    grid-template-rows: auto 1fr auto;
}

.header { grid-area: header; }
.sidebar { grid-area: sidebar; }
.main { grid-area: main; }
.ads { grid-area: ads; }
.footer { grid-area: footer; }
```

### 4. Gap (Spacing)
```css
.container {
    gap: 20px;           /* Same gap for rows and columns */
    gap: 20px 10px;      /* Row gap, column gap */
    row-gap: 20px;       /* Gap between rows */
    column-gap: 10px;    /* Gap between columns */
}
```

### 5. Alignment Properties
```css
.container {
    /* Align all items within their grid cells */
    justify-items: start | end | center | stretch;  /* Horizontal alignment */
    align-items: start | end | center | stretch;    /* Vertical alignment */
    place-items: center;  /* Shorthand for both */
    
    /* Align the entire grid within the container */
    justify-content: start | end | center | stretch | space-around | space-between | space-evenly;
    align-content: start | end | center | stretch | space-around | space-between | space-evenly;
    place-content: center;  /* Shorthand for both */
}
```

## Grid Item Properties

### 1. Grid Line Positioning
```css
.item {
    /* Position by line numbers */
    grid-column-start: 1;
    grid-column-end: 3;      /* Spans from line 1 to line 3 */
    grid-row-start: 2;
    grid-row-end: 4;
    
    /* Shorthand */
    grid-column: 1 / 3;      /* Start / End */
    grid-row: 2 / 4;
    grid-area: 2 / 1 / 4 / 3; /* row-start / column-start / row-end / column-end */
}
```

### 2. Grid Span
```css
.item {
    grid-column: span 2;     /* Span 2 columns */
    grid-row: span 3;        /* Span 3 rows */
    grid-column: 1 / span 2; /* Start at line 1, span 2 columns */
}
```

### 3. Individual Item Alignment
```css
.item {
    justify-self: start | end | center | stretch;  /* Horizontal within cell */
    align-self: start | end | center | stretch;    /* Vertical within cell */
    place-self: center;  /* Shorthand for both */
}
```

## Useful Grid Functions

### 1. fr (Fractional Units)
```css
.container {
    grid-template-columns: 1fr 2fr 1fr;  /* 1:2:1 ratio */
}
```

### 2. minmax()
```css
.container {
    grid-template-columns: minmax(200px, 1fr) 300px; /* Min 200px, max flexible */
    grid-template-rows: minmax(100px, auto);          /* Min 100px, content height */
}
```

### 3. repeat()
```css
.container {
    grid-template-columns: repeat(4, 1fr);           /* Four equal columns */
    grid-template-columns: repeat(3, 100px);         /* Three 100px columns */
    grid-template-columns: repeat(auto-fit, 200px);  /* As many 200px cols as fit */
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr)); /* Responsive grid */
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

### 1. Basic Page Layout
```css
.page-layout {
    display: grid;
    grid-template-areas: 
        "header"
        "main"
        "footer";
    grid-template-rows: auto 1fr auto;
    min-height: 100vh;
}

@media (min-width: 768px) {
    .page-layout {
        grid-template-areas: 
            "header header"
            "sidebar main"
            "footer footer";
        grid-template-columns: 250px 1fr;
    }
}
```

### 2. Card Grid (Responsive)
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

### 3. Image Gallery
```css
.gallery {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 10px;
}

.gallery img {
    width: 100%;
    height: 200px;
    object-fit: cover;
    border-radius: 4px;
}
```

### 4. Complex Magazine Layout
```css
.magazine {
    display: grid;
    grid-template-columns: repeat(6, 1fr);
    grid-template-rows: repeat(4, 200px);
    gap: 10px;
}

.featured {
    grid-column: 1 / 4;    /* Spans 3 columns */
    grid-row: 1 / 3;       /* Spans 2 rows */
}

.story-1 {
    grid-column: 4 / 7;    /* Spans 3 columns */
    grid-row: 1;           /* Single row */
}

.story-2 {
    grid-column: 4 / 6;    /* Spans 2 columns */
    grid-row: 2;
}
```

### 5. Form Layout
```css
.form-grid {
    display: grid;
    grid-template-columns: 150px 1fr;
    gap: 15px 20px;
    align-items: center;
}

.form-grid label {
    justify-self: end;  /* Right-align labels */
}

.full-width {
    grid-column: 1 / -1;  /* Span all columns */
}
```

## Grid vs Flexbox

| Task | CSS Grid | Flexbox |
|------|----------|---------|
| 2D Layout (rows and columns) | ✅ Perfect | ❌ Limited |
| 1D Layout (row or column) | ✅ Good | ✅ Perfect |
| Content-first design | ❌ Layout-first | ✅ Content-first |
| Complex overlapping layouts | ✅ Excellent | ❌ Difficult |
| Simple component alignment | ✅ Good | ✅ Perfect |
| Browser support | ✅ Good (modern) | ✅ Excellent |

## Debugging Grid

### Browser Dev Tools
1. Right-click on grid container → Inspect
2. Look for the "Grid" badge in Elements panel
3. Click it to see grid overlay on the page
4. Shows grid lines, areas, and track sizes

### Common Issues
- **Items not positioning correctly**: Check grid line numbers (they start at 1, not 0)
- **Unexpected gaps**: Check for implicit grid tracks being created
- **Items not filling cells**: Check `align-items` and `justify-items`
- **Responsive issues**: Use `minmax()` and `auto-fit`/`auto-fill`

## Quick Reference

```css
/* Grid Container */
.container {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-template-rows: auto 1fr auto;
    gap: 20px;
    
    /* Alignment */
    place-items: center;      /* Align items in cells */
    place-content: center;    /* Align grid in container */
}

/* Grid Items */
.item {
    grid-column: 1 / 3;       /* Span columns */
    grid-row: span 2;         /* Span rows */
    place-self: center;       /* Individual alignment */
}
```

## Practice Tips

1. Start with `grid-template-columns` and `grid-template-rows`
2. Use `grid-template-areas` for complex layouts with named regions
3. `fr` units are your friend for flexible layouts
4. Combine `minmax()` with `auto-fit` for responsive grids
5. Use browser dev tools to visualize your grid
6. Remember: Grid is layout-first, Flexbox is content-first
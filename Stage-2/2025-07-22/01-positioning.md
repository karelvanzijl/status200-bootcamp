# CSS Positioning

## Overview

CSS positioning controls where elements appear on the page and how they relate to other elements. Understanding positioning is crucial for creating complex layouts.

## Position Values

### 1. Static (Default)
```css
.static {
    position: static;
}
```
- Default positioning
- Elements flow naturally in the document
- `top`, `right`, `bottom`, `left` properties have no effect
- Elements stack in the order they appear in HTML

### 2. Relative
```css
.relative {
    position: relative;
    top: 20px;      /* Move 20px down from original position */
    left: 30px;     /* Move 30px right from original position */
}
```
- Element positioned relative to its **original position**
- Original space is still reserved (other elements don't move)
- Can use `top`, `right`, `bottom`, `left` to offset
- Useful for small adjustments

### 3. Absolute
```css
.absolute {
    position: absolute;
    top: 50px;      /* 50px from top of positioned parent */
    right: 20px;    /* 20px from right of positioned parent */
}
```
- Element positioned relative to nearest **positioned parent**
- If no positioned parent exists, uses the document body
- Removed from normal document flow (other elements ignore it)
- Can overlap other elements
- Useful for overlays, tooltips, dropdowns

### 4. Fixed
```css
.fixed {
    position: fixed;
    bottom: 20px;   /* Always 20px from bottom of viewport */
    right: 20px;    /* Always 20px from right of viewport */
}
```
- Element positioned relative to the **viewport** (browser window)
- Stays in place when user scrolls
- Removed from normal document flow
- Useful for navigation bars, chat widgets, "back to top" buttons

### 5. Sticky
```css
.sticky {
    position: sticky;
    top: 0;         /* Sticks when it reaches top of viewport */
}
```
- Hybrid between relative and fixed
- Acts like relative until it reaches specified position
- Then "sticks" like fixed positioning
- Useful for section headers that stick while scrolling

## Z-Index (Layering)

When elements overlap, `z-index` controls which appears on top:

```css
.background-layer {
    position: absolute;
    z-index: 1;
}

.foreground-layer {
    position: absolute;
    z-index: 10;    /* Higher number = on top */
}
```

- Only works on positioned elements (not static)
- Higher numbers appear on top
- Default z-index is `auto` (usually 0)
- Can use negative values

## Common Use Cases

### Centered Modal Overlay
```css
.modal-overlay {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.5);
    z-index: 100;
}

.modal {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);  /* Center perfectly */
    z-index: 101;
}
```

### Sticky Navigation
```css
.navbar {
    position: sticky;
    top: 0;
    background: white;
    border-bottom: 1px solid #ddd;
    z-index: 10;
}
```

### Floating Action Button
```css
.fab {
    position: fixed;
    bottom: 20px;
    right: 20px;
    width: 60px;
    height: 60px;
    border-radius: 50%;
    z-index: 5;
}
```

### Card with Badge
```css
.card {
    position: relative;  /* Creates positioning context */
    padding: 20px;
    border: 1px solid #ddd;
}

.badge {
    position: absolute;
    top: -10px;
    right: -10px;
    background: red;
    color: white;
    padding: 5px 10px;
    border-radius: 50%;
}
```

## Important Notes

### Positioning Context
- Absolute positioned elements look for the nearest **positioned** parent
- "Positioned" means any position value except `static`
- If no positioned parent exists, they use the document body

### Document Flow
- `static` and `relative`: stay in document flow
- `absolute` and `fixed`: removed from document flow
- `sticky`: in flow until it sticks, then acts like fixed

### Performance
- `fixed` and `absolute` can trigger more browser repaints
- Use sparingly for better performance
- `transform` is often better than changing `top`/`left` for animations

## Practice Tips

1. Start with `relative` for small adjustments
2. Use `absolute` for overlays and precise positioning
3. Use `fixed` for elements that should always be visible
4. Always set a positioning context (parent with `position: relative`) when using `absolute`
5. Use browser dev tools to see how positioning affects layout
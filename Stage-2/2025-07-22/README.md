# Day 2: Box Model, Positioning & Flexbox

**Goal**: Build strong layout foundation

## Learning Objectives

By the end of today, you will understand:
- The CSS Box Model and how it affects element sizing
- Different positioning methods and when to use them
- Flexbox fundamentals for creating flexible layouts
- How to use browser dev tools to visualize the box model

## Lesson Structure

### 1. Box Model (45 minutes)
- Understanding content, padding, border, margin
- Using browser dev tools to visualize
- Box-sizing property

### 2. Positioning (30 minutes)
- Static, relative, absolute, fixed, sticky
- Z-index and layering
- When to use each positioning method

### 3. Flexbox Fundamentals (60 minutes)
- Flex containers and flex items
- Main axis vs cross axis
- Common flex properties
- Building layouts with flexbox

### 4. Practice Exercises (45 minutes)
- Hands-on exercises combining all concepts
- Building a simple page layout

## Files for Today

### Class Folder
- `index.html` - Main practice file
- `css/styles.css` - CSS for experiments

### Projects Folder
- `index.html` - Assignment starter
- `about.html` - Second page for navigation
- `css/styles.css` - CSS for assignment
- `images/` - Placeholder for any images

## Quick Reference

### Box Model Properties
```css
.element {
    width: 200px;
    height: 100px;
    padding: 20px;
    border: 2px solid black;
    margin: 10px;
}
```

### Positioning
```css
.relative { position: relative; top: 10px; left: 20px; }
.absolute { position: absolute; top: 0; right: 0; }
.fixed { position: fixed; bottom: 20px; right: 20px; }
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
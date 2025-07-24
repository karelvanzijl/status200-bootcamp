## Navigation

1. [Overview](readme.md)
2. [Quick Quiz](./01-quick-quiz.md)
3. [Live Coding](./02-live-coding.md)
4. [Box Model & Selectors](./03-box-model-and-selectors.md)
5. [Positioning & Flexbox](./04-positioning-and-flexbox.md)
6. [Flexbox Froggy Game](./05-flex-froggy-game.md)
7. [Media Queries & Responsive Design](./06-media-queries.md) ← _You are here_

---

# Media Queries & Responsive Design

## What are Media Queries?

Media queries are CSS features that allow you to apply different styles based on device characteristics like screen width, height, orientation, and resolution. They're the foundation of responsive web design.

```css
/* Basic media query syntax */
@media screen and (max-width: 768px) {
    /* CSS rules for screens smaller than 768px */
}
```

## Why Use Media Queries?

-   **Multi-device support**: One website that works on phones, tablets, and desktops
-   **Better user experience**: Optimized layouts for different screen sizes
-   **Improved readability**: Text and elements sized appropriately for each device
-   **Modern web standard**: Expected by users and search engines

## Basic Syntax

### Structure

```css
@media media-type and (condition) {
    /* CSS rules */
}
```

### Common Media Types

```css
@media screen {
    /* Computer screens, tablets, phones */
}
@media print {
    /* Printed pages */
}
@media all {
    /* All media types (default) */
}
```

## Breakpoints & Device Targeting

### Common Breakpoints

```css
/* Mobile First Approach */
/* Mobile (default) - 0px to 767px */
.container {
    width: 100%;
    padding: 10px;
}

/* Tablet - 768px and up */
@media screen and (min-width: 768px) {
    .container {
        width: 750px;
        padding: 20px;
    }
}

/* Desktop - 1024px and up */
@media screen and (min-width: 1024px) {
    .container {
        width: 1000px;
        padding: 30px;
    }
}

/* Large Desktop - 1200px and up */
@media screen and (min-width: 1200px) {
    .container {
        width: 1170px;
        padding: 40px;
    }
}
```

## Media Query Conditions

### Width-based Queries

```css
/* Exact width */
@media screen and (width: 768px) {
}

/* Maximum width (mobile-first) */
@media screen and (max-width: 767px) {
}

/* Minimum width (desktop-first) */
@media screen and (min-width: 768px) {
}

/* Width range */
@media screen and (min-width: 768px) and (max-width: 1023px) {
}
```

### Height-based Queries

```css
/* Maximum height */
@media screen and (max-height: 600px) {
    .header {
        height: 50px;
    } /* Shorter header on small screens */
}

/* Minimum height */
@media screen and (min-height: 800px) {
    .content {
        padding: 50px 0;
    } /* More padding on tall screens */
}
```

### Orientation Queries

```css
/* Portrait orientation (height > width) */
@media screen and (orientation: portrait) {
    .menu {
        flex-direction: column;
    }
}

/* Landscape orientation (width > height) */
@media screen and (orientation: landscape) {
    .menu {
        flex-direction: row;
    }
}
```

### Resolution Queries

```css
/* High-resolution displays (Retina, 4K) */
@media screen and (min-resolution: 2dppx) {
    .logo {
        background-image: url("logo-2x.png");
        background-size: contain;
    }
}
```

## Mobile-First vs Desktop-First

### Mobile-First Approach

```css
/* Base styles for mobile */
.container {
    width: 100%;
    padding: 10px;
    font-size: 14px;
}

.navigation {
    flex-direction: column;
}

/* Tablet and up */
@media screen and (min-width: 768px) {
    .container {
        width: 750px;
        padding: 20px;
        font-size: 16px;
    }

    .navigation {
        flex-direction: row;
    }
}

/* Desktop and up */
@media screen and (min-width: 1024px) {
    .container {
        width: 1000px;
        padding: 30px;
        font-size: 18px;
    }
}
```

### Desktop-First Approach

```css
/* Base styles for desktop */
.container {
    width: 1000px;
    padding: 30px;
    font-size: 18px;
}

.navigation {
    flex-direction: row;
}

/* Tablet and down */
@media screen and (max-width: 1023px) {
    .container {
        width: 750px;
        padding: 20px;
        font-size: 16px;
    }
}

/* Mobile and down */
@media screen and (max-width: 767px) {
    .container {
        width: 100%;
        padding: 10px;
        font-size: 14px;
    }

    .navigation {
        flex-direction: column;
    }
}
```

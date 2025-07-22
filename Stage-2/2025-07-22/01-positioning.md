## Navigation

1. [Overview](README.md)
2. [CSS Positioning](01-positioning.md) ← _You are here_
3. [Flexbox Fundamentals](02-flexbox.md)
4. [CSS Grid Layout](03-grid.md)

---

# CSS Positioning

CSS positioning controls where elements appear on the page and how they relate to other elements. Understanding positioning is crucial for creating complex layouts.

## Static (Default)

```css
.static {
    position: static;
}
```

-   Default positioning
-   Elements flow naturally in the document
-   `top`, `right`, `bottom`, `left` properties have no effect
-   Elements stack in the order they appear in HTML

## Relative

```css
.relative {
    position: relative;
    top: 20px; /* Move 20px down from original position */
    left: 30px; /* Move 30px right from original position */
}
```

-   Element positioned relative to its **original position**
-   Original space is still reserved (other elements don't move)
-   Can use `top`, `right`, `bottom`, `left` to offset
-   Useful for small adjustments

## Absolute

```css
.absolute {
    position: absolute;
    top: 50px; /* 50px from top of positioned parent */
    right: 20px; /* 20px from right of positioned parent */
}
```

-   Element positioned relative to nearest **positioned parent**
-   If no positioned parent exists, uses the document body
-   Removed from normal document flow (other elements ignore it)
-   Can overlap other elements
-   Useful for overlays, tooltips, dropdowns

## Fixed

```css
.fixed {
    position: fixed;
    bottom: 20px; /* Always 20px from bottom of viewport */
    right: 20px; /* Always 20px from right of viewport */
}
```

-   Element positioned relative to the **viewport** (browser window)
-   Stays in place when user scrolls
-   Removed from normal document flow
-   Useful for navigation bars, chat widgets, "back to top" buttons

## Sticky

```css
.sticky {
    position: sticky;
    top: 0; /* Sticks when it reaches top of viewport */
}
```

-   Hybrid between relative and fixed
-   Acts like relative until it reaches specified position
-   Then "sticks" like fixed positioning
-   Useful for section headers that stick while scrolling

## Z-Index (Layering)

When elements overlap, `z-index` controls which appears on top:

```css
.background-layer {
    position: absolute;
    z-index: 1;
}

.foreground-layer {
    position: absolute;
    z-index: 10; /* Higher number = on top */
}
```

-   Only works on positioned elements (not static)
-   Higher numbers appear on top
-   Default z-index is `auto` (usually 0)
-   Can use negative values

---

## Practice Exercises

### Practice 1: Relative Positioning

**Task:** Move the middle box 20px down and 30px right without affecting the position of other boxes.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Practice 1: Relative Positioning</title>
        <style>
            .container {
                border: 2px solid #333;
                padding: 20px;
                background: #f0f0f0;
            }
            .box {
                display: inline-block;
                padding: 20px;
                margin: 10px;
                background: #4caf50;
                color: white;
                border-radius: 5px;
            }
            .middle-box {
                background: #ff6b6b;
                /* TODO: Add relative positioning here */
                /* Move this box 20px down and 30px right */
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="box">Box 1</div>
            <div class="box middle-box">Move Me!</div>
            <div class="box">Box 3</div>
        </div>
    </body>
</html>
```

📖 [Show Answers (try yourself first!)](https://status200.my/bootcamp/practice/2025-07-22/relative-positioning.html)

### Practice 2: Absolute Positioning

**Task:** Position the red box in the top-right corner of the container, overlapping other content.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Practice 2: Absolute Positioning</title>
        <style>
            .container {
                border: 2px solid #333;
                padding: 20px;
                background: #f0f0f0;
                height: 300px;
            }
            .box {
                padding: 20px;
                margin: 10px;
                background: #4caf50;
                color: white;
                border-radius: 5px;
            }
            .absolute-box {
                background: #ff6b6b;
                /* TODO: Add absolute positioning here */
                /* Position this box absolute in top-right corner (10px from edges) relative to its parent div  */
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="box">Normal Box 1</div>
            <div class="box">Normal Box 2</div>
            <div class="box absolute-box">Position Me!</div>
            <div class="box">Normal Box 3</div>
        </div>
    </body>
</html>
```

💡 Remember: absolute positioning is relative to the nearest positioned parent. If no positioned parent exists, it will be relative to the document body.

📖 [Show Answers (try yourself first!)](https://status200.my/bootcamp/practice/2025-07-22/absolute-positioning.html)

### Practice 3: Fixed Positioning

**Task:** Create a "Back to Top" button that stays in the bottom-right corner while scrolling.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Practice 3: Fixed Positioning</title>
        <style>
            body {
                margin: 0;
                font-family: Arial, sans-serif;
                line-height: 1.6;
            }
            .content {
                padding: 20px;
                max-width: 800px;
                margin: 0 auto;
            }
            .section {
                margin-bottom: 50px;
                padding: 20px;
                background: #f9f9f9;
                border-radius: 5px;
            }
            .back-to-top {
                background: #007bff;
                color: white;
                border: none;
                padding: 15px;
                border-radius: 50%;
                cursor: pointer;
                font-size: 20px;
                /* TODO: Add fixed positioning here */
                /* Keep this button in bottom-right corner while scrolling */
            }
            .back-to-top:hover {
                background: #0056b3;
            }
        </style>
    </head>
    <body>
        <div class="content">
            <h1>Scroll Down to Test Fixed Positioning</h1>

            <div class="section">
                <h2>Section 1</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
                    do eiusmod tempor incididunt ut labore et dolore magna
                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                    ullamco laboris.
                </p>
            </div>

            <div class="section">
                <h2>Section 2</h2>
                <p>
                    Duis aute irure dolor in reprehenderit in voluptate velit
                    esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
                    occaecat cupidatat non proident, sunt in culpa qui officia
                    deserunt mollit anim id est laborum.
                </p>
            </div>

            <div class="section">
                <h2>Section 3</h2>
                <p>
                    Sed ut perspiciatis unde omnis iste natus error sit
                    voluptatem accusantium doloremque laudantium, totam rem
                    aperiam, eaque ipsa quae ab illo inventore veritatis et
                    quasi architecto beatae vitae dicta sunt explicabo.
                </p>
            </div>

            <div class="section">
                <h2>Section 4</h2>
                <p>
                    At vero eos et accusamus et iusto odio dignissimos ducimus
                    qui blanditiis praesentium voluptatum deleniti atque
                    corrupti quos dolores et quas molestias excepturi sint
                    occaecati cupiditate non provident.
                </p>
            </div>

            <div class="section">
                <h2>Section 5</h2>
                <p>
                    Nam libero tempore, cum soluta nobis est eligendi optio
                    cumque nihil impedit quo minus id quod maxime placeat facere
                    possimus, omnis voluptas assumenda est, omnis dolor
                    repellendus.
                </p>
            </div>
        </div>

        <button
            class="back-to-top"
            onclick="window.scrollTo({top: 0, behavior: 'smooth'})"
        >
            ↑
        </button>
    </body>
</html>
```

💡 Remember: fixed positioning is relative to the viewport, so it stays in place even when scrolling.

📖 [Show Answers (try yourself first!)](https://status200.my/bootcamp/practice/2025-07-22/fixed-positioning.html)

### Practice 4: Sticky Positioning

**Task:** Make the navigation bar stick to the top when scrolling past it.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Practice 4: Sticky Positioning</title>
        <style>
            body {
                margin: 0;
                font-family: Arial, sans-serif;
                line-height: 1.6;
            }
            .header {
                background: #2c3e50;
                color: white;
                text-align: center;
                padding: 60px 20px;
            }
            .navigation {
                background: #34495e;
                padding: 0;
                /* TODO: Add sticky positioning here */
                /* Make this navigation stick to top when scrolling */
            }
            .nav-list {
                list-style: none;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
            }
            .nav-item {
                margin: 0;
            }
            .nav-link {
                display: block;
                color: white;
                text-decoration: none;
                padding: 20px 30px;
                transition: background 0.3s;
            }
            .nav-link:hover {
                background: #2c3e50;
            }
            .content {
                max-width: 800px;
                margin: 0 auto;
                padding: 20px;
            }
            .section {
                margin-bottom: 50px;
                padding: 40px 20px;
                background: #ecf0f1;
                border-radius: 5px;
            }
            .spacer {
                height: 200px;
                background: linear-gradient(45deg, #3498db, #2980b9);
                margin: 20px 0;
                display: flex;
                align-items: center;
                justify-content: center;
                color: white;
                font-size: 18px;
                border-radius: 5px;
            }
        </style>
    </head>
    <body>
        <div class="header">
            <h1>Sticky Navigation Demo</h1>
            <p>Scroll down to see the navigation stick to the top</p>
        </div>

        <nav class="navigation">
            <ul class="nav-list">
                <li class="nav-item">
                    <a href="#home" class="nav-link">Home</a>
                </li>
                <li class="nav-item">
                    <a href="#about" class="nav-link">About</a>
                </li>
                <li class="nav-item">
                    <a href="#services" class="nav-link">Services</a>
                </li>
                <li class="nav-item">
                    <a href="#contact" class="nav-link">Contact</a>
                </li>
            </ul>
        </nav>

        <div class="content">
            <div class="section">
                <h2>About Us</h2>
                <p>
                    This section demonstrates sticky positioning. The navigation
                    above should stick to the top of the viewport when you
                    scroll past it.
                </p>
            </div>

            <div class="spacer">Keep scrolling to test the sticky effect!</div>

            <div class="section">
                <h2>Our Services</h2>
                <p>
                    Notice how the navigation remains at the top while you
                    scroll through this content. It acts like relative
                    positioning until it reaches the top, then becomes fixed.
                </p>
            </div>

            <div class="spacer">More content to scroll through</div>

            <div class="section">
                <h2>Contact Information</h2>
                <p>
                    The sticky navigation makes it easy to jump between sections
                    without scrolling back to the top of the page.
                </p>
            </div>

            <div class="spacer">Final section coming up</div>

            <div class="section">
                <h2>Footer Content</h2>
                <p>
                    You've reached the end! The sticky navigation should still
                    be visible at the top of the viewport.
                </p>
            </div>
        </div>
    </body>
</html>
```

💡 Remember: sticky positioning requires a threshold value (like `top: 0`) and needs sufficient scroll space in its container to work properly.

📖 [Show Answers (try yourself first!)](https://status200.my/bootcamp/practice/2025-07-22/sticky-positioning.html)

---

## Important Notes

### Positioning Context

-   Absolute positioned elements look for the nearest **positioned** parent
-   "Positioned" means any position value except `static`
-   If no positioned parent exists, they use the document body

### Document Flow

-   `static` and `relative`: stay in document flow
-   `absolute` and `fixed`: removed from document flow
-   `sticky`: in flow until it sticks, then acts like fixed

### Performance

-   `fixed` and `absolute` can trigger more browser repaints
-   Use sparingly for better performance
-   `transform` is often better than changing `top`/`left` for animations

## Practice Tips

1. Start with `relative` for small adjustments
2. Use `absolute` for overlays and precise positioning
3. Use `fixed` for elements that should always be visible
4. Always set a positioning context (parent with `position: relative`) when using `absolute`
5. Use browser dev tools to see how positioning affects layout

---

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
    transform: translate(-50%, -50%); /* Center perfectly */
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
    position: relative; /* Creates positioning context */
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

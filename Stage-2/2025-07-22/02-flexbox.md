## Navigation

1. [Overview](readme.md)
2. [CSS Positioning](01-positioning.md)
3. [Flexbox Fundamentals](02-flexbox.md) ← _You are here_
4. [CSS Grid Layout](03-grid.md)

---

# Flexbox Fundamentals

## What is Flexbox?

Flexbox (Flexible Box Layout) is a one-dimensional layout method for arranging items in rows or columns. It makes it easy to:

-   Align items vertically and horizontally
-   Distribute space between items
-   Create responsive layouts
-   Handle different screen sizes

## Core Concepts

### Flex Container vs Flex Items

```
Flex container
┌────────────────────────────────────┐
│  Flex items                        │
│  ┌────────┐ ┌────────┐ ┌────────┐  │
│  │ item 1 │ │ item 2 │ │ item 3 │  │
│  └────────┘ └────────┘ └────────┘  │
└────────────────────────────────────┘
```

```html
<!-- Flex Container -->
<div class="flex-container">
    <!-- Flex Item -->
    <div>Item 1</div>

    <!-- Flex Item -->
    <div>Item 2</div>

    <!-- Flex Item -->
    <div>Item 3</div>
</div>
```

### Main Axis vs Cross Axis

**Row Direction (default)**

```
Main Axis (horizontal) →                ↑
┌─────────────────────────────────────┐ │
│  ┌────────┐ ┌────────┐ ┌────────┐   │ │
│  │ item 1 │ │ item 2 │ │ item 3 │   │ │ Cross Axis
│  └────────┘ └────────┘ └────────┘   │ │ (vertical)
└─────────────────────────────────────┘ │
                                        ↓
```

-   **Main Axis**: Primary direction of flex items (horizontal by default)
-   **Cross Axis**: Perpendicular to main axis (vertical by default)

**Column Direction**

```
┌─────────────┐ ← Cross Axis (horizontal)
│  ┌────────┐ │
│  │ item 1 │ │ ↑
│  └────────┘ │ │
│  ┌────────┐ │ │ Main Axis
│  │ item 2 │ │ │ (vertical)
│  └────────┘ │ │
│  ┌────────┐ │ │
│  │ item 3 │ │ ↓
│  └────────┘ │
└─────────────┘
```

-   **Main Axis**: Vertical in column direction
-   **Cross Axis**: Horizontal in column direction

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

---

### 🐸 Interactive Practice: Flexbox Froggy

Now that you've learned the core flex container properties, practice them with this fun interactive game:

**🎮 [Play Flexbox Froggy](https://flexboxfroggy.com)**

This game teaches flexbox concepts by helping a frog reach its lily pad using CSS flexbox properties. Focus on the first 13 levels which cover the container properties you just learned!

**Tips for Flexbox Froggy:**

-   Pay attention to main vs cross axis directions
-   Don't skip levels - each builds on the previous
-   If you get stuck, refer back to the concepts above

---

## Practice Exercises: Flex Container Properties

### Practice 1: Basic Flex Layout

**Task:** Transform the static layout into a flex layout and experiment with direction and alignment.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Practice 1: Basic Flex Layout</title>
        <style>
            .container {
                border: 2px solid #333;
                padding: 20px;
                margin: 20px 0;
                min-height: 200px;
                /* TODO: Make this a flex container */
                /* TODO: Try different flex-direction values */
            }
            .item {
                background: #3498db;
                color: white;
                padding: 20px;
                margin: 10px;
                text-align: center;
                border-radius: 5px;
            }
        </style>
    </head>
    <body>
        <h1>Flex Container Practice</h1>

        <div class="container">
            <div class="item">Item 1</div>
            <div class="item">Item 2</div>
            <div class="item">Item 3</div>
        </div>

        <p>Tasks:</p>
        <ol>
            <li>Make the container a flex container</li>
            <li>Try flex-direction: column</li>
            <li>Try flex-direction: row-reverse</li>
            <li>Try flex-direction: column-reverse</li>
        </ol>
    </body>
</html>
```

### Practice 2: Justify Content & Align Items

**Task:** Create different alignment combinations using justify-content and align-items.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Practice 2: Alignment</title>
        <style>
            .container {
                display: flex;
                border: 2px solid #e74c3c;
                height: 200px;
                margin: 20px 0;
                background: #f8f9fa;
                /* TODO: Add justify-content property */
                /* TODO: Add align-items property */
            }
            .item {
                background: #e74c3c;
                color: white;
                padding: 15px 25px;
                border-radius: 5px;
            }
        </style>
    </head>
    <body>
        <h1>Alignment Practice</h1>

        <div class="container">
            <div class="item">A</div>
            <div class="item">B</div>
            <div class="item">C</div>
        </div>

        <p>Tasks:</p>
        <ol>
            <li>Center items horizontally and vertically</li>
            <li>Try justify-content: space-between</li>
            <li>Try justify-content: space-around</li>
            <li>Try align-items: flex-start with justify-content: flex-end</li>
        </ol>
    </body>
</html>
```

### Practice 3: Navigation Bar

**Task:** Create a responsive navigation bar using flexbox.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Practice 3: Navigation Bar</title>
        <style>
            .navbar {
                background: #2c3e50;
                padding: 15px 20px;
                /* TODO: Make this a flex container */
                /* TODO: Distribute space between logo and menu */
                /* TODO: Align items vertically */
            }
            .logo {
                color: #ecf0f1;
                font-size: 24px;
                font-weight: bold;
            }
            .menu {
                /* TODO: Make this a flex container */
                /* TODO: Add gap between menu items */
            }
            .menu-item {
                color: #ecf0f1;
                text-decoration: none;
                padding: 10px 15px;
                border-radius: 5px;
                transition: background 0.3s;
            }
            .menu-item:hover {
                background: #34495e;
            }
        </style>
    </head>
    <body>
        <nav class="navbar">
            <div class="logo">MyBrand</div>
            <div class="menu">
                <a href="#" class="menu-item">Home</a>
                <a href="#" class="menu-item">About</a>
                <a href="#" class="menu-item">Services</a>
                <a href="#" class="menu-item">Contact</a>
            </div>
        </nav>

        <div style="padding: 20px;">
            <p>Tasks:</p>
            <ol>
                <li>Make the navbar a flex container with space-between</li>
                <li>Make the menu a flex container with gap</li>
                <li>Align all items vertically centered</li>
            </ol>
        </div>
    </body>
</html>
```

---

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

---

### 🐸 Continue with Flexbox Froggy

Now that you've learned flex item properties, continue with the remaining Flexbox Froggy levels:

**🎮 [Continue Flexbox Froggy](https://flexboxfroggy.com)**

The remaining levels (14-24) cover advanced concepts including:

-   `flex-direction` with different alignments
-   `flex-wrap` and multi-line layouts
-   `align-content` for wrapped content
-   Complex combinations of all properties

**Tip:**

-   Take your time - these levels build real-world skills!

---

## Practice Exercises: Flex Item Properties

### Practice 4: Flex Grow & Shrink

**Task:** Control how items grow and shrink within their container.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Practice 4: Flex Grow & Shrink</title>
        <style>
            .container {
                display: flex;
                border: 2px solid #9b59b6;
                margin: 20px 0;
                height: 100px;
            }
            .item {
                background: #9b59b6;
                color: white;
                padding: 20px;
                margin: 5px;
                text-align: center;
                /* TODO: Experiment with flex-grow values */
            }
            .item-1 {
                /* TODO: Make this item grow twice as much as others */
            }
            .item-2 {
                /* TODO: Make this item not grow at all */
            }
            .item-3 {
                /* TODO: Make this item grow normally */
            }
        </style>
    </head>
    <body>
        <h1>Flex Grow Practice</h1>

        <div class="container">
            <div class="item item-1">Grow 2x</div>
            <div class="item item-2">No Grow</div>
            <div class="item item-3">Grow 1x</div>
        </div>
    </body>
</html>
```

### Practice 5: Flex Basis & Shorthand

**Task:** Set initial sizes and use the flex shorthand property.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Practice 5: Flex Basis</title>
        <style>
            .container {
                display: flex;
                border: 2px solid #f39c12;
                margin: 20px 0;
                height: 120px;
            }
            .item {
                background: #f39c12;
                color: white;
                padding: 20px;
                margin: 5px;
                text-align: center;
                border-radius: 5px;
            }
            .sidebar {
                /* TODO: Fixed width sidebar using flex shorthand */
                /* Should be 200px wide and not grow or shrink */
            }
            .main-content {
                /* TODO: Main content that takes remaining space */
                /* Should grow to fill available space */
            }
            .ads {
                /* TODO: Fixed width ads section */
                /* Should be 150px wide and not grow or shrink */
            }
        </style>
    </head>
    <body>
        <h1>Flex Basis Practice</h1>

        <div class="container">
            <div class="item sidebar">Sidebar</div>
            <div class="item main-content">Main Content</div>
            <div class="item ads">Ads</div>
        </div>
    </body>
</html>
```

### Practice 6: Order Property

**Task:** Change the visual order of items without changing HTML structure.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Practice 6: Order Property</title>
        <style>
            .container {
                display: flex;
                border: 2px solid #1abc9c;
                margin: 20px 0;
                padding: 20px;
            }
            .item {
                background: #1abc9c;
                color: white;
                padding: 20px;
                margin: 10px;
                text-align: center;
                border-radius: 5px;
                flex: 1;
            }
            .first {
                /* TODO: Make this appear first */
            }
            .second {
                /* TODO: Make this appear second */
            }
            .third {
                /* TODO: Make this appear third */
            }
            .fourth {
                /* TODO: Make this appear fourth */
            }
        </style>
    </head>
    <body>
        <h1>Order Practice</h1>

        <p>HTML Order: Fourth, Third, Second, First</p>
        <p>Goal: Display as First, Second, Third, Fourth</p>

        <div class="container">
            <div class="item fourth">Item D (HTML: 1st)</div>
            <div class="item third">Item C (HTML: 2nd)</div>
            <div class="item second">Item B (HTML: 3rd)</div>
            <div class="item first">Item A (HTML: 4th)</div>
        </div>
    </body>
</html>
```

---

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

---

## Practice Exercises: Combination Challenges

### Practice 7: Complete Card Layout

**Task:** Build a responsive card grid that combines multiple flexbox concepts.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Practice 7: Card Layout</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 20px;
                background: #f5f5f5;
            }
            .header {
                background: #2c3e50;
                color: white;
                padding: 20px;
                margin-bottom: 30px;
                border-radius: 10px;
                /* TODO: Make this a flex container */
                /* TODO: Center the content */
            }
            .card-container {
                /* TODO: Create a flex container for cards */
                /* TODO: Allow cards to wrap to new lines */
                /* TODO: Add gap between cards */
            }
            .card {
                background: white;
                border-radius: 10px;
                padding: 20px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
                /* TODO: Set minimum width and allow growing */
                /* TODO: Use flex shorthand for responsive behavior */
            }
            .card-header {
                /* TODO: Make this a flex container */
                /* TODO: Space between title and price */
                /* TODO: Center items vertically */
                border-bottom: 2px solid #ecf0f1;
                padding-bottom: 15px;
                margin-bottom: 15px;
            }
            .card-title {
                font-size: 1.4em;
                font-weight: bold;
                color: #2c3e50;
            }
            .card-price {
                font-size: 1.2em;
                color: #e74c3c;
                font-weight: bold;
            }
            .card-body {
                /* TODO: Make this a flex container */
                /* TODO: Column direction */
                /* TODO: Take remaining space in card */
                margin-bottom: 20px;
            }
            .card-footer {
                /* TODO: Make this a flex container */
                /* TODO: Center the button */
            }
            .btn {
                background: #3498db;
                color: white;
                border: none;
                padding: 12px 24px;
                border-radius: 5px;
                cursor: pointer;
                font-size: 1em;
            }
            .btn:hover {
                background: #2980b9;
            }
        </style>
    </head>
    <body>
        <div class="header">
            <h1>Product Showcase</h1>
        </div>

        <div class="card-container">
            <div class="card">
                <div class="card-header">
                    <div class="card-title">Premium Widget</div>
                    <div class="card-price">$29.99</div>
                </div>
                <div class="card-body">
                    <p>
                        High-quality widget with advanced features. Perfect for
                        professional use.
                    </p>
                    <ul>
                        <li>Durable construction</li>
                        <li>2-year warranty</li>
                        <li>Professional support</li>
                    </ul>
                </div>
                <div class="card-footer">
                    <button class="btn">Add to Cart</button>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <div class="card-title">Standard Widget</div>
                    <div class="card-price">$19.99</div>
                </div>
                <div class="card-body">
                    <p>
                        Reliable widget for everyday use. Great value for money.
                    </p>
                    <ul>
                        <li>Solid build quality</li>
                        <li>1-year warranty</li>
                        <li>Email support</li>
                    </ul>
                </div>
                <div class="card-footer">
                    <button class="btn">Add to Cart</button>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <div class="card-title">Basic Widget</div>
                    <div class="card-price">$9.99</div>
                </div>
                <div class="card-body">
                    <p>
                        Simple widget for basic needs. Affordable and
                        functional.
                    </p>
                    <ul>
                        <li>Basic functionality</li>
                        <li>6-month warranty</li>
                        <li>FAQ support</li>
                    </ul>
                </div>
                <div class="card-footer">
                    <button class="btn">Add to Cart</button>
                </div>
            </div>
        </div>

        <div
            style="margin-top: 40px; padding: 20px; background: white; border-radius: 10px;"
        >
            <h3>Tasks:</h3>
            <ol>
                <li>Center the header content</li>
                <li>Make cards display in a flexible grid (flex-wrap, gap)</li>
                <li>Make cards responsive (min-width: 300px, flex: 1)</li>
                <li>Use space-between in card headers</li>
                <li>Use flex-direction: column for card body</li>
                <li>Center buttons in card footer</li>
                <li>Test responsiveness by resizing the browser</li>
            </ol>
        </div>
    </body>
</html>
```

### Practice 8: Holy Grail Layout

**Task:** Create the classic Holy Grail layout using flexbox.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Practice 8: Holy Grail Layout</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body {
                font-family: Arial, sans-serif;
                /* TODO: Make body a flex container */
                /* TODO: Use column direction */
                /* TODO: Set minimum height to full viewport */
            }
            .header {
                background: #34495e;
                color: white;
                padding: 20px;
                text-align: center;
                /* TODO: Prevent header from shrinking */
            }
            .main-content {
                /* TODO: Make this a flex container */
                /* TODO: Take remaining vertical space */
            }
            .sidebar-left {
                background: #3498db;
                color: white;
                padding: 20px;
                /* TODO: Fixed width, don't grow or shrink */
                /* Width should be 200px */
            }
            .content {
                background: #ecf0f1;
                padding: 20px;
                /* TODO: Take remaining horizontal space */
            }
            .sidebar-right {
                background: #e74c3c;
                color: white;
                padding: 20px;
                /* TODO: Fixed width, don't grow or shrink */
                /* Width should be 180px */
            }
            .footer {
                background: #2c3e50;
                color: white;
                padding: 20px;
                text-align: center;
                /* TODO: Prevent footer from shrinking */
            }
        </style>
    </head>
    <body>
        <div class="header">
            <h1>Holy Grail Layout</h1>
            <p>Header that stays at the top</p>
        </div>

        <div class="main-content">
            <div class="sidebar-left">
                <h3>Left Sidebar</h3>
                <ul>
                    <li>Navigation Item 1</li>
                    <li>Navigation Item 2</li>
                    <li>Navigation Item 3</li>
                    <li>Navigation Item 4</li>
                </ul>
            </div>

            <div class="content">
                <h2>Main Content Area</h2>
                <p>
                    This is the main content area that takes up the remaining
                    space. It should expand to fill the available width and
                    height.
                </p>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
                    do eiusmod tempor incididunt ut labore et dolore magna
                    aliqua.
                </p>
                <p>
                    Ut enim ad minim veniam, quis nostrud exercitation ullamco
                    laboris nisi ut aliquip ex ea commodo consequat.
                </p>
            </div>

            <div class="sidebar-right">
                <h3>Right Sidebar</h3>
                <div
                    style="background: rgba(255,255,255,0.2); padding: 10px; margin: 10px 0; border-radius: 5px;"
                >
                    <strong>Ad Space</strong><br />
                    Your ad here
                </div>
                <div
                    style="background: rgba(255,255,255,0.2); padding: 10px; margin: 10px 0; border-radius: 5px;"
                >
                    <strong>Widget</strong><br />
                    Some widget
                </div>
            </div>
        </div>

        <div class="footer">
            <p>&copy; 2025 Holy Grail Layout Demo. Footer stays at bottom.</p>
        </div>

        <div
            style="position: fixed; bottom: 20px; right: 20px; background: rgba(0,0,0,0.8); color: white; padding: 15px; border-radius: 10px; max-width: 300px;"
        >
            <h4>Tasks:</h4>
            <ol style="margin-left: 20px; margin-top: 10px;">
                <li>Body: flex column, min-height: 100vh</li>
                <li>Header & Footer: flex-shrink: 0</li>
                <li>Main-content: flex: 1, display: flex</li>
                <li>Sidebars: flex: 0 0 [width]px</li>
                <li>Content: flex: 1</li>
            </ol>
        </div>
    </body>
</html>
```

### 🐸 Interactive Practice: Flexbox Froggy

Before moving on, try the **Flexbox Froggy** game to reinforce your learning:

**🎮 [Play Flexbox Froggy](https://flexboxfroggy.com)**

This fun, interactive game teaches flexbox concepts by helping a frog reach its lily pad using CSS flexbox properties. It's an excellent way to practice what you've learned!

**Tips for Flexbox Froggy:**

-   Start with the basics (justify-content, align-items)
-   Pay attention to the main vs cross axis
-   Don't skip levels - each builds on the previous
-   If you get stuck, refer back to the concepts above

---

## Flexbox vs Other Layout Methods

| Task                         | Flexbox      | CSS Grid         | Float           |
| ---------------------------- | ------------ | ---------------- | --------------- |
| 1D Layout (row or column)    | ✅ Perfect   | ❌ Overkill      | ❌ Complex      |
| 2D Layout (rows and columns) | ❌ Limited   | ✅ Perfect       | ❌ Very complex |
| Component alignment          | ✅ Perfect   | ✅ Good          | ❌ Difficult    |
| Browser support              | ✅ Excellent | ✅ Good (modern) | ✅ Universal    |

---

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

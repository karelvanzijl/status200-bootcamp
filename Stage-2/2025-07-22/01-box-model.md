# The CSS Box Model

## What is the Box Model?

Every HTML element is essentially a rectangular box. The CSS box model describes how the size of these boxes is calculated and consists of four parts:

1. **Content** - The actual content (text, images, etc.)
2. **Padding** - Space between content and border
3. **Border** - The border around the padding
4. **Margin** - Space outside the border

## Visualizing the Box Model

```
┌─────────────────────────────────────┐ ← MARGIN (spacing around box)
│              MARGIN                 │   NOT part of box size
│  ┌───────────────────────────────┐  │
│  │           BORDER              │  │ ← BORDER (part of box size)
│  │  ┌─────────────────────────┐  │  │
│  │  │        PADDING          │  │  │ ← PADDING (part of box size)
│  │  │  ┌─────────────────┐    │  │  │
│  │  │  │     CONTENT     │    │  │  │ ← CONTENT (part of box size)
│  │  │  └─────────────────┘    │  │  │
│  │  └─────────────────────────┘  │  │   Box size = Content + Padding + Border
│  └───────────────────────────────┘  │
└─────────────────────────────────────┘
```

**The actual "box" includes:** Content + Padding + Border  
**Margin is separate:** Creates space around the box, but is not part of the box itself

## CSS Properties

### Content Size

```css
.box {
    width: 200px;
    height: 100px;
}
```

### Padding (Inside spacing)

```css
.box {
    padding: 20px; /* All sides */
    padding: 10px 20px; /* Top/bottom, Left/right */
    padding: 10px 20px 15px 25px; /* Top, Right, Bottom, Left */

    /* Individual sides */
    padding-top: 10px;
    padding-right: 20px;
    padding-bottom: 15px;
    padding-left: 25px;
}
```

### Border

```css
.box {
    border: 2px solid black; /* Width, Style, Color */
    border-radius: 10px; /* Rounded corners */

    /* Individual sides */
    border-top: 1px solid red;
    border-right: 2px dashed blue;
}
```

### Margin (Outside spacing)

```css
.box {
    margin: 20px; /* All sides */
    margin: 10px auto; /* Top/bottom, Left/right (auto centers) */

    /* Individual sides */
    margin-top: 10px;
    margin-bottom: 20px;
    margin-left: auto;
    margin-right: auto; /* Center horizontally */
}
```

## Box Sizing and Total Width/Height

### Important: What counts as the "box size"

By default, `width` and `height` only apply to the content. Padding and border are added on top to determine the **total box size**:

```css
.default-box {
    width: 200px;
    padding: 20px;
    border: 2px solid black;
    margin: 10px;
    /* Box width = 200 + 40 + 4 = 244px (margin NOT included) */
    /* Space taken = 244 + 20 = 264px (including margin) */
}
```

**Key Point:** Margin creates space around the box but is **not** part of the box's actual width/height. The box itself is only content + padding + border.

To make width include padding and border:

```css
.border-box {
    box-sizing: border-box;
    width: 200px;
    padding: 20px;
    border: 2px solid black;
    /* Total width = 200px (includes padding and border) */
}
```

## Practice Exercises

### Practice 1: Box Model Basics

Create an HTML file with this code and experiment with the values:

```html
<!DOCTYPE html>
<html>
    <head>
        <title>Box Model Practice 1</title>
        <style>
            .practice-box {
                width: 200px;
                height: 100px;
                padding: 20px;
                border: 3px solid black;
                margin: 30px;
                background-color: lightblue;
                font-size: 18px;
            }
        </style>
    </head>
    <body>
        <h3>Practice Box</h3>
        <p>Right-click this box and inspect it!</p>
        <div class="practice-box">This is the content area</div>
    </body>
</html>
```

### Practice 2: Compare Two Boxes

```html
<!DOCTYPE html>
<html>
    <head>
        <title>Box Model Practice 2</title>
        <style>
            .box1 {
                width: 200px;
                height: 100px;
                padding: 10px;
                border: 2px solid red;
                margin: 20px;
                background-color: pink;
                font-size: 16px;
            }

            .box2 {
                width: 200px;
                height: 100px;
                padding: 30px;
                border: 5px solid blue;
                margin: 20px;
                background-color: lightblue;
                font-size: 16px;
            }
        </style>
    </head>
    <body>
        <h3>Compare These Boxes</h3>
        <p>Right-click each box and inspect them!</p>

        <div class="box1">Box 1 - Small padding, thin border</div>
        <div class="box2">Box 2 - Large padding, thick border</div>
    </body>
</html>
```

### Practice 3: Build Your Own Box

```html
<!DOCTYPE html>
<html>
    <head>
        <title>Box Model Practice 3</title>
        <style>
            .example-box {
                width: 150px;
                height: 80px;
                padding: 15px;
                border: 2px solid green;
                margin: 25px 0;
                background-color: lightgreen;
            }

            .your-box {
                /* Add your CSS here to match the requirements below */
                /* 
                    Requirements:
                    - Content area: 180px wide, 90px tall
                    - Padding: 20px on all sides
                    - Border: 3px solid orange
                    - Margin: 15px on all sides
                    - Background color: lightyellow
                */
            }
        </style>
    </head>
    <body>
        <h3>Build Your Own Box</h3>
        <p>Here's an example box:</p>
        <div class="example-box">
            Example: 150x80px content, 15px padding, 2px border
        </div>

        <p>Now create your box here:</p>
        <div class="your-box">
            Your box here - add CSS to match requirements!
        </div>
    </body>
</html>
```

### Practice 4: Centering and Box-Sizing

```html
<!DOCTYPE html>
<html>
    <head>
        <title>Box Model Practice 4</title>
        <style>
            .left-aligned-box {
                width: 180px;
                height: 50px;
                padding: 15px;
                border: 2px solid red;
                margin: 15px 0;
                background-color: pink;
            }

            .centered-box {
                width: 180px;
                height: 50px;
                padding: 15px;
                border: 2px solid blue;
                margin: 15px auto;
                background-color: lightblue;
            }

            .default-sizing {
                width: 120px;
                height: 90px;
                padding: 20px;
                border: 3px solid green;
                margin: 15px auto;
                background-color: lightgreen;
            }

            .border-box-sizing {
                box-sizing: border-box;
                width: 120px;
                height: 90px;
                padding: 20px;
                border: 3px solid purple;
                margin: 15px auto;
                background-color: plum;
            }

            .challenge-box {
                /* Your task: Make this box 200px total width, centered, with 15px padding and 2px border */
            }
        </style>
    </head>
    <body>
        <h3>Centering and Box-Sizing Examples</h3>

        <h4>Centering Comparison:</h4>
        <div class="left-aligned-box">Left-aligned</div>
        <div class="centered-box">Centered</div>

        <h4>Box-Sizing Comparison:</h4>
        <div class="default-sizing">Default</div>
        <div class="border-box-sizing">Border-box</div>

        <h4>Your Challenge:</h4>
        <div class="challenge-box">Style me: 200px total, centered!</div>
    </body>
</html>
```

---

## Using Browser Dev Tools

1. Right-click any element → "Inspect Element"
2. In the Elements panel, look for the box model diagram
3. See how content, padding, border, and margin affect total size
4. Hover over elements to see their box model highlighted on the page

## Common Patterns

### Centering a Box

```css
.centered-box {
    width: 300px;
    margin: 0 auto; /* Centers horizontally */
}
```

### Adding Space Between Elements

```css
.spaced-elements {
    margin-bottom: 20px; /* Space below each element */
}
```

### Creating Cards with Consistent Spacing

```css
.card {
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
    margin-bottom: 15px;
}
```

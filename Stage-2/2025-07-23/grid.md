# DEFINING A GRID

CSS Grid is a powerful layout system in CSS that allows you to create web page layouts using rows and columns. It gives you full control over how elements are placed and aligned on a page.

- To start using Grid, define a grid container by setting `display: grid` on the parent element.
- Use `grid-template-rows` to define the number and height of the rows.
- Use `grid-template-columns` to define the number and width of the columns.

## Step 1: Turn an element into a grid container

```html
<!DOCTYPE html>
<html>
  <body>
    <div class="container">
      <div>Item 1</div>
      <div>Item 2</div>
      <div>Item 3</div>
      <div>Item 4</div>
    </div>
  </body>
</html>
```
```css
.container {
  display: grid; /* 3 x 2 */
  grid-template-rows: 100px 100px 100px;
  grid-template-columns: 100px 100px;
  border: 3px solid black;
}
```
# Using `repeat()` in CSS Grid

When defining rows and columns in CSS Grid, it's common to have repeated values. Instead of writing the same value multiple times,
you can use the `repeat()` function to simplify your code and make it easier to read.


```css
.container {
  display: grid; /* 3 rows × 2 columns */
  grid-template-rows: repeat(3, 100px);
  grid-template-columns: repeat(2, 100px);
  border: 3px solid black;
}
```

## The `grid-template` Shorthand

Instead of writing `grid-template-rows` and `grid-template-columns` separately, you can use the `grid-template` shorthand.

### Syntax

```css
grid-template: [row values] / [column values];
.container {
  display: grid;
  grid-template: repeat(3, 100px) / repeat(2, 100px);
}
```
## Example

```html
<body>
  <div class="container">
    <div class="box">A</div>
    <div class="box">B</div>
    <div class="box">C</div>
    <div class="box">D</div>
  </div>
</body>
</html>
```

```css
.container {
  display: grid;
  grid-template: repeat(3, 100px) / repeat(2, 100px);
  border: 3px solid lightgrey;
}

.box {
  width: 5rem;
  height: 5rem;
  background: gold;
}
```
# ALIGNING ITEMS

- **justify-items** (along the horizontal axis) – default: `stretch`  
- **align-items** (along the vertical axis) – default: `stretch`


```css
.container {
  display: grid;
  grid-template: repeat(3, 100px) / repeat(2, 100px);
  border: 3px solid lightgrey;
  justify-items: center;
  align-items:center;
}

.box {
  width: 5rem;
  height: 5rem;
  background: gold;
}
```

# ALIGNING grid

justify-content (along the horizontal axis)  
align-content (along the vertical axis)

```css
.container {
  display: grid;
  grid-template: repeat(3, 100px) / repeat(2, 100px);
  border: 3px solid lightgrey;
  
  /* Align the entire grid */
  justify-content: center;
  align-content: center;

  /* Align items within each cell */
  justify-items: center;
  align-items: center;
  height: 100vh;
}

.box {
  width: 5rem;
  height: 5rem;
  background: gold;
}
```
# SIZING GRID TRACKS

In CSS Grid, you can control the size of rows and columns using different units. These are called **grid tracks**.

Common units for sizing tracks:

- **Pixels (`px`)** – Fixed size (e.g., `100px`)
- **Percentages (`%`)** – Relative to the size of the grid container (e.g., `50%`)
- **Fractional units (`fr`)** – Divide available space into flexible portions (e.g., `1fr 2fr`)

### Example

```css
.container {
  display: grid;
  grid-template: repeat(3, 100px) / 100px 30% 70%;
  border: 3px solid lightgrey;
  height: 100vh;
}
```
- **Using fractions instead of percentages is generally considered a best practice**
```css
.container {
  display: grid;
  grid-template: repeat(3, 100px) /3fr 7fr;
  border: 3px solid lightgrey;
  height: 100vh;
}
```

```css
.container {
  display: grid;
  grid-template: 100px auto 100px /3fr 7fr;
  border: 3px solid lightgrey;
  height: 100vh;
}
```

- **It makes the track size depend on its content.**

- **The grid cell will grow just enough to fit its content, unless restricted by other styles (like max-width or overflow).**

#  CSS Grid Playground Task

Use **CSS Grid** to arrange six boxes inside a container. You’ll only work with the CSS — no need to touch the HTML.

##  Your Goals
1. Make the container a grid with **3 equal columns**.
2. Add **20px gap** between boxes.
3. Make **box 1 span 2 columns**.
4. Make **box 6 span all 3 columns** at the bottom.
5. *(Bonus)* Make the grid **responsive** with `auto-fit` and `minmax`.

---

###  index.html

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>CSS Grid Task</title>
  <link rel="stylesheet" href="style.css" />
</head>
<body>
  <div class="grid-container">
    <div class="box box1">1</div>
    <div class="box box2">2</div>
    <div class="box box3">3</div>
    <div class="box box4">4</div>
    <div class="box box5">5</div>
    <div class="box box6">6</div>
  </div>
</body>
</html>

```
###  index.html
```css
body {
  margin: 0;
  padding: 0;
  font-family: sans-serif;
}

/* TASK 1: Turn the container into a grid */
.grid-container {
  width: 90%;
  margin: 30px auto;
  background: #f4f4f4;
  padding: 20px;

  /* Example: display: grid; */
  /* TASK 2: Create a 3-column layout with equal width columns */
  /* TASK 3: Add a 20px gap between all boxes */
}

/* TASK 4: Make box1 span 2 columns */

/* TASK 5: Make box6 span all 3 columns */

.box {
  background-color: #3498db;
  color: white;
  padding: 30px;
  font-size: 24px;
  text-align: center;
  border-radius: 8px;
}

```





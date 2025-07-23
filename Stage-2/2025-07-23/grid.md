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

## Example 1

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
- **Using fractions instead of percentages is generally considered a best practice
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

- **It makes the track size depend on its content.

- **The grid cell will grow just enough to fit its content, unless restricted by other styles (like max-width or overflow).






## Navigation

1. [Overview](readme.md)
2. [Quick Quiz](./01-quick-quiz.md)
3. [Live Coding](./02-live-coding.md)
4. [Box Model & Selectors](./03-box-model-and-selectors.md)
5. [Positioning & Flexbox](./04-positioning-and-flexbox.md) ← _You are here_
6. [Flexbox Froggy Game](./05-flex-froggy-game.md)
7. [Media Queries & Responsive Design](./06-media-queries.md)

---

# Positioning & Flexbox Recap

---

## Setup

### Step 1: Create Project Structure

1. Create a new folder called `positioning-flexbox`
2. Create a subfolder called `css`
3. Create a file `index.html` in the main folder
4. Create a file `styles.css` in the `css` folder
5. Open the project folder in VS Code

### Step 2: Starting HTML & CSS

Copy this code exactly. We'll modify the CSS live together.

**HTML (`index.html`):**

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Positioning & Flexbox</title>
        <link rel="stylesheet" href="css/styles.css" />
    </head>
    <body>
        <div class="container">
            <div class="item">A</div>
            <div class="item">B</div>
            <div class="item">C</div>
        </div>
    </body>
</html>
```

**CSS (`css/styles.css`):**

```css
.container {
    height: 400px;
    background: #f0f0f0;
    border: 2px solid #333;
}

.item {
    width: 100px;
    height: 100px;
    background: #3498db;
    color: white;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 24px;
    font-weight: bold;
    margin: 10px;
}
```

**Check:** You should see three blue boxes stacked vertically with A, B, C labels.

---

## Flexbox Experiments

### Experiment 1: Basic Flex Container

Let's make the container a flex container and see what happens.

**Observe:** Items now line up horizontally! This is the default flex behavior.

**Question:** "What changed? Why are they horizontal now?"

### Experiment 2: Justify Content

Let's distribute the space between items differently.

**Add to `.container`:**

```css
justify-content: space-between;
```

**Try these values live:**

-   `space-between` - Equal space between items
-   `space-around` - Equal space around each item
-   `center` - Items centered
-   `flex-end` - Items at the end

**Question:** Which one would you use for a navigation bar?

### Experiment 3: Align Items

Let's control vertical alignment.

**Add to `.container`:**

```css
align-items: center;
```

**Try these values:**

-   `center` - Vertically centered
-   `flex-start` - Top alignment
-   `flex-end` - Bottom alignment
-   `stretch` - Fill container height

### Experiment 4: Flex Direction

Let's change the main axis direction.

**Add to `.container`:**

```css
flex-direction: column;
```

**Observe:** Items stack vertically again, but now justify-content controls vertical spacing!

**Key insight!:** "Main axis rotated! `justify-content` now works `vertically`.

---

## Positioning Experiments

### Experiment 5: Absolute Positioning

Let's see what happens with absolute positioning.

**Preparation:**

-   Remove all flex properties from `.container`
-   add a new rule to your CSS:

```css
.item:nth-child(2) {
    position: absolute;
    top: 50px;
    left: 200px;
}
```

**Observe:**

-   B moves to specific coordinates
-   A and C move closer together (B no longer takes space) in the document flow

**Huh?** "Where did B go? Why did A and C move together?

### Experiment 6: Relative Positioning

Let's try relative positioning instead.

**Change the B item rule:**

```css
.item:nth-child(2) {
    position: relative;
    top: 50px;
    left: 50px;
}
```

**Observe:**

-   B moves from its original position
-   A and C stay in their original spots (B still takes space). Document flow remains intact.

**Question:** What's the difference between absolute and relative?

---

## Mini-Exercise Challenges

### Challenge 1: Horizontal Layout

Make all items line up horizontally using flexbox.

### Challenge 2: Vertical Layout (1 minute)

Now make them vertical again using flexbox.

### Challenge 3: Stick C to Bottom

Make item C stick to the bottom of the container.

**Mini challenge:** There are two ways to do this: using flexbox or positioning. Try see if you can do it both ways!

---

## Understanding Check & Discussion

### Questions

1. **What happens when you set position: absolute on B?**

2. **Why does justify-content work differently with flex-direction: column?**

3. **When would you use flexbox vs positioning?**

---

## Common Issues & Solutions

### Flexbox Not Working

-   **Check:** Did you add `display: flex` to the container?
-   **Fix:** Flexbox properties only work on flex containers

### Items Not Moving with Positioning

-   **Check:** Did you specify position property AND direction properties?
-   **Fix:** Need both `position: absolute` AND `top/left/etc.`

### Unexpected Layout Changes

-   **Check:** Which elements are positioned vs in normal flow?
-   **Fix:** Use DevTools to see which elements are taking space

---

## Extension Activities (If Time)

You can also try this on your own if we didn't have time in class.

1. **Flex properties on items:**

    ```css
    .item:nth-child(2) {
        flex-grow: 2; /* B takes twice the space */
    }
    ```

2. **Z-index layering:**

    ```css
    .item:nth-child(2) {
        position: absolute;
        z-index: 10;
    }
    ```

3. **Combining techniques:**
    ```css
    .container {
        display: flex;
        position: relative; /* For absolute children */
    }
    ```

---

#### Answers to questions are provided in the Understanding Check section.

1. **What happens when you set position: absolute on B?**
    - B moves to specific coordinates, removing it from the document flow. A and C move closer together.
2. **Why does justify-content work differently with flex-direction: column?**
    - Flexbox: For layouts, distributing space
    - Positioning: For precise placement, overlays
3. **When would you use flexbox vs positioning?**
    - Main axis changes from horizontal to vertical

## Navigation

1. [Overview](readme.md)
2. [Project Solution: Flexbox Menu & Boxes](01-project-solution.md) ← _You are here_
3. [External CSS](02-external-css.md)
4. [CSS Grid Fundamentals](03-css-grid.md)

---

# Project Solution: Flexbox Menu & Boxes

Here's the solution to the Flexbox Menu & Boxes project. This solution demonstrates how it could be done, but there are many ways to achieve the same result. Feel free to adapt and modify the code to suit your style and preferences.

[Original Project Instructions](../2025-07-22/03-project.md)

## HTML Structure

```html
<!-- index.html -->
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Flexbox Menu & Boxes</title>
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
        <!-- Top Navigation Bar -->
        <div class="menu">
            <div class="brand">MyBrand</div>
            <div class="nav-links">
                <a
                    href="#"
                    style="background-color: #34495e; border-radius: 5px"
                    >Home</a
                >
                <a href="#">About</a>
                <a href="#">Services</a>
                <a href="#">Contact</a>
            </div>
        </div>

        <!-- Boxes -->
        <div class="container">
            <div class="box box1">Box 1</div>
            <div
                class="box box2"
                style="box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2)"
            >
                Box 2
            </div>
            <div class="box box3">Box 3</div>
            <div class="box box4">Box 4</div>
            <div class="box box5">Box 5</div>
            <div class="box box6">Box 6</div>
            <div class="box box7">Box 7</div>
            <div class="box box8">Box 8</div>
        </div>
    </body>
</html>
```

## CSS Styles

```css
/* style.css */
body {
    margin: 0;
    font-family: Arial, sans-serif;
}

/* Top Menu Bar */
.menu {
    background-color: #2c3e50;
    color: white;
    padding: 15px 20px;
    display: flex;
    justify-content: space-around;
    align-items: center;
}

.brand {
    font-size: 24px;
    font-weight: bold;
}

.nav-links {
    display: flex;
    gap: 20px;
}

.nav-links a {
    color: white;
    text-decoration: none;
    padding: 10px 15px;
    transition: background-color 0.3s ease;
}

.nav-links a:hover {
    background-color: #34495e;
    border-radius: 5px;
}

/* Boxes Section */
.container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
    padding: 30px;
    background-color: #ecf0f1;
}

.box {
    width: 150px;
    height: 150px;
    border-radius: 10px;
    color: white;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 20px;
    font-weight: bold;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.box:hover {
    transform: scale(1.05);
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
}

/* Different Colors */
.box1 {
    background-color: #e74c3c;
}
.box2 {
    background-color: #3498db;
}
.box3 {
    background-color: #27ae60;
}
.box4 {
    background-color: #f39c12;
}
.box5 {
    background-color: #9b59b6;
}
.box6 {
    background-color: #1abc9c;
}
.box7 {
    background-color: #e67e22;
}
.box8 {
    background-color: #34495e;
}
```

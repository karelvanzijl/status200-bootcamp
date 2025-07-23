# External CSS

## What is External CSS?

External CSS is a method of styling HTML documents by linking to a separate CSS file. Instead of writing CSS directly in your HTML file, you create a separate `.css` file and link to it using the `<link>` element.

## Why Use External CSS?

### 1. Separation of Concerns

-   Keep HTML structure separate from CSS styling
-   Cleaner, more maintainable code
-   Easier to debug and modify

### 2. Reusability

-   One CSS file can style multiple HTML pages
-   Consistent styling across your entire website
-   Make changes once, apply everywhere

### 3. Performance

-   CSS file is cached by the browser
-   Faster loading for subsequent pages
-   Reduced file sizes for individual HTML pages

## How to Link External CSS

### Step 1: Create a CSS File

Create a file with the `.css` extension (e.g., `styles.css`):

```css
/* styles.css */
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 20px;
}

h1 {
    color: #333;
    text-align: center;
}

.highlight {
    background-color: yellow;
    padding: 10px;
}
```

### Step 2: Link the CSS File in HTML

Add the `<link>` element in the `<head>` section of your HTML:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>My Website</title>
        <link rel="stylesheet" href="styles.css" />
    </head>
    <body>
        <h1>Welcome to My Website</h1>
        <p class="highlight">This paragraph has a highlight style.</p>
    </body>
</html>
```

## Link Element Attributes

The `<link>` element uses several important attributes:

```html
<link rel="stylesheet" href="styles.css" />
```

-   **`rel="stylesheet"`**: Tells the browser this is a CSS stylesheet
-   **`href="path/to/file.css"`**: Path to your CSS file (relative or absolute)
-   **`type="text/css"`**: Optional, modern browsers assume this by default

## File Paths

### Relative Paths

```html
<!-- Same directory -->
<link rel="stylesheet" href="styles.css" />

<!-- Subdirectory -->
<link rel="stylesheet" href="css/styles.css" />

<!-- Parent directory -->
<link rel="stylesheet" href="../styles.css" />
```

### Absolute Paths

```html
<!-- From root directory -->
<link rel="stylesheet" href="/assets/css/styles.css" />

<!-- External URL -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto" />
```

## Multiple CSS Files

You can link multiple CSS files for organization:

```html
<head>
    <link rel="stylesheet" href="reset.css" />
    <link rel="stylesheet" href="layout.css" />
    <link rel="stylesheet" href="components.css" />
    <link rel="stylesheet" href="responsive.css" />
</head>
```

**Order matters!** Later stylesheets can override earlier ones.

## Best Practices

### 1. File Organization (example)

```
project/
└── index.html
└── about.html
└── css/
    └── styles.css
    └── layout.css
    └── components.css
```

### 2. Naming Conventions

-   Use descriptive names: `main.css`, `layout.css`, `components.css`
-   Use lowercase and hyphens: `navigation-menu.css`
-   Avoid spaces in filenames

### 3. CSS Organization

```css
/* Reset styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Typography */
body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
}

/* Layout */
.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

/* Components */
.button {
    background-color: #007bff;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
}
```

## Common Issues & Solutions

### CSS Not Loading

1. **Check the file path** - Make sure `href` points to the correct location
2. **Check file name** - Ensure spelling matches exactly (case-sensitive on some servers)
3. **Check browser cache** - Hard refresh with `Ctrl+F5` or `Cmd+Shift+R`

### Styles Not Applying

1. **Check CSS syntax** - Missing semicolons, brackets, etc.
2. **Check selectors** - Make sure they match your HTML elements
3. **Check specificity** - More specific selectors override general ones

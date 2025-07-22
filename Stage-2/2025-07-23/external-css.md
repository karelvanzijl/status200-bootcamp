# Separating CSS from HTML

Writing CSS in a separate file instead of inside the HTML document  
improves structure, maintainability, and scalability of a web project.  
Below are the main reasons and steps for separating CSS from HTML.

## Reasons to Separate CSS

### 1. Cleaner and More Organized Code
Keeping HTML and CSS in separate files helps maintain a clear structure.  
HTML focuses on content and structure, while CSS handles presentation  
and style. This makes the code easier to read and manage.

### 2. Reusability Across Pages
A single CSS file can be linked to multiple HTML files.  
This allows consistent styling across different pages  
without repeating the same style rules.

### 3. Easier Maintenance
Styles can be updated in one place without needing to edit  
each HTML file individually. This is especially helpful in  
larger projects with many pages.

### 4. Better Collaboration
In team environments, front-end developers often divide work  
between structure (HTML) and styling (CSS). Separating files  
allows individuals to work in parallel more effectively.

---

## How to Write and Link a CSS File

### Step 1: Create a CSS File
Create a new file and name it `style.css`.

### Step 2: Write CSS Rules in the File
```css
/* style.css */
body {
  background-color: lightblue;
}

h1 {
  color: navy;
  text-align: center;
}
```

### Step 3: Add the CSS File to Your HTML

To apply the styles from your `style.css` file,  
you need to link it inside the `<head>` section of your HTML file.

Add the following line inside the `<head>` tag:

```html
<!DOCTYPE html>
<html>
<head>
  <title>Example Page</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <h1>Hello, world!</h1>
</body>
</html>
```
```css
body {
  background-color: lightblue;
}

h1 {
  color: navy;
}

```

### Make Sure That:

- The CSS file is saved in the **same folder** as your HTML file.  
- If it's in a different folder, adjust the path accordingly  
  (for example: `css/style.css`).  
- The file name and extension are typed correctly (`style.css`).



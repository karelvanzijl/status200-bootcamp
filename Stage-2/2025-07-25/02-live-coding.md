## Navigation

1. [Overview](readme.md)
2. [Quick Quiz](./01-quick-quiz.md)
3. [Live Coding](./02-live-coding.md) ← _You are here_
4. [Box Model & Selectors](./03-box-model-and-selectors.md)
5. [Positioning & Flexbox](./04-positioning-and-flexbox.md)
6. [Flexbox Froggy Game](./05-flex-froggy-game.md)
7. [Media Queries & Responsive Design](./06-media-queries.md)

---

# Live Coding: Build a Simple Webpage

---

## Setup

### Step 1: Create Project Structure

Use the command prompt to create a new project folder and files.

1. Create a new folder called `live-coding-practice`
2. Create a subfolder called `css`
3. Create a file `index.html` in the main folder
4. Create a file `styles.css` in the `css` folder
5. Open the project folder in VS Code

---

## HTML Structure

### Step 2: Create Basic HTML Skeleton

`!` in VS Code to generate the basic HTML structure

### Step 3: Add Semantic Structure

Use the following HTML elements to create a simple webpage structure inside `index.html`:

-   `<header>` for the page title
-   `<nav>` for navigation links
-   `<main>` for the main content
-   `<footer>` for the footer content

**Add content to each section:**

-   In the `header` element:
    -   add the important title / heading on the page with the text` My Practice Website`
-   In the `nav` element:
    -   add a paragraph element with the text `Navigation will go here`
-   In the `main` element:
    -   add a slightly less important title / heading with the text `Welcome to my page`
    -   followed by a paragraph element with the text `This is the main content area.`
-   In the `footer` element:
    -   add a copyright notice with the text `© 2025 My Practice Website`
    -   make the text `My Practice Website` a link to `https://google.com`

**Check:** Open your `index.html` in the browser. You should see unstyled content.

---

## Mini Challenge

### Challenge 1: Add an Image

Add an image below the title in the header section:

-   Use `https://picsum.photos/id/684/600/400` for the image source
-   Give teh image a width of 300 pixels

### Challenge 2: Create Navigation List

Replace the paragraph in the `nav` element with a **unordered list** of **3 links**:

-   Home
-   About
-   Contact

**Hint**: `<ul>`, `<a>`

### Challenge 3: Add CSS Class and Styling

-   Give your main section a class called `content`
-   Add a background color to the main section using CSS
-   Add 20 pixels of padding to the main section

**Hints:**

-   Did we already link the CSS file? If not, do so before writing any CSS.
-   Are we going to select the `main` element or the `content` class?

---

## Troubleshooting Demo

### Intentionally Break the CSS Link

Let's see what happens when CSS doesn't work.

1. Change

    ```
    <link rel="stylesheet" href="css/styles.css">

    to

    <link rel="stylesheet" href="styles.css">
    ```

2. Refresh the browser
3. Fix it back

**Remember:** correct path and file names matter! A minor typo can break everything.

---

## Final Check & Wrap-up

### Walking Around / Screen Sharing

-   **In-person:** Walk around to see who's struggling
-   **Online:** Ask 2-3 students to share their screens
-   **Help:** Assist anyone who fell behind

### Expected Final Result

Students should have:

-   ✅ Valid HTML structure with semantic elements
-   ✅ Working CSS file linked properly
-   ✅ Header with image
-   ✅ Navigation with 3 links
-   ✅ Main content with background color
-   ✅ Footer

---

## Common Issues to Watch For

### HTML Problems

-   Missing closing tags
-   Incorrect nesting
-   Typos in element names

### CSS Problems

-   Wrong file name in link tag
-   Missing semicolons
-   Incorrect class selector syntax (forgot the `.`)

### File Problems

-   Files not saved
-   Wrong file extensions
-   Files in wrong folder

---

## Extension (If Time Allows)

1. **Add more CSS:** Make the header background blue
2. **Style the navigation:** Remove the bullet points from the list
3. **Style the navigation:** Make it horizontal instead of vertical
4. **Add nav link hover effects:** Make the navigantion links change color when you hover over them

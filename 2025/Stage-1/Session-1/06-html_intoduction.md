# HTML Basics

Now that you know how to use folders and the terminal, it’s time to write your first real code: a personal web page using **HTML**.

---

## What is HTML?

**HTML** stands for **HyperText Markup Language**. It is the basic building block of the web. HTML tells the browser what content to display (text, images, links, etc.) and how it is structured.

A simple HTML page looks like this:

```html
<!DOCTYPE html>
<html>
    <head>
        <title>My First Page</title>
    </head>
    <body>
        <h1>Hello, world!</h1>
        <p>This is my first website.</p>
    </body>
</html>
```

---

### 💡 Quick tip in VS Code:

In a new `.html` file, just type `!` and press `Tab` — this will automatically generate the full HTML boilerplate for you as shown below. It's a built-in shortcut and saves time.

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
    </head>
    <body></body>
</html>
```

---

## Important HTML Tags

| Tag      | What it does                              |
| -------- | ----------------------------------------- |
| `<html>` | The root element of the page              |
| `<head>` | Info _about_ the page (not shown on page) |
| `<body>` | The visible content of the page           |
| `<h1>`   | A big title                               |
| `<p>`    | A paragraph of text                       |
| `<a>`    | A hyperlink                               |
| `<img>`  | An image                                  |

---

### 💡 Want More Tags?

There are many more HTML tags you can use to build webpages — like lists, tables, forms, and more. We'll cover some of these later in the course.

> Check out the full list of HTML tags here:  
> [https://www.w3schools.com/tags/default.asp](https://www.w3schools.com/tags/default.asp)

W3Schools is a beginner-friendly site where you can read examples and even try the code in your browser.

---

## Activity: Make Your Own Homepage

### Step 1: Use the Terminal to Create Folders & File

1. Open your terminal
2. Go to your `Documents` folder:

    - Windows:

    ```bash
    cd %USERPROFILE%\Documents
    ```

    - Mac/Linux:

    ```bash
    cd ~/Documents
    ```

3. Create a folder for your projects and go into it:

    ```bash
    mkdir Projects
    cd Projects
    ```

4. Create a subfolder for today's work:

    ```bash
    mkdir day1
    cd day1
    ```

5. Create a file called `index.html`:

    - Mac/Linux:

        ```bash
        touch index.html
        ```

    - Windows:

        ```bash
        echo > index.html
        ```

6. Open the folder in VS Code:

    ```bash
    code .
    ```

---

### Step 2: Write Your HTML Code

In `index.html`, write your own homepage using this template:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>My Personal Homepage</title>
    </head>
    <body>
        <h1>[Your Name]</h1>

        <p>
            Hello! My name is [Your Name]. I just started learning to code and
            this is my first webpage!
        </p>

        <img src="https://via.placeholder.com/250" width="250" />

        <p>Here’s a link to something I like:</p>

        <a href="https://www.example.com" target="_blank">
            Visit my favorite website
        </a>
    </body>
</html>
```

-   Replace `[Your Name]` with your actual name.
-   You can also use a **local image** (put it in the same folder and change the `src`).
-   Replace `https://www.example.com` with the URL of your favorite website

---

### 💡 Bonus: View Your Website

There are two ways to open your website in the browser:

---

#### Option 1: Use Live Server (Recommended)

If you installed the **Live Server** extension in VS Code, you can launch your page with just one click.

1. Open your `index.html` file in VS Code
2. Right-click anywhere in the code editor
3. Click **"Open with Live Server"**

Your browser will open the page automatically. Every time you save the file, the page will refresh to show your changes!

> 💡 If nothing happens, check if your browser blocked pop-ups or if Live Server is installed correctly.

---

#### Option 2: Open the File Manually

1. Go to your `day1` folder using **File Explorer** (Windows) or **Finder** (Mac)
2. Double-click the `index.html` file  
   OR right-click → "Open With" → choose your browser

You can also drag and drop the file directly into a browser window.

> You’ll see a URL starting with `file:///...` — this means the browser is opening a file from your computer, not the internet.

---

## 🎉 What You’ve Learned

-   What HTML is and what it looks like
-   How to use basic HTML tags
-   How to structure a simple page
-   How to open your HTML file in a browser

You're now officially a web developer! 🧑‍💻

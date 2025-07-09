# Folder & Terminal Basics

Welcome! In this part of the class, we'll learn how to navigate your computer like a developer — using folders and the terminal (command line).

<!-- Add an index -->

## Table of Contents

-   [What is a Folder?](#what-is-a-folder)
-   [Absolute vs Relative Paths](#absolute-vs-relative-paths)
-   [Command Line Basics](#command-line-basics)
-   [Activity: Train your relative path skills!](#activity-train-your-relative-path-skills)
-   [Activity: Terminal Practice](#activity-terminal-practice)
-   [Assignment: Create a Folder Structure](#assignment-create-a-folder-structure)
-   [What You've Learned](#what-youve-learned)

---

## What is a Folder?

A **folder** is a container used to organize files. Just like physical folders hold paper documents, digital folders hold files like `.html`, `.txt`, `.js`, and more.

You can have folders _inside_ folders — this is called a **folder structure** or **directory tree**.

Example:

```

Documents/
└── Notes/
    └── groceries.txt
    └── homework.txt
    └── meeting.txt
└── Photos/
    └── Vacation/
        └── napels.jpg
        └── rome.jpg
└── Projects/
    └── Webshop/
        └── index.html
        └── orders.html
        └── products.html
        └── styles.css
    └── Portfolio/
        └── index.html
        └── styles.css

```

---

## Absolute vs Relative Paths

### Absolute Path:

-   The _full address_ to a folder or file.
-   Example (Windows): `C:\Users\YourName\Documents\Projects\Webshop\index.html`
-   Example (Mac/Linux): `/Users/YourName/Documents/Projects/Webshop/index.html`

### Relative Path:

-   A path **relative to your current folder**.
-   Example: If you're inside the `Vacation` folder, then the relative path to `orders.html` is:  
    `../../Projects/Webshop/orders.html`

_Steps to understand the relative path:_

-   . First step is to determine where you are currently located. In this case, we are in the `Vacation` folder.

1. `../` goes up one folder (to `Photos`)
2. `../` goes up another folder (to `Documents`)
3. `Projects/` goes into the `Projects` folder
4. `Webshop/` goes into the `Webshop` folder
5. `orders.html` is the file we want to reference

---

## Activity: Train your relative path skills!

Go to https://status200.my/examples/folders/

1. Select a "From" folder or file
2. Select a "To" folder or file
3. Try to write down the **relative path** from the "From" to the "To" location.
4. Check if your answer is correct by clicking the _"Show relative path"_ button.
5. If you get it wrong, try again until you get it right!

---

## Command Line Basics

The **terminal** (or command prompt) lets you control your computer using text commands. Here are the most important ones:

| Command           | Description                             |
| ----------------- | --------------------------------------- |
| `pwd`             | Print working directory (where you are) |
| `dir`             | List files and folders (Windows)        |
| `ls`              | List files and folders (Mac/Linux)      |
| `cd foldername`   | Change directory                        |
| `cd ../`          | Go up one folder                        |
| `cd ./`           | Go to the current folder (no change)    |
| `mkdir name`      | Make a new folder                       |
| `touch file.txt`  | Create a new empty file (Mac/Linux)     |
| `echo > file.txt` | Create a file (Windows)                 |

> 💡 Use `Tab` to auto-complete file or folder names!

---

## Activity: Folder & Terminal Practice

We're going to create a simple folder structure and add a file.

### Step-by-step Instructions

1. **Open your terminal:**

    - **Windows:** Press `Win + R`, type `cmd`, press Enter
    - **Mac:** Open `Terminal.app` from Launchpad

2. **Navigate to your Documents folder:**

    - Windows:
        ```bash
        cd %USERPROFILE%\Documents
        ```
    - Mac/Linux:
        ```bash
        cd ~/Documents
        ```

3. **Create your bootcamp folder:**

    ```bash
    mkdir Bootcamp
    cd Bootcamp
    ```

4. **Create a folder for today:**

    ```bash
    mkdir Stage-1
    cd Stage-1
    ```

5. **Create a file called `index.html`:**

    - Mac/Linux:

        ```bash
        touch index.html
        ```

    - Windows:

        ```bash
        echo > index.html
        ```

You have now created a folder structure and an HTML file!

```

Bootcamp/
└── Stage-1/
    └── index.html
```

---

## Assignment: Create a Folder Structure

Create a folder structure like this:

> 💡 Don't try to create the `profile.jpg` using the terminal; just copy an image file into the Images folder and rename it to `profile.jpg`.

```
Bootcamp/
└── Stage-1/
    └── Images
        └── profile.jpg
    └── Pages
        └── about.html
        └── contact.html
    └── index.html
```

---

## What You've Learned

-   What folders are and why they matter
-   How to use the terminal to navigate and manage folders

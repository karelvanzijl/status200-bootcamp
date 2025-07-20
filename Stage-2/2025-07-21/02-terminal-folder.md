## Navigation

1. [Overview](README.md)
2. [VS Code Setup](01-setup-vscode.md)
3. [Terminal & Folder Basics](02-terminal-folder.md) ← _You are here_
4. [HTML Recap](03-html-recap.md)
5. [CSS Basics](04-css-basics.md)
6. [Advanced Selectors](05-advanced-selectors.md)

---

# Folder & Terminal Basics

Welcome! In this part of the class, we'll learn how to navigate your computer like a developer — using folders and the terminal (command line).

## Table of Contents

-   [What is a Folder?](#what-is-a-folder)
-   [Command Line Basics](#command-line-basics)
-   [Activity: Terminal Practice](#activity-terminal-practice)
-   [Absolute vs Relative Paths](#absolute-vs-relative-paths)
-   [Activity: Train your relative path skills!](#activity-train-your-relative-path-skills)
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

-   First step is to determine where you are currently located. In this case, we are in the `Vacation` folder.

1. `../` goes up one folder (to `Photos`)
2. `../` goes up another folder (to `Documents`)
3. `Projects/` goes into the `Projects` folder
4. `Webshop/` goes into the `Webshop` folder
5. `orders.html` is the file we want to reference

---

## Train your relative path skills!

Go to https://status200.my/examples/folders/

1. Select a "From" folder or file
2. Select a "To" folder or file
3. Try to write down the **relative path** from the "From" to the "To" location.
4. Check if your answer is correct by clicking the _"Show relative path"_ button.
5. If you get it wrong, try again until you get it right!

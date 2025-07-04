# Folder & Terminal Basics

Welcome! In this part of the class, we’ll learn how to navigate your computer like a developer — using folders and the terminal (command line).

---

## What is a Folder?

A **folder** is a container used to organize files. Just like physical folders hold paper documents, digital folders hold files like `.html`, `.txt`, `.js`, and more.

You can have folders _inside_ folders — this is called a **folder structure** or **directory tree**.

Example:

```

bootcamp/
└── day1/
    └── install_browser.txt
    └── install_vscode.txt
└── day2/
    └── notes.txt

```

---

## Absolute vs Relative Paths

### Absolute Path:

-   The _full address_ to a folder or file.
-   Example (Windows): `C:\Users\YourName\Documents\bootcamp\day2\notes.txt`
-   Example (Mac/Linux): `/Users/YourName/Documents/bootcamp/day2/notes.txt`

### Relative Path:

-   A path **relative to your current folder**.
-   Example: If you're inside the `bootcamp` folder, then the relative path to `notes.txt` is:  
    `day2/notes.txt`

---

## Command Line Basics

The **terminal** (or command prompt) lets you control your computer using text commands. Here are the most important ones:

| Command           | Description                             |
| ----------------- | --------------------------------------- |
| `pwd`             | Print working directory (where you are) |
| `ls` or `dir`     | List files and folders                  |
| `cd foldername`   | Change directory                        |
| `cd ..`           | Go up one folder                        |
| `mkdir name`      | Make a new folder                       |
| `touch file.txt`  | Create a new empty file (Mac/Linux)     |
| `echo > file.txt` | Create a file (Windows)                 |
| `code .`          | Open current folder in VS Code          |

> 💡 Use `Tab` to auto-complete file or folder names!

---

## Interactive

Go to https://status200.my/examples/folders/

---

## Activity: Folder Practice

We’re going to create a simple folder structure and add a file.

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
    mkdir bootcamp
    cd bootcamp
    ```

4. **Create a folder for today:**

    ```bash
    mkdir day1
    cd day1
    ```

5. **Create a file called `notes.txt`:**

    - Mac/Linux:

        ```bash
        touch notes.txt
        ```

    - Windows:

        ```bash
        echo. > notes.txt
        ```

6. **Open the current folder in VS Code:**

    ```bash
    code .
    ```

7. **Inside VS Code**, click `notes.txt` and type:

    ```
    My Bootcamp Notes
    ------------------
    - Created a folder using the terminal
    - Learned basic commands
    - Used VS Code to edit a file
    ```

---

## What You’ve Learned

-   What folders are and why they matter
-   How to use the terminal to navigate and manage folders
-   How to create and edit files using VS Code

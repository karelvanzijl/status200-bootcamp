# Create a folder structure

---

## Task

Create a folder structure that looks exactly like this using your terminal:

```
Bootcamp/
└── Stage-1/
    └── Images/
        └── profile.jpg
    └── Pages/
        └── about.html
        └── contact.html
    └── index.html
```

---

## Solution

Here's how to create the folder structure using your terminal. Follow these steps:

1. **Open your terminal** (Command Prompt on Windows, Terminal on Mac/Linux).

2. **Navigate to your Documents folder** (or wherever you want to create the Bootcamp folder):

    - Mac/Linux:

        ```bash
        cd ~/Documents
        ```

    - Windows:
        ```bash
        cd %USERPROFILE%\Documents
        ```

3. **Create your Bootcamp folder**:

    ```bash
    mkdir Bootcamp
    cd Bootcamp
    ```

4. **Create the Stage-1 folder**:

    ```bash
    mkdir Stage-1
    cd Stage-1
    ```

5. **Create the Images folder**:

    ```bash
    mkdir Images
    ```

6. **Create the Pages folder**:

    ```bash
    mkdir Pages
    ```

7. **Create the `index.html` file**:
    - Mac/Linux:
        ```bash
        touch index.html
        ```
    - Windows:
        ```bash
        echo > index.html
        ```
8. **Create the `about.html` file in the Pages folder**:
    - Mac/Linux:
        ```bash
        cd Pages
        touch about.html
        ```
    - Windows:
        ```bash
        cd Pages
        echo > about.html
        ```
9. **Create the `contact.html` file in the Pages folder**:
    - Mac/Linux:
        ```bash
        touch contact.html
        ```
    - Windows:
        ```bash
        echo > contact.html
        ```
10. **Copy an image file into the Images folder and rename it to `profile.jpg`**:
    - Don't try to create the `profile.jpg` using the terminal; use the file explorer and copy an image file into the `Images/` folder and rename it to `profile.jpg`.

---

You can verify your folder structure by using:

-   **The terminal**: use the `ls` command (Mac/Linux) or `dir` command (Windows), and `cd` command to list the contents of the folders.
-   **File Explorer**: Navigate to the `Bootcamp/Stage-1` folder and check if the structure matches.

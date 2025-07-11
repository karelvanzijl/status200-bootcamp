## VS Code Installation

**Visual Studio Code** (VS Code) is a free, lightweight code editor used by millions of developers. We'll use it to write and run our HTML, CSS, and JavaScript code.

---

### For Windows Users

#### Step 1: Download

1. Go to [https://code.visualstudio.com](https://code.visualstudio.com)
2. Click the **Download for Windows** button.

#### Step 2: Install

1. Open the downloaded file (`VSCodeSetup.exe`)
2. Follow the installer:

    - Accept the license agreement
    - Choose the destination folder (leave default)
    - **Important:** On the _"Select Additional Tasks"_ screen:

        - ☑️ Check **Add to PATH** (important!)
        - ☑️ Check **Register Code as an editor for supported file types**

3. Click **Install** and wait for it to finish.
4. Click **Finish** to launch VS Code.

---

### For macOS Users

#### Step 1: Download

1. Go to [https://code.visualstudio.com](https://code.visualstudio.com)
2. Click **Download for macOS (Intel or Apple Silicon)** based on your chip:

    - M1/M2/M3 = Apple Silicon
    - Older Mac = Intel

#### Step 2: Install

1. Open the `.zip` file
2. Drag the **Visual Studio Code** icon into the **Applications** folder
3. Launch VS Code from **Launchpad** or **Applications**

> 💡 If you see a security warning, go to:
> `System Preferences > Security & Privacy > Open Anyway`

#### Optional: Enable `code` command

1. Open VS Code
2. Press `Cmd + Shift + P` and type:
   `Shell Command: Install 'code' command in PATH`
3. Hit Enter — now you can open folders using the terminal with:

    ```bash
    code .
    ```

---

### Test VS Code Installation

After installation, try this:

1. Open a terminal:

    - Windows: press `Win + R`, type `cmd`, press Enter
    - Mac: open **Terminal** from Launchpad

2. Type this command:

    ```bash
    code .
    ```

3. If VS Code opens — it's working! 🎉

---

## VS Code Extensions

These extensions help you write better code and see your results instantly in the browser. More will be added while the course progresses.

---

### 1. Install **Live Server**

#### What it does:

-   Opens your HTML file in the browser
-   Automatically refreshes the page when you save your code

#### How to install:

1. Open **VS Code**
2. Click the **Extensions icon** on the left sidebar (or press `Ctrl+Shift+X` / `Cmd+Shift+X`)
3. Search for:  
   **Live Server** by **Ritwick Dey**
4. Click **Install**

#### How to use:

1. Open your HTML file
2. Right-click anywhere in the editor
3. Choose **"Open with Live Server"**
4. Your default browser will open the page

---

### 2. Install **Prettier**

#### What it does:

-   Automatically formats your code (indentation, spacing, etc.)
-   Works with HTML, CSS, and JavaScript

#### How to install:

1. In VS Code, go to the **Extensions panel**
2. Search for:  
   **Prettier - Code Formatter** by **esbenp**
3. Click **Install**

---

### 3. Set Prettier as Default Formatter

#### How to enable:

1. Open **Settings** in VS Code:
    - Click the gear icon ⚙️ in the bottom-left corner
    - Choose **"Settings"**
2. Search for `default formatter`
3. Set **Default Formatter** to `esbenp.prettier-vscode`

### Test it out

1. Type messy code in an HTML file, like:
    ```
    <ul>
    <li>Item 1</li><li>
    Item 2</li></ul>
    ```
2. Press **Save**
3. The code should automatically become:
    ```html
    <ul>
        <li>Item 1</li>
        <li>Item 2</li>
    </ul>
    ```

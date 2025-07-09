# VS Code Complete Setup Guide

This guide covers everything you need to install and configure VS Code for web development, including browser installation and essential extensions.

---

## Browser Installation

We recommend using **Google Chrome** or **Brave** for web development. These browsers have excellent developer tools and work well with Live Server and VS Code.

---

### Option 1: Install **Google Chrome**

#### Step 1: Download

-   Go to https://www.google.com/chrome/

#### Step 2: Install

##### On Windows:

1. Click **Download Chrome**
2. Open the downloaded file (`ChromeSetup.exe`)
3. Follow the on-screen instructions

##### On macOS:

1. Click **Download Chrome**
2. Open the `.dmg` file
3. Drag the Chrome icon into your **Applications** folder
4. Open Chrome from **Launchpad** or **Applications**

---

### Option 2: Install **Brave Browser**

#### Step 1: Download

-   Go to https://brave.com/

#### Step 2: Install

##### On Windows:

1. Click **Download Brave**
2. Open the downloaded file (`BraveBrowserSetup.exe`)
3. Follow the setup instructions

##### On macOS:

1. Click **Download Brave**
2. Open the `.dmg` file
3. Drag the Brave icon into your **Applications** folder
4. Open Brave from **Launchpad** or **Applications**

---

### ✅ Check Browser Installation

Open your new browser and type this in the address bar:

```text
https://status200.my
```

---

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

### 3. Enable Format on Save

#### This makes VS Code automatically clean up your code every time you press **Save**.

#### How to enable:

1. Click on the gear icon ⚙️ in the bottom-left corner of VS Code
2. Choose **"Settings"**
3. In the search bar at the top, type:  
   `format on save`
4. Check the box: ✅ **Editor: Format On Save**

> ✅ Prettier will now run every time you save a file!

---

### Test it out

1. Type messy code in an HTML or JS file:
    ```html
    <h1>Hello World</h1>
    ```
2. Press **Save**
3. The code should automatically become:
    ```html
    <h1>Hello World</h1>
    ```

---

## Complete Setup Verification

After completing all installations:

1. ✅ Browser opens when you visit https://status200.my
2. ✅ VS Code opens when you type `code .` in terminal
3. ✅ Live Server extension is installed and working
4. ✅ Prettier extension is installed and formatting on save
5. ✅ You can create and edit HTML files

You're now ready to start coding! 🚀
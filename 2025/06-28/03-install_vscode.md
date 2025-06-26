# VS Code

**Visual Studio Code** (VS Code) is a free, lightweight code editor used by millions of developers. We’ll use it to write and run our HTML, CSS, and JavaScript code.

---

## For Windows Users

### Step 1: Download

1. Go to [https://code.visualstudio.com](https://code.visualstudio.com)
2. Click the **Download for Windows** button.

### Step 2: Install

1. Open the downloaded file (`VSCodeSetup.exe`)
2. Follow the installer:

    - Accept the license agreement
    - Choose the destination folder (leave default)
    - **Important:** On the _“Select Additional Tasks”_ screen:

        - ☑️ Check **Add to PATH** (important!)
        - ☑️ Check **Register Code as an editor for supported file types**

3. Click **Install** and wait for it to finish.
4. Click **Finish** to launch VS Code.

---

## For macOS Users

### Step 1: Download

1. Go to [https://code.visualstudio.com](https://code.visualstudio.com)
2. Click **Download for macOS (Intel or Apple Silicon)** based on your chip:

    - M1/M2/M3 = Apple Silicon
    - Older Mac = Intel

### Step 2: Install

1. Open the `.zip` file
2. Drag the **Visual Studio Code** icon into the **Applications** folder
3. Launch VS Code from **Launchpad** or **Applications**

> 💡 If you see a security warning, go to:
> `System Preferences > Security & Privacy > Open Anyway`

### Optional: Enable `code` command

1. Open VS Code
2. Press `Cmd + Shift + P` and type:
   `Shell Command: Install 'code' command in PATH`
3. Hit Enter — now you can open folders using the terminal with:

    ```bash
    code .
    ```

---

## Test Installation

After installation, try this:

1. Open a terminal:

    - Windows: press `Win + R`, type `cmd`, press Enter
    - Mac: open **Terminal** from Launchpad

2. Type this command:

    ```bash
    code .
    ```

3. If VS Code opens — it’s working! 🎉

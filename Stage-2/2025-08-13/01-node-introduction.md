## **Introduction to Node.js**

### 1. Recap: JavaScript in the Browser

-   **JavaScript** is a programming language originally created to run **inside web browsers** to make pages **interactive**.
-   Every browser has a **JavaScript engine** that converts JavaScript into machine code your computer can understand:

    -   Safari → **JavaScriptCore**
    -   Firefox → **SpiderMonkey**
    -   Chrome → **V8**
    -   Edge → **Chakra**

-   So far, we’ve been writing JavaScript **only for the browser**.

---

### 2. The Problem Before 2009

-   Before 2009, JavaScript could **only run in browsers**.
-   You couldn’t:

    -   Access files on your computer
    -   Send emails directly
    -   Store data in a database
    -   Build a full back-end service

-   All back-end programming had to be done in **other languages** (PHP, Python, Java, etc.).

---

### 3. The Birth of Node.js

```
    BEFORE 2009                     AFTER 2009 (Node.js)

┌─────────────────┐                ┌─────────────────┐
│    BROWSER      │                │    BROWSER      │
│                 │                │                 │
│  ┌────────────┐ │                │  ┌────────────┐ │
│  │ JavaScript │ │                │  │ JavaScript │ │
│  │    V8      │ │                │  │    V8      │ │
│  └────────────┘ │                │  └────────────┘ │
└─────────────────┘                └─────────────────┘
                                           │
        X                                  │ Same Language!
   Can't run on                            │
     server                                ▼
                                   ┌─────────────────┐
┌─────────────────┐                │     SERVER      │
│     SERVER      │                │                 │
│                 │                │  ┌────────────┐ │
│  ┌────────────┐ │                │  │ JavaScript │ │
│  │    PHP     │ │                │  │  Node.js   │ │
│  │   Python   │ │                │  │  (V8+C++)  │ │
│  │    Java    │ │                │  └────────────┘ │
│  └────────────┘ │                └─────────────────┘
└─────────────────┘
```

-   In **2009**, **Ryan Dahl** took Google's **V8 engine** (the fastest JS engine at the time), put it inside a **C++ program**, and created **Node.js**.
-   **Node is not a programming language** — it's a **runtime environment** for running JavaScript **outside the browser**.
-   This meant **one language** (JavaScript) could now be used for both:

    -   **Front-end** (in the browser)
    -   **Back-end** (on the server)

---

### 4. Why Do We Need a Server?

```
   CLIENT SIDE                    SERVER SIDE
┌─────────────────┐           ┌─────────────────┐
│   Your Device   │           │  Remote Server  │
│                 │           │                 │
│ ┌─────────────┐ │           │ ┌─────────────┐ │
│ │   Browser   │ │  REQUEST  │ │  Node.js    │ │
│ │   (Chrome)  │ ├──────────→│ │ Application │ │
│ │             │ │           │ │             │ │
│ │   React/    │ │ RESPONSE  │ │  Database   │ │
│ │   HTML/CSS  │ │←──────────┤ │  Files      │ │
│ │   JS        │ │           │ │  Email      │ │
│ └─────────────┘ │           │ └─────────────┘ │
└─────────────────┘           └─────────────────┘
```

#### Client Application (Front-end)

-   Runs on the user's device (browser, mobile app).
-   Displays information and sends **requests** to a server.
-   Examples:

    -   **Web app** in Chrome or Firefox
    -   **Mobile app** on iOS or Android

#### Server Application (Back-end)

-   Runs on a remote computer ("server").
-   Receives requests from clients, processes them, and sends **responses** back.
-   Can:

    -   Store & retrieve data from databases (e.g., MySQL)
    -   Send emails
    -   Store uploaded files
    -   Send push notifications

**Why not do this directly in the browser?**

-   **Security**: Browsers block direct file system access or direct email sending to protect users from malicious code.

---

### 5. Client–Server Architecture (Restaurant Metaphor)

```
   CUSTOMER           WAITER            KITCHEN
  (CLIENT)         (NODE SERVER)     (BACK-END)
      |                  |                |
      │ "I want pizza"   │                │
      ├─────────────────→│                │
      │                  │ "One pizza"    │
      │                  ├───────────────→│
      │                  │                │
      │                  │  "Pizza ready" │
      │     "Here's      │←───────────────┤
      │    your pizza"   │                │
      │←─────────────────┤                │
      │                  │                │
```

-   **Customer (Client)**: Places the order (request).
-   **Waiter (Node Server)**: Takes the order to the kitchen and delivers the food.
-   **Kitchen (Back-end Service)**: Prepares the meal (processes the request).

---

### 6. APIs

-   **API** = Application Programming Interface
-   The way clients and servers talk to each other.
-   The client sends a request, the server responds (often with JSON data).

---

### 7. Node.js Strength: Non-Blocking / Asynchronous

#### Synchronous Example

> Waiter takes order from Table 1, waits in the kitchen until food is ready, then goes to Table 2.
> Slow, one thing at a time.

#### Asynchronous Example

> Waiter takes order from Table 1, immediately takes order from Table 2, while the kitchen prepares food for both.
> Fast, tasks happen in parallel without waiting.

This makes **Node** great for **scalable** applications handling many users at once.

---

### 8. Browser vs Node

| Feature                         | Browser JS       | Node.js               |
| ------------------------------- | ---------------- | --------------------- |
| DOM (`document.getElementById`) | ✅ Yes           | ❌ No                 |
| File system (`fs.readFile`)     | ❌ No            | ✅ Yes                |
| Networking (`fetch`)            | ✅ Yes (limited) | ✅ Yes (more control) |
| Global objects                  | `window`         | `global`              |

---

### 9. Installing Node.js

1. **Check if installed**:

    ```bash
    node --version
    ```

2. **If not installed**:

    - Go to [https://nodejs.org](https://nodejs.org)
    - Download the **LTS** version
    - Install (default settings)

3. **Verify installation**:

    ```bash
    node --version
    ```

---

### 10. Recap

-   **Node.js** = JavaScript runtime environment for running JS outside the browser.
-   Built in 2009 using Google’s **V8** engine.
-   Lets you write **server-side code** in JavaScript.
-   Great for building **back-end services** (databases, file storage, APIs).
-   **Asynchronous by default** → handles many tasks at once.

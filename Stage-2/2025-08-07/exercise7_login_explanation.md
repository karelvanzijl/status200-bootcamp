# Exercise 7: Login with Array Check – JavaScript Explanation

## HTML Structure (given)
```html
<!DOCTYPE html>
<html>
  <head>
    <title>Login System</title>
  </head>
  <body>
    <h1>Login</h1>
    <input type="password" id="passwordInput" placeholder="Enter password" />
    <button onclick="login()">Log In</button>

    <p id="message"></p>

    <script src="script.js"></script>
  </body>
</html>
```

---

## JavaScript Code
```javascript
const names = ["Eva", "Qiff", "Safa", "Dayan"];
const passwords = ["password123", "123456", "abcdefg", "forgotpassword"];

function login() {
  const inputPassword = document.getElementById("passwordInput").value;
  const messageDisplay = document.getElementById("message");

  const index = passwords.indexOf(inputPassword);

  if (index < 0) {
    messageDisplay.textContent = "Unknown password. Try again.";
  } else {
    messageDisplay.textContent = "Welcome, " + names[index] + "!";
  }
}
```

---

## Step-by-Step JavaScript Explanation

### 1. Arrays for Names and Passwords
```javascript
const names = ["Eva", "Qiff", "Safa", "Dayan"];
const passwords = ["password123", "123456", "abcdefg", "forgotpassword"];
```
- **`names`** → stores a list of user names.  
- **`passwords`** → stores the matching passwords in the same order.  
- The **position (index)** of a password matches the position of the corresponding name.  
  - Example: `"password123"` is at index `0`, so `"Eva"` is also at index `0`.

---

### 2. Function Definition
```javascript
function login() {
```
- Declares the `login` function.  
- This function runs when the **"Log In"** button is clicked.

---

### 3. Getting User Input
```javascript
const inputPassword = document.getElementById("passwordInput").value;
```
- **`document.getElementById("passwordInput")`** → finds the input box by its `id`.  
- **`.value`** → retrieves the text typed by the user.  
- Stores the entered password in `inputPassword`.

---

### 4. Getting Message Display Area
```javascript
const messageDisplay = document.getElementById("message");
```
- Finds the paragraph (`<p>`) with the `id="message"`.  
- This is where success or error messages will appear.

---

### 5. Checking if Password Exists
```javascript
const index = passwords.indexOf(inputPassword);
```
- **`passwords.indexOf(...)`** → looks for the entered password inside the `passwords` array.  
- If found, returns its **index number** (0, 1, 2, ...).  
- If **not found**, returns `-1`.

---

### 6. If Password is Incorrect
```javascript
if (index < 0) {
  messageDisplay.textContent = "Unknown password. Try again.";
}
```
- If `index` is **less than 0** → means password not found.  
- **`textContent`** → changes the text inside the `<p>` to `"Unknown password. Try again."`.

---

### 7. If Password is Correct
```javascript
else {
  messageDisplay.textContent = "Welcome, " + names[index] + "!";
}
```
- If password exists, use `names[index]` to get the matching name.  
- Shows: `"Welcome, [Name]!"`.  
- Example: If password entered is `"abcdefg"` → index is `2` → `"Welcome, Safa!"`.

---

✅ This way, the login system checks the password, finds the matching name, and displays the correct message.

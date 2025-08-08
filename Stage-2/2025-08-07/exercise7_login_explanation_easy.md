# Exercise 7: Login with Array Check – Easy JavaScript Explanation

## HTML Structure (given)
```html
<input type="password" id="passwordInput" placeholder="Enter password">
<button onclick="login()">Log In</button>
<p id="message"></p>
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

## Step-by-Step Easy Explanation

### 1. Two lists (arrays)
```javascript
const names = ["Eva", "Qiff", "Safa", "Dayan"];
const passwords = ["password123", "123456", "abcdefg", "forgotpassword"];
```
- We have **two lists**: one with **names** and one with **matching passwords**.  
- The position of the name matches the position of the password.  
  Example: "Eva" (0) ↔ "password123" (0).

---

### 2. The `login` function
```javascript
function login() {
```
- A **function** is like a small program.  
- This one runs when we click the "Log In" button.

---

### 3. Get what the user typed
```javascript
const inputPassword = document.getElementById("passwordInput").value;
```
- Looks at the password box in the page.  
- **`.value`** means "what the user typed".  
- Saves it in `inputPassword`.

---

### 4. Find where to show the message
```javascript
const messageDisplay = document.getElementById("message");
```
- Finds the `<p>` tag where we will write "Welcome" or "Unknown password".

---

### 5. Check if password exists
```javascript
const index = passwords.indexOf(inputPassword);
```
- **`indexOf`** looks in the passwords list.  
- If found → gives the position number (0, 1, 2...).  
- If not found → gives `-1`.

---

### 6. Wrong password
```javascript
if (index < 0) {
  messageDisplay.textContent = "Unknown password. Try again.";
}
```
- If the number is less than 0 → password is not there.  
- Shows: "Unknown password. Try again."

---

### 7. Correct password
```javascript
else {
  messageDisplay.textContent = "Welcome, " + names[index] + "!";
}
```
- Finds the name in the same position as the password.  
- Shows: `"Welcome, [Name]!"`.

---

✅ This code checks the password, finds the matching name, and shows the right message.

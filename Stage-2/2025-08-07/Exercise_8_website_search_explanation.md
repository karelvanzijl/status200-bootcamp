# Website Search – Easy JavaScript Explanation

## HTML Structure (given)
```html
<!DOCTYPE html>
<html>
  <head>
    <title>Document</title>
  </head>
  <body>
    <h2>Website Search</h2>

    <input type="text" id="searchTerm" placeholder="Enter term" />
    <button onclick="searchWebsites()">Search</button>

    <p id="result"></p>
</body>
</html>
```

---

## JavaScript Code
```javascript
const websites = ["google", "facebook", "youtube", "amazon", "twitter"];

function searchWebsites() {
  const input = document.getElementById("searchTerm").value;
  const result = document.getElementById("result");

  let output = "";

  for (let i = 0; i < websites.length; i++) {
    let website = websites[i];

    // Check for match using indexOf
    if (website.indexOf(input) !== -1) {
      output += website;
    }

    // shorter way using .includes function
    /*
    if (website.includes(input)) {
      output += website;
    }
    */
  }

  // Show result based on whether matches were found
  if (output !== "") {
    result.textContent = "matching webstes: " + output;
  } else {
    result.textContent = "noooo matching websites found";
  }
}
```

---

## Step-by-Step Easy Explanation

### 1. List of websites
```javascript
const websites = ["google", "facebook", "youtube", "amazon", "twitter"];
```
- This is a **list** of website names.  
- We will search inside this list.

---

### 2. The `searchWebsites` function
```javascript
function searchWebsites() {
```
- This small program runs when the **Search** button is clicked.

---

### 3. Get what the user typed
```javascript
const input = document.getElementById("searchTerm").value;
```
- Looks at the text box.  
- **`.value`** means "what the user typed".  
- Saves it in `input`.

---

### 4. Find the place to show results
```javascript
const result = document.getElementById("result");
```
- Finds the `<p>` tag where we will show the answer.

---

### 5. Prepare a place for matches
```javascript
let output = "";
```
- Starts with an empty string.  
- We will add matching website names here.

---

### 6. Loop through the list
```javascript
for (let i = 0; i < websites.length; i++) {
  let website = websites[i];
```
- Goes through each website in the list, one by one.  
- `website` stores the current website name.

---

### 7. Check if it matches
```javascript
if (website.indexOf(input) !== -1) {
  output += website;
}
```
- **`indexOf`** looks for the typed word inside the website name.  
- If it finds it → gives a number (position).  
- If it does not → gives `-1`.  
- `!== -1` means: "I found a match!"  
- Add the matching name to `output`.

---

### 8. (Alternative way – includes)
```javascript
// if (website.includes(input)) {
//   output += website;
// }
```
- **`includes`** does the same as `indexOf` but is shorter to write.  
- This is just another option.

---

### 9. Show results
```javascript
if (output !== "") {
  result.textContent = "matching webstes: " + output;
} else {
  result.textContent = "noooo matching websites found";
}
```
- If `output` is not empty → show the matches.  
- If empty → say "no matching websites found".

---

✅ This code checks each website name, sees if it contains the word typed by the user, and shows the result.

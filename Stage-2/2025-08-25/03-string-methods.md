# String Methods: Working with Text in JavaScript

## What Are String Methods?

String methods are built-in functions that help you work with text. Just like how you can `push()` items to an array, you can use methods to transform, search, and manipulate strings.

```javascript
const text = "Hello World";

// These are all string methods:
console.log(text.toUpperCase()); // "HELLO WORLD"
console.log(text.length); // 11 (property, not method)
console.log(text.charAt(0)); // "H"
```

---

## Basic String Information

### `.length` - Get String Length
```javascript
const name = "Alice";
const message = "Hello World!";

console.log(name.length); // 5
console.log(message.length); // 12

// Useful for validation
const password = "12345";
if (password.length < 8) {
    console.log("Password too short!"); // This will run
}
```

### `.charAt()` - Get Character at Position
```javascript
const word = "JavaScript";

console.log(word.charAt(0)); // "J" (first character)
console.log(word.charAt(1)); // "a" (second character)
console.log(word.charAt(4)); // "S"
console.log(word.charAt(9)); // "t" (last character)

// What happens if position doesn't exist?
console.log(word.charAt(50)); // "" (empty string, not an error)
```

---

## Case Conversion Methods

### `.toUpperCase()` - Make Everything Uppercase
```javascript
const name = "alice smith";
const shout = "hello world";

console.log(name.toUpperCase()); // "ALICE SMITH"
console.log(shout.toUpperCase()); // "HELLO WORLD"

// Common use: comparing user input
const userInput = "YES";
const expected = "yes";
console.log(userInput.toLowerCase() === expected); // true
```

### `.toLowerCase()` - Make Everything Lowercase
```javascript
const name = "JOHN DOE";
const mixed = "HeLLo WoRLd";

console.log(name.toLowerCase()); // "john doe"
console.log(mixed.toLowerCase()); // "hello world"

// Useful for consistent comparisons
const email1 = "USER@EMAIL.COM";
const email2 = "user@email.com";
console.log(email1.toLowerCase() === email2.toLowerCase()); // true
```

---

## Finding Things in Strings

### `.indexOf()` - Find Position of Text
```javascript
const text = "Hello World";

console.log(text.indexOf("H")); // 0 (found at position 0)
console.log(text.indexOf("o")); // 4 (first "o" found at position 4)
console.log(text.indexOf("World")); // 6 (starts at position 6)
console.log(text.indexOf("xyz")); // -1 (not found)

// Check if something exists in a string
const email = "user@gmail.com";
if (email.indexOf("@") !== -1) {
    console.log("Valid email format"); // This will run
}
```

### `.includes()` - Check if Text Exists (True/False)
```javascript
const sentence = "I love JavaScript programming";

console.log(sentence.includes("love")); // true
console.log(sentence.includes("JavaScript")); // true
console.log(sentence.includes("Python")); // false
console.log(sentence.includes("java")); // false (case sensitive!)

// More readable than indexOf
const url = "https://www.google.com";
if (url.includes("https")) {
    console.log("Secure website"); // This will run
}
```

---

## Extracting Parts of Strings

### `.slice()` - Get a Piece of String
```javascript
const text = "JavaScript";

console.log(text.slice(0, 4)); // "Java" (from position 0 to 4, not including 4)
console.log(text.slice(4)); // "Script" (from position 4 to end)
console.log(text.slice(2, 6)); // "vaSc"
console.log(text.slice(-6)); // "Script" (negative = from end)

// Common use: getting file extension
const filename = "document.pdf";
const extension = filename.slice(-3);
console.log(extension); // "pdf"
```

### `.substring()` - Similar to slice() 
```javascript
const word = "Programming";

console.log(word.substring(0, 7)); // "Program"
console.log(word.substring(7)); // "ming"
console.log(word.substring(2, 5)); // "ogr"

// Main difference: substring doesn't work with negative numbers
console.log(word.slice(-4)); // "ming"
console.log(word.substring(-4)); // "Programming" (treats negative as 0)
```

---

## String Cleanup Methods

### `.trim()` - Remove Spaces from Start and End
```javascript
const messy = "   Hello World   ";
const userInput = "  alice@email.com  ";

console.log(messy.trim()); // "Hello World"
console.log(userInput.trim()); // "alice@email.com"

// Very useful for user input
const username = document.getElementById("username").value.trim();
if (username === "") {
    console.log("Please enter a username");
}
```

### `.replace()` - Replace Text
```javascript
const text = "I love cats";
const phone = "123-456-7890";

console.log(text.replace("cats", "dogs")); // "I love dogs"
console.log(phone.replace("-", "")); // "123456-7890" (only replaces FIRST occurrence)

// To replace ALL occurrences, use replaceAll()
console.log(phone.replaceAll("-", "")); // "1234567890"

// Common use: cleaning data
const messy = "Hello...World...JavaScript";
const clean = messy.replaceAll("...", " ");
console.log(clean); // "Hello World JavaScript"
```

---

## Converting Strings to Arrays

### `.split()` - Break String into Array
```javascript
const sentence = "apple,banana,orange";
const words = "Hello World JavaScript";
const csv = "John,25,Engineer";

console.log(sentence.split(",")); // ["apple", "banana", "orange"]
console.log(words.split(" ")); // ["Hello", "World", "JavaScript"]
console.log(csv.split(",")); // ["John", "25", "Engineer"]

// Get each character
const name = "Alice";
console.log(name.split("")); // ["A", "l", "i", "c", "e"]

// Very useful for processing data
const email = "user@gmail.com";
const parts = email.split("@");
console.log(parts[0]); // "user" (username)
console.log(parts[1]); // "gmail.com" (domain)
```

---

## Real-World Examples

### Example 1: Processing User Names
```javascript
const fullName = "  john doe  ";

// Clean up and format name
const cleaned = fullName.trim(); // "john doe"
const words = cleaned.split(" "); // ["john", "doe"]
const firstName = words[0].charAt(0).toUpperCase() + words[0].slice(1); // "John"
const lastName = words[1].charAt(0).toUpperCase() + words[1].slice(1); // "Doe"
const formatted = firstName + " " + lastName; // "John Doe"

console.log(formatted); // "John Doe"
```

### Example 2: Email Validation
```javascript
const email = "USER@GMAIL.COM";

// Basic email checking
const emailLower = email.toLowerCase(); // "user@gmail.com"
const hasAt = emailLower.includes("@"); // true
const parts = emailLower.split("@"); // ["user", "gmail.com"]
const username = parts[0]; // "user"
const domain = parts[1]; // "gmail.com"

if (hasAt && username.length > 0 && domain.includes(".")) {
    console.log("Email looks valid!"); // This will run
} else {
    console.log("Invalid email");
}
```

### Example 3: Phone Number Formatting
```javascript
const phone = "(555) 123-4567";

// Remove all non-numbers
const digitsOnly = phone.replaceAll("(", "")
                       .replaceAll(")", "")
                       .replaceAll("-", "")
                       .replaceAll(" ", ""); // "5551234567"

console.log(digitsOnly); // "5551234567"
console.log(digitsOnly.length === 10); // true (valid US phone number length)
```

### Example 4: Creating Initials
```javascript
const names = ["John Smith", "Mary Jane Watson", "Bob Wilson"];

names.forEach(name => {
    const words = name.split(" "); // ["John", "Smith"]
    const initials = words.map(word => word.charAt(0)).join(""); // "JS"
    console.log(name + " -> " + initials);
});

// Output:
// John Smith -> JS
// Mary Jane Watson -> MJW
// Bob Wilson -> BW
```

### Example 5: Search Functionality
```javascript
const products = ["iPhone 12", "Samsung Galaxy", "Google Pixel", "iPhone 13"];
const searchTerm = "iphone"; // user input

const results = products.filter(product => 
    product.toLowerCase().includes(searchTerm.toLowerCase())
);

console.log(results); // ["iPhone 12", "iPhone 13"]
```

---

## String Methods vs Array Methods

Just like arrays have methods, strings do too! But they work differently:

```javascript
// Array methods CHANGE the array
const fruits = ["apple", "banana"];
fruits.push("orange"); // fruits is now ["apple", "banana", "orange"]

// String methods DON'T change the original string
const text = "hello";
const upper = text.toUpperCase(); // "HELLO"
console.log(text); // Still "hello" (unchanged!)
console.log(upper); // "HELLO" (new string)
```

**Important**: Strings are **immutable** - they can't be changed. String methods always return NEW strings.

---

## Common Patterns You'll Use

### Pattern 1: Input Validation and Cleanup
```javascript
function cleanInput(userInput) {
    return userInput.trim().toLowerCase();
}

const username = cleanInput("  ALICE123  "); // "alice123"
const email = cleanInput("  USER@EMAIL.COM  "); // "user@email.com"
```

### Pattern 2: Text Processing
```javascript
function formatName(fullName) {
    const words = fullName.trim().toLowerCase().split(" ");
    return words.map(word => 
        word.charAt(0).toUpperCase() + word.slice(1)
    ).join(" ");
}

console.log(formatName("john doe")); // "John Doe"
console.log(formatName("MARY JANE")); // "Mary Jane"
```

### Pattern 3: Search and Filter
```javascript
function searchProducts(products, searchTerm) {
    const term = searchTerm.toLowerCase();
    return products.filter(product => 
        product.toLowerCase().includes(term)
    );
}

const items = ["Apple iPhone", "Samsung Galaxy", "Google Pixel"];
const results = searchProducts(items, "apple"); // ["Apple iPhone"]
```

### Pattern 4: Data Extraction
```javascript
function parseEmail(email) {
    const parts = email.toLowerCase().split("@");
    return {
        username: parts[0],
        domain: parts[1]
    };
}

const info = parseEmail("USER@GMAIL.COM");
console.log(info); // { username: "user", domain: "gmail.com" }
```

---

## Most Useful String Methods Summary

1. **`.length`** - Get string length (property, not method)
2. **`.toUpperCase()`** - Convert to uppercase
3. **`.toLowerCase()`** - Convert to lowercase  
4. **`.trim()`** - Remove spaces from start/end
5. **`.includes()`** - Check if text exists (true/false)
6. **`.indexOf()`** - Find position of text (-1 if not found)
7. **`.slice()`** - Extract part of string
8. **`.split()`** - Convert string to array
9. **`.replace()`** - Replace text (first occurrence)
10. **`.replaceAll()`** - Replace all occurrences

---

## When to Use Each Method

### Use `.includes()` when:
- You just need to know if something exists
- Building search functionality
- Validating input contains certain text

### Use `.indexOf()` when:
- You need the exact position
- You want to extract text before/after a certain point
- Working with older JavaScript (includes() is newer)

### Use `.slice()` when:
- Extracting parts of strings
- Getting file extensions
- Working with known positions

### Use `.split()` when:
- Converting CSV data to arrays
- Breaking sentences into words
- Parsing email addresses or URLs

### Use `.trim()` when:
- Processing user input
- Cleaning data from forms
- Removing accidental spaces

Remember: String methods return NEW strings - they don't change the original!
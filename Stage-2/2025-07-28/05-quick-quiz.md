## Navigation

1. [Overview](readme.md)
2. [JavaScript Introduction](01-javascript-introduction.md)
3. [JavaScript in HTML](./02-javascript-in-browser.md)
4. [JavaScript Variables](./03-javascript-variables.md)
5. [JavaScript Functions](./04-javascript-functions.md)
6. [Quick Quiz](./05-quick-quiz.md) ← _You are here_
7. [Exercise: change text](./06-exercise-and-html.md)
8. [Exercise: speed calculator](./07-exercise-speed-calculator.md)

---

# Quick Quiz - JavaScript Fundamentals

## Instructions:

**1. Raise your hand if you know the answer**

-   If you raise your hand, be ready to share your answer.

**2. If you don't know the answer, keep your hand down**

-   Be honest - it's okay not to know everything yet!

**3. Don't worry if you're unsure**

-   We'll discuss every answer together!

---

## Quiz Questions with Answers

### JavaScript Basics

**Question 1:** In web development, what is JavaScript primarily responsible for?

-   a) Structure of the web page
-   b) Styling and appearance
-   c) Functionality and interactivity
-   d) Database management

**Answer: c) Functionality and interactivity**

**Explanation:** Using the house analogy: HTML provides structure (walls, roof), CSS provides style (paint, decorations), and JavaScript provides functionality (plumbing, electrical systems). JavaScript makes web pages interactive and dynamic.

---

**Question 2:** Which JavaScript engine does Google Chrome use?

-   a) SpiderMonkey
-   b) V8
-   c) JavaScriptCore
-   d) Chakra

**Answer: b) V8**

**Explanation:** Each browser has its own JavaScript engine. Chrome uses V8, Firefox uses SpiderMonkey, and Safari uses JavaScriptCore. These engines interpret and execute JavaScript code.

---

**Question 3:** What is the preferred way to include JavaScript in larger projects?

-   a) Inline JavaScript in HTML attributes
-   b) Internal JavaScript in `<script>` tags
-   c) External JavaScript files linked with `<script src="...">`
-   d) All methods are equally preferred

**Answer: c) External JavaScript files linked with `<script src="...">`**

**Explanation:** External JavaScript files follow the "Separation of Concerns" principle, keeping HTML, CSS, and JavaScript in separate files. This makes code more organized and maintainable.

---

### Variable Declaration

**Question 4:** Which of the following is the correct way to declare a variable in modern JavaScript?

-   a) `var name = "John";`
-   b) `let name = "John";`
-   c) `const name = "John";`
-   d) Both b and c

**Answer: d) Both b and c**

**Explanation:** Both `let` and `const` are modern ways to declare variables in JavaScript. `var` is outdated and not recommended due to scope issues. Use `let` for variables that can be reassigned and `const` for variables that cannot be reassigned.

---

**Question 5:** What will happen when you run this code?

```javascript
const pi;
console.log(pi);
```

-   a) It will output `undefined`
-   b) It will output `null`
-   c) It will cause a syntax error
-   d) It will output an empty string

**Answer: c) It will cause a syntax error**

**Explanation:** `const` variables must be initialized (assigned a value) when they are declared. The error message will be "SyntaxError: Missing initializer in const declaration". You cannot declare a `const` variable without assigning it a value immediately.

---

### Variable Naming Rules

**Question 6:** Which of these variable names is INVALID in JavaScript?

-   a) `firstName`
-   b) `first_name`
-   c) `1stName`
-   d) `firstName$`

**Answer: c) `1stName`**

**Explanation:** Variable names cannot start with a number. They must start with a letter, underscore (\_), or dollar sign ($). Numbers can be used in variable names, but not as the first character.

---

**Question 7:** Are these two variables the same in JavaScript?

```javascript
let myVariable = "John";
let myvariable = "Doe";
```

-   a) Yes, they are the same
-   b) No, they are different variables

**Answer: b) No, they are different variables**

**Explanation:** JavaScript is case-sensitive, so `myVariable` and `myvariable` are completely different variables. The capitalization matters in variable names.

---

### Let vs Const

**Question 8:** What will be the output of this code?

```javascript
let name;
console.log(name);
```

-   a) `null`
-   b) `undefined`
-   c) An error
-   d) An empty string

**Answer: b) `undefined`**

**Explanation:** When a variable is declared with `let` but not assigned a value, it automatically gets the value `undefined`. This is JavaScript's way of indicating that a variable has been declared but not yet assigned a value.

---

**Question 9:** What will happen when you run this code?

```javascript
const name = "John";
name = "Jane";
console.log(name);
```

-   a) It will output "Jane"
-   b) It will output "John"
-   c) It will cause a TypeError
-   d) It will cause a SyntaxError

**Answer: c) It will cause a TypeError**

**Explanation:** Variables declared with `const` cannot be reassigned. Attempting to reassign a `const` variable will result in a "TypeError: Assignment to constant variable." error.

---

### Variable Analogy

**Question 10:** According to the box analogy for variables, what does the "label" represent?

-   a) The value stored in the variable
-   b) The memory location
-   c) The variable name
-   d) The data type

**Answer: c) The variable name**

**Explanation:** In the box analogy, the variable name is like a label on a box. The box itself represents the storage location in memory, and the item inside represents the value stored in the variable.

---

### Best Practices

**Question 11:** Which variable name follows JavaScript naming conventions best?

-   a) `first_name`
-   b) `firstname`
-   c) `firstName`
-   d) `FirstName`

**Answer: c) `firstName`**

**Explanation:** JavaScript uses `camelCase` naming convention for variables. This means the **_first word starts with a lowercase letter_**, and _**each subsequent word starts with an uppercase letter**_. This makes multi-word variable names easy to read.

---

**Question 12:** When should you use `const` instead of `let`?

-   a) When the variable will never change
-   b) When the variable contains a number
-   c) When the variable is declared inside a function
-   d) When the variable name is short

**Answer: a) When the variable will never change**

**Explanation:** Use `const` for variables that will not be reassigned after their initial declaration. This makes your code more predictable and prevents accidental reassignment. Use `let` for variables that may need to be reassigned later.

---

### JavaScript Functions

**Question 13:** What is a function in JavaScript?

-   a) A type of variable that stores numbers
-   b) A reusable block of code designed to perform a specific task
-   c) A way to style HTML elements
-   d) A method to create HTML tags

**Answer: b) A reusable block of code designed to perform a specific task**

**Explanation:** Functions are fundamental building blocks in JavaScript that allow us to organize code into reusable pieces. They can take inputs (parameters) and can return values.

---

**Question 14:** What is the correct way to define a function in JavaScript?

-   a) `function myFunction[] { }`
-   b) `function myFunction() { }`
-   c) `function myFunction<> { }`
-   d) `function myFunction; { }`

**Answer: b) `function myFunction() { }`**

**Explanation:** Functions are defined using the `function` keyword, followed by the function name, parentheses (which may contain parameters), and curly braces containing the function body.

---

**Question 15:** What is the difference between parameters and arguments?

-   a) There is no difference, they are the same thing
-   b) Parameters are used in function calls, arguments are used in function definitions
-   c) Parameters are variables in the function definition, arguments are values passed when calling
-   d) Parameters are for numbers, arguments are for strings

**Answer: c) Parameters are variables in the function definition, arguments are values passed when calling**

**Explanation:** Parameters are variables listed in the function definition, while arguments are the actual values passed to the function when it is called.

---

**Question 16:** What happens when you try to access a function parameter outside the function?

-   a) It returns the last value used
-   b) It returns `undefined`
-   c) It throws a `ReferenceError`
-   d) It returns `null`

**Answer: c) It throws a `ReferenceError`**

**Explanation:** Function parameters only exist inside the function body. Trying to access them outside the function will result in a "ReferenceError: [parameter] is not defined" error.

---

**Question 17:** What is the difference between void functions and value functions?

-   a) Void functions use `let`, value functions use `const`
-   b) Void functions perform tasks without returning values, value functions return values
-   c) Void functions are faster, value functions are slower
-   d) There is no difference

**Answer: b) Void functions perform tasks without returning values, value functions return values**

**Explanation:** Void functions perform tasks (like logging messages or updating UI) but don't return values. Value functions perform calculations or operations and return results using the `return` keyword.

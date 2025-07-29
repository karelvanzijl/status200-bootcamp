# Switch ... Case Statement in JavaScript

We already know how to use `if ... else` statements and the ternary operator to handle conditions in JavaScript. Now, let's explore another powerful way to manage multiple conditions: the `switch ... case` statement.

## What is a `switch ... case` Statement?

The `switch ... case` statement is a powerful way to handle multiple conditions in JavaScript. It's often cleaner and more readable than using multiple `if ... else` statements, especially when you have many conditions to check.

## Basic Structure

```javascript
switch (expression) {
    case value1:
        // Code to run if expression matches value1
        break;
    case value2:
        // Code to run if expression matches value2
        break;
    // More cases as needed
    default:
    // Code to run if no cases match
}
```

**Breakdown:**

-   `switch (expression)`: This checks the value of `expression` against the cases.
-   `case value1`: If `expression` matches `value1`, the code inside this block runs.
-   `break`: This stops the execution of the switch statement. If you omit `break`, the code will continue to run into the next case, which is often not what you want.
-   `default`: This block runs if none of the cases match. It's like the `else` in an `if ... else` statement.

## Examples

```javascript
let day = "Monday";

switch (day) {
    case "Monday":
        console.log("Start of the week!");
        break;
    case "Friday":
        console.log("Almost weekend!");
        break;
    case "Saturday":
    case "Sunday":
        console.log("It's the weekend!");
        break;
    default:
        console.log("Just another day.");
}
```

**Code Breakdown:**

-   We declare a variable `day` and assign it the value `"Monday"`.
-   The `switch` statement checks the value of `day`.
-   If `day` is `"Monday"`, it prints "Start of the week!"
-   If `day` is `"Friday"`, it prints "Almost weekend!"
-   If `day` is `"Saturday"` or `"Sunday"`, it prints "It's the weekend!"
-   If `day` is anything else, it prints "Just another day."

**Code block**

Just like with the `if ... else` statement, if there are more than one operation that should be performed for a case, you can use curly braces `{}` to group them together.

```javascript
switch (day) {
    case "Monday": {
        console.log("Welcome");
        console.log("Start of the week!");
        break;
    }
    case "Friday": {
        console.log("Welcome");
        console.log("Almost weekend!");
        break;
    }
    case "Saturday":
    case "Sunday": {
        console.log("Welcome");
        console.log("It's the weekend!");
        break;
    }
    default: {
        console.log("Welcome");
        console.log("Just another day.");
        break;
    }
}
```

### Compared to `if ... else` statement

```javascript
let day = "Monday";

if (day === "Monday") {
    console.log("Start of the week!");
} else if (day === "Friday") {
    console.log("Almost weekend!");
} else if (day === "Saturday" || day === "Sunday") {
    console.log("It's the weekend!");
} else {
    console.log("Just another day.");
}
```

Which one is easier to read? The `switch ... case` statement is often more straightforward when dealing with multiple conditions. There's no good or wrong, you can use either based on your preference and the complexity of your conditions.

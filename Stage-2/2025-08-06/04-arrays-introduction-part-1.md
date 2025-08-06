## Navigation

1. [Overview](readme.md)
2. [Return Statement](./01-return-statement.md)
3. [Function Arguments & Parameters](./02-function-arguments-parameters.md)
4. [Nested Functions](./03-nested-function-call.md)
5. [Arrays Introduction Part 1](./04-arrays-introduction-part-1.md) ← _You are here_

---

# Arrays Introduction Part 1

## Primitive Types

Do you remember the "Primitive Types" section? In that section, we learned about the basic data types in JavaScript, such as:

-   `string`
-   `number`
-   `boolean`
-   `null`
-   `undefined`
-   `NaN`

## Reference Types

In addition to primitive types, JavaScript has **reference types**. These are more complex data structures that can hold multiple values or more complex entities. We're going to learn about two of the most used reference types:

-   **arrays**
-   **objects**

## Arrays

In this section, we will focus on **arrays**. An array is a special type of variable that allows you to store multiple values in a single variable. Arrays are ordered collections, meaning that the values are stored in a specific sequence.

### Metaphor

#### OMG, That sounds crazy complex 🤯 💥

Don't worry! Let's break it down with a simple metaphor.

Imagine a drawer. Inside this drawer, you have dividers that separates the drawer into compartments. Each compartment can hold a different item, like a book, a pen, or a notebook.

```
My Drawer

+-----------------------------------------------------+
| Item 1: Book                                        | <-- compartment 0 (1st)
+-----------------------------------------------------+
| Item 2: Pen                                         | <-- compartment 1 (2nd)
+-----------------------------------------------------+
| Item 3: Notebook                                    | <-- compartment 2 (3rd)
+-----------------------------------------------------+
| Item 4: Eraser                                      | <-- compartment 3 (4th)
+-----------------------------------------------------+
| Item 5: Sticky Notes                                | <-- compartment 4 (5th)
+-----------------------------------------------------+
```

If I would ask you to get the second item in the drawer, you would say "the pen". You would have no problem finding it because you know it's in the second compartment.

If I would ask you to get the fourth item, you would say "the eraser". Again, you can easily find it because you know it's in the fourth compartment.

**This is how arrays work in JavaScript:** Each item in the array is stored in a specific position, called an **index**. The first item is at index `0`, the second item is at index `1`, and so on.

### Creating an Array

To create an array in JavaScript, you can use square brackets `[]`. Here's how you can create an array with some items:

```javascript
let myDrawer = ["Book", "Pen", "Notebook", "Eraser", "Sticky Notes"];
```

You can also create an empty array like this:

```javascript
let myDrawer = [];
```

### Accessing Items in an Array

To access items in an array, you use the index of the item you want to retrieve.

_Remember_, the **first item is at index `0`**, the **second item is at index `1`**, and so on.

Lets do the same as in the drawer metaphor. If you want to get the second item (the pen), you would do it like this:

```javascript
let myDrawer = ["Book", "Pen", "Notebook", "Eraser", "Sticky Notes"];
let secondItem = myDrawer[1]; // Accessing the second item
console.log(secondItem); // Output: Pen
```

If you want to get the fourth item (the eraser), you would do it like this:

```javascript
let myDrawer = ["Book", "Pen", "Notebook", "Eraser", "Sticky Notes"];
let fourthItem = myDrawer[3]; // Accessing the fourth item
console.log(fourthItem); // Output: Eraser
```

### Array Length

You can find out how many items are in an array using the `.length` property. This property returns the number of items in the array.

Compare it to counting the compartments in your drawer. If you have 5 compartments, the length of your array is 5.

```javascript
let myDrawer = ["Book", "Pen", "Notebook", "Eraser", "Sticky Notes"];
let drawerLength = myDrawer.length; // Getting the length of the array
console.log(drawerLength); // Output: 5
```

### Adding Items to an Array

You can add items to an array using the `.push()` method. This method adds a new item to the end of the array.

It's like a special drawer where you can keep adding new compartments for new items. Each time you add a new item, the drawer gets a new compartment.

```javascript
let myDrawer = [
    "Book",
    "Pen",
    "Notebook",
    "Eraser",
    "Sticky Notes",
    "Highlighter",
];

myDrawer.push("Highlighter"); // Adding a new item to the array

console.log(myDrawer);

// Output: ["Book", "Pen", "Notebook", "Eraser", "Sticky Notes", "Highlighter"]
```

### Removing Items from an Array

You can remove the last item from an array using the `.pop()` method. This method removes the last item from the array and returns it.

```javascript
let myDrawer = [
    "Book",
    "Pen",
    "Notebook",
    "Eraser",
    "Sticky Notes",
    "Highlighter",
];
let removedItem = myDrawer.pop(); // Removing the last item
console.log(removedItem); // Output: Highlighter
console.log(myDrawer); // Output: ["Book", "Pen", "Notebook", "Eraser", "Sticky Notes"]
```

### Finding an Item in an Array

If you want to find an item in an array, you can use the `.indexOf()` method. This method returns the index of the first occurrence of the specified item in the array.

If the item is not found, it returns `-1`.

```javascript
let myDrawer = ["Book", "Pen", "Notebook", "Eraser", "Sticky Notes"];
let indexOfPen = myDrawer.indexOf("Pen"); // Finding the index of "Pen"
console.log(indexOfPen); // Output: 1
```

# Examples

Follow these examples to see how arrays work in practice.

## Example 1: Creating an Array

```javascript
// Not myFrouts, but a similar example
let myHobbies = ["Reading", "Gaming", "Cooking"];

console.log(myHobbies);
// Output: ["Reading", "Gaming", "Cooking"]
```

## Example 2: Accessing Items

```javascript
let myHobbies = ["Reading", "Gaming", "Cooking"];
console.log(myHobbies[2]); // Accessing the third item
console.log(myHobbies[1]); // Accessing the second item
```

## Example 3: Accessing Items by Index

```javascript
let myHobbies = ["Reading", "Gaming", "Cooking"];
let firstHobby = myHobbies[0]; // Accessing the first item
let secondHobby = myHobbies[1]; // Accessing the second item

console.log(firstHobby); // Output: Reading
console.log(secondHobby); // Output: Gaming
```

## Example 4: Array Length

```javascript
let myHobbies = ["Reading", "Gaming", "Cooking"];
let hobbiesLength = myHobbies.length; // Getting the length of the array
console.log(hobbiesLength); // Output: 3
```

## Example 5: Adding Items

```javascript
let myHobbies = ["Reading", "Gaming", "Cooking"];
myHobbies.push("Hiking"); // Adding a new hobby to the array
console.log(myHobbies);
// Output: ["Reading", "Gaming", "Cooking", "Hiking"]
```

## Example 6: Removing the Last Item

```javascript
let myHobbies = ["Reading", "Gaming", "Cooking", "Hiking"];
let removedHobby = myHobbies.pop(); // Removing the last item
console.log(removedHobby); // Output: Hiking
console.log(myHobbies); // Output: ["Reading", "Gaming", "Cooking"]
```

## Example 7: Accessing the Last Item

```javascript
let myHobbies = ["Reading", "Gaming", "Cooking"];
let lastHobby = myHobbies[myHobbies.length - 1]; // Accessing the last item
console.log(lastHobby); // Output: Cooking
```

## Example 8: Changing an Item

```javascript
let myHobbies = ["Reading", "Gaming", "Cooking"];
myHobbies[1] = "Drawing"; // Changing the second item
console.log(myHobbies); // Output: ["Reading", "Drawing", "Cooking"]
```

## Example 8: Using 2 Arrays Together

```javascript
let myPassword = ["password1", "password2", "password3"];
let myUsers = ["Karel", "Safa", "Khalid"];

// Pretend we have a function that checks the password for each user
// If the password matches, we can log the user name

function checkPassword(password) {
    if (myPassword[0] === password) {
        console.log(myUsers[0]); // Output: Karel
        return;
    }
    if (myPassword[1] === password) {
        console.log(myUsers[1]); // Output: Safa
        return;
    }
    if (myPassword[2] === password) {
        console.log(myUsers[2]); // Output: Khalid
        return;
    }
    console.log("Password not found");
}

checkPassword("password1"); // Output: Karel
checkPassword("password2"); // Output: Safa
checkPassword("password3"); // Output: Khalid
checkPassword("password4"); // Output: Password not found
```

## Example 9: same as above, but with `indexOf()`

```javascript
let myPassword = ["password1", "password2", "password3"];
let myUsers = ["Karel", "Safa", "Khalid"];

// Pretend we have a function that checks the password for each user
// If the password matches, we can log the user name

function checkPassword(password) {
    if (myPassword.includes(password)) {
        let index = myPassword.indexOf(password);
        console.log(myUsers[index]); // Output: Karel, Safa, or Khalid
        return;
    }
    console.log("Password not found");
}

checkPassword("password1"); // Output: Karel
checkPassword("password2"); // Output: Safa
checkPassword("password3"); // Output: Khalid
checkPassword("password4"); // Output: Password not found
```

## Example 10: Keep track of history

```javascript
let messageHistory = [];

function displayMessage(name) {
    // Create a message using the name
    let message = "Hi " + name + ", how are you?";

    // Add the message to the history
    messageHistory.push(message);

    // Display the message
    console.log(message);
}

function displayHistory() {
    // Display all messages in the history
    console.log(messageHistory);
}

displayMessage("Karel"); // Output: Hi Karel, how are you?
displayMessage("Safa"); // Output: Hi Safa, how are you?
displayMessage("Khalid"); // Output: Hi Khalid, how are you?

displayHistory(); // Output: ["Hi Karel, how are you?", "Hi Safa, how are you?", "Hi Khalid, how are you?"]
```

---

# Exercises

## Exercise 1: Create Your Own Array

Create an array called `myFruits` that contains the names of your three favorite fruits. Then, print the array to the console.

## Exercise 2: Accessing Items

Access the second and third items in your `myFruits` array and print them to the console.

## Exercise 3: Array Length

Find out how many items are in your `myFruits` array and print the length to the console.

## Exercise 4: Adding Items

Add a new fruit to your `myFruits` array using the `.push()` method. Print the updated array to the console.

## Exercise 5: Accessing the Last Item

Access the last item in your `myFruits` array and print it to the console. Remember, you can use the `.length` property to find the index of the last item.

## Exercise 6: Changing an Item

Change the second item in your `myFruits` array to a different fruit. Print the updated array to the console.

## Exercise 7: Using Two Arrays Together

Create two arrays: `myBooks` and `myAuthors`. The `myBooks` array should contain the names of three books, and the `myAuthors` array should contain the names of the authors of those books. Write a function that takes a book name as an argument and prints the corresponding author.

## Exercise 8: Finding an Item

Create an array called `myColors` that contains the names of your three favorite colors. Write a function that takes a color name as an argument and checks if it exists in the `myColors` array. If it exists, print the index of the color; if not, print "Color not found".

## Exercise 9: Keep Track of History

Create an empty array called `history`. Write a function that takes a message as an argument, adds it to the `history` array, and then prints the message. Also, write another function that prints all messages in the `history` array.

## Exercise 10: Combining Arrays

Create two arrays: `myCities` and `myCountries`. The `myCities` array should contain the names of three cities, and the `myCountries` array should contain the names of the countries those cities are in. Write a function that takes a city name as an argument and prints the corresponding country.

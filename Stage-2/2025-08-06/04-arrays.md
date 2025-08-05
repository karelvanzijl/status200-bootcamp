# Arrays in JavaScript

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

You can add items to an array using the `.push()` method. This method adds a new item to the end of the array, just like putting a new item in the last compartment of your drawer.

```javascript
let myDrawer = ["Book", "Pen", "Notebook", "Eraser", "Sticky Notes"];
myDrawer.push("Highlighter"); // Adding a new item to the array
console.log(myDrawer);

// Output: ["Book", "Pen", "Notebook", "Eraser", "Sticky Notes", "Highlighter"]

// My drawer now has 6 compartments!

let drawerLength = myDrawer.length; // Getting the new length of the array
console.log(drawerLength); // Output: 6
```

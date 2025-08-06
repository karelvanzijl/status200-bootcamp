## Exercise 1: Add Numbers to an Array

Create a webpage with a button. When the user clicks the button:

-   A new number is added to the array.
-   The new number is always 1 higher than the last number in the array.
-   After each click, show the full array and its length on the screen.

**Rules:**

-   Start with an array that contains just one number: [1].
-   When the button is clicked:
    -   Add a new number to the end of the array.
    -   The new number should be the last number + 1.
-   Keep updating the display each time.

## Exercise 2: Remove Last Number from Array

Use the same webpage as Exercise 1. Add a second button that:

-   Removes the last number from the array when clicked.
-   After each click, show the updated array and its length on the screen.
-   Make sure the array does not become empty.
    -   Array should always `1` as its first element (value).

## Exercise 3: Find Index of a Number

Use the same webpage as Exercise 1 & 2. Add a third button that:

-   Allows the user to enter a number in a text box.
-   When the button is clicked, find the index of that number in the array.
-   If the number is found, display its index.
-   If the number is not found, display a message saying "Number not found".

## Exercise 4: Sign Up Form

-   Create a simple sign-up page that allows the user to enter their name.
-   When the user clicks "Sign Up", store the name in an array.
-   Display the names in a list below the form.

## Exercise 5: Unique Names in Sign Up Form

Use the same sign-up form as Exercise 4. Modify it to:

-   Check if the name already exists in the array before adding it.
-   If it exists, show a message saying "Name already exists".
-   If it doesn't exist, add the name to the array and display the updated list of names.

## Exercise 6: Cancel Sign Up

Use the same sign-up form as Exercise 5. Add a "Cancel" button that:

-   Use the same input field we used for the signing up.
-   When the user clicks "Cancel", it searches the array for the name.
-   If the name is found, remove it from the array and display the updated list.
-   If the name is not found, show a message saying "Name not found".

## Exercies 7: Login with Array Check

You will create a simple login system using two arrays:

-   One array stores passwords.
-   The other array stores the matching names for those passwords.

**What to Build:**

-   An input field to type a password.
-   A button to "Log In".
-   When the button is clicked:
    1. Check if the entered password exists in the password array.
    2. If it exists:
        - Find the index of the password.
        - Show a welcome message with the corresponding name from the name array.
        - Example: Welcome, Alice!
    3. If it doesn't exist:
        - Show the message: Unknown password. Try again.

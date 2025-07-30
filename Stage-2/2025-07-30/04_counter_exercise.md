# JavaScript Exercise 4 - Simple Counter

## Setup

### Step 1: Create Project Structure
Use the command prompt to create a new project folder and files.

1. Create a new folder called `simple-counter`
2. Create a subfolder called `js`
3. Create a file `index.html` in the main folder
4. Create a file `scripts.js` in the `js` folder
5. Open the project folder in VS Code

### Step 2: Build the Counter Application

Create a simple counter application that allows users to increase, decrease, and reset a number display.

## Requirements

Your counter application should include:

### HTML Structure
- A page title "Simple Counter"
- A display area that shows the current count (starting at 0)
- Three buttons:
  - An "Increase" button (adds 1 to the counter)
  - A "Decrease" button (subtracts 1 from the counter)
  - A "Reset" button (sets the counter back to 0)

### JavaScript Functionality
- Use a variable to store the current count
- Create functions to handle each button action
- Update the display whenever the count changes
- The counter should be able to go negative

### Styling Requirements
- Center all content on the page
- Make the counter display large and prominent (48px font size)
- Style the counter display with a border and background
- Give each button a different color:
  - Increase button: green background
  - Decrease button: red background
  - Reset button: blue background
- Make buttons large enough for easy clicking (15px padding)

## Key Learning Objectives

This exercise will teach you:
- How to use variables to store changing data
- How to create functions that modify variables
- How to update HTML content with JavaScript
- How to handle button click events
- Basic mathematical operations in JavaScript
- Keeping data and display synchronized

## Testing Your Application

Make sure your counter:
1. Starts at 0 when the page loads
2. Increases by 1 when the increase button is clicked
3. Decreases by 1 when the decrease button is clicked
4. Resets to 0 when the reset button is clicked
5. Can display negative numbers
6. Updates the display immediately after each button click

## Practice Extensions

Once you have the basic counter working, try these additional challenges:

### Exercise 1
Add two new buttons: "Add 5" and "Subtract 5" that change the counter by 5 instead of 1.

### Exercise 2
Add a "Double" button that multiplies the current count by 2. Also add a "Half" button that divides the current count by 2.

*Hint: Use `*` for multiplication and `/` for division. For the half button, you might get decimal numbers!*

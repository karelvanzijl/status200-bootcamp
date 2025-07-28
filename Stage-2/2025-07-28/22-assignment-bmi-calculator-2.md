# Assignment: BMI Calculator 2.0

## Overview

Now that you've learned about **comparison operators**, **logical operators**, and **ternary operators**, it's time to enhance your BMI calculator! You'll extend your existing BMI calculator to include **BMI classification** and health recommendations.

This assignment will test your understanding of:

-   Comparison operators (`<`, `<=`, `>=`, `>`)
-   Logical operators (`&&`, `||`, `!`)
-   Ternary operators (`condition ? true : false`)
-   Building on existing code
-   Conditional logic implementation

## What You'll Add

### BMI Classification System

Your enhanced calculator will classify BMI results into these categories:

| BMI Range      | ClassificationStatus |
| -------------- | -------------------- |
| Less than 18.5 | Underweight          |
| 18.5 - 24.9    | Normal weight        |
| 25.0 - 29.9    | Overweight           |
| 30.0 and above | Obese                |

## Assignment Requirements

### Part 1: Basic Classification (Required)

Extend your existing BMI calculator to:

1. **Keep all existing functionality** - Don't break what already works!
2. **Add BMI classification** - Display the appropriate category (Underweight, Normal weight, Overweight, Obese)

**Example Output:**

-   "Hello Sarah, your BMI is 22.86 - Normal weight"

## Implementation Guide

### Step 1: Use Your Existing Code

**Start with your BMI Calculator from the previous assignment.**

You should already have:

-   HTML form with weight, height, and name inputs
-   JavaScript function that calculates BMI
-   Basic result display

### Step 2: Add Classification Logic

You'll need to add conditional logic to classify the BMI. Here are three different approaches you can use:

#### Approach 1: Using Ternary Operators

The ternary operator allows you to write concise conditional statements. Here's how you can implement. Remember?

`condition` ? `valueIfTrue` : `valueIfFalse`

So if the condition is true, it returns `valueIfTrue`, otherwise it returns `valueIfFalse`.

You can put a series of ternary operators together:

```code
function welcomeMessage(hour) {
    return hour < 12
        ? "Good morning"
        : hour < 18
            ? "Good afternoon"
            : "Good evening";
}
```

Here's what's happening:

-   If `hour` is less than 12, it returns "Good morning". The first condition is true.
-   If `hour` is between 12 and 18, the first condition is false, so it checks the second condition. Which is another ternary operator. In this case the coundition is true, because `hour` is less than 18, so it returns "Good afternoon".
-   If `hour` is 18 or more, both conditions are false, so it returns "Good evening".

#### Approach 2: Using Logical Operators

```javascript
function welcomeMessage(hour) {
    let message = "Good evening"; // Default message
    message = (hour < 12 && "Good morning") || message;
    message = (hour < 18 && "Good afternoon") || message;
    return message;
}
```

### Step 3: Update Your Display Function

Modify your existing script so that it now also displays the classification based on the BMI value. You can use either of the approaches above to determine the category.

## Testing Your Enhanced Calculator

Test your calculator with these values and verify the classifications:

1. **Weight: 50 kg, Height: 1.75 m** → BMI: 16.33 → "Underweight"
2. **Weight: 70 kg, Height: 1.75 m** → BMI: 22.86 → "Normal weight"
3. **Weight: 80 kg, Height: 1.60 m** → BMI: 31.25 → "Obese"
4. **Weight: 75 kg, Height: 1.70 m** → BMI: 25.96 → "Overweight"

## Submission Requirements

### What to Submit:

1. Your enhanced project folder (`bmi-calculator-2`)
    - `index.html`
    - `js/scripts.js`
    - Any CSS files you created
2. Screenshots showing:
    - One result from each BMI category
    - Any bonus features you implemented

### How to Submit:

-   Zip your project folder
-   Include your name in the zip file: `YourName-BMI-Calculator-2.zip`
-   Upload to the course platform

### Deadline:

**Due: Next class session**

## Grading Criteria

| Criteria                   | Points | Description                                |
| -------------------------- | ------ | ------------------------------------------ |
| **Existing Functionality** | 20     | Previous calculator still works correctly  |
| **BMI Classification**     | 30     | Correctly classifies BMI into 4 categories |
| **Enhanced Display**       | 20     | Shows both BMI and classification clearly  |
| **Code Quality**           | 15     | Clean, readable code with proper logic     |
| **Testing**                | 10     | Works correctly with provided test cases   |
| **Documentation**          | 5      | Code has comments explaining the logic     |

**Total: 100 points**

## Technical Requirements

### Must Use:

-   **Comparison operators** for BMI range checking
-   **Logical operators** OR **ternary operators** for classification logic
-   Your existing BMI calculation code as the foundation

### Code Quality Standards:

-   Functions should be small and focused
-   Variable names should be descriptive
-   Add comments explaining your classification logic
-   Test with all four BMI categories

## Common Challenges & Solutions

### Challenge 1: Complex Conditions

**Problem:** The classification logic seems complicated.
**Solution:** Break it down step by step. Start with one category, then add the others.

### Challenge 2: Ternary Operator Confusion

**Problem:** Nested ternary operators are hard to read.
**Solution:** Use parentheses and line breaks for clarity, or try a different approach.

### Challenge 3: Existing Code Breaks

**Problem:** Adding new features breaks the old functionality.
**Solution:** Test your existing code first, then add features incrementally.

### Challenge 4: Edge Cases

**Problem:** What if BMI is exactly 18.5 or 25.0?
**Solution:** Be careful with your comparison operators. Use `<=` and `>=` appropriately.

## Learning Objectives

By completing this assignment, you will:

1. **Apply comparison operators** in real-world scenarios
2. **Use conditional logic** to make decisions in your code
3. **Enhance existing applications** without breaking functionality
4. **Implement classification systems** using JavaScript
5. **Practice code organization** by adding new functions
6. **Understand operator precedence** in complex expressions

## Need Help?

### During Development:

-   Test each BMI category individually
-   Use `console.log()` to debug your classification logic
-   Ask classmates about their approach to the classification

### Resources:

-   Review comparison operators lesson
-   Check ternary operator examples
-   Look at logical operators for inspiration
-   Test your logic with the provided test cases

## Final Tips

1. **Start simple** - Get basic classification working first
2. **Test frequently** - Check each BMI category as you build
3. **Build incrementally** - Add one feature at a time
4. **Use descriptive names** - Make your code self-documenting
5. **Don't break existing code** - Keep your original functionality intact

**Remember:** This assignment builds on everything you've learned. Take your time to understand the logic, and don't hesitate to ask questions!

---

**Good luck enhancing your BMI calculator! 🚀**

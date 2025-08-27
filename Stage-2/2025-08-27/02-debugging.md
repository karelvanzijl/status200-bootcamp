# Debugging

In this stage, you will learn how to debug your application effectively. Debugging is an essential skill for any developer, as it helps you identify and fix issues in your code.

## Steps to Debug

#### 1. Reproduce the Issue

Ensure you can consistently reproduce the issue you are trying to debug.

#### 2. Check the Console

Look for any error messages in the console. These messages can provide clues about what went wrong.

**Client-side**:

In your browser, open the Developer Tools (usually by pressing F12 or right-clicking and selecting "Inspect").

**Server-side**:

In Node.js, check the terminal where your server is running.

# Is there an Error Message?

## # YES

If there is an error message, follow these steps:

#### 1. Read the Error Messages

Carefully read any error messages you find. They often indicate the type of error and the line number where it occurred. You don't need to understand everything in the message, but look for keywords that can guide your investigation.

#### 2. Find the Problematic Code

Use the information from the error messages to locate the part of your code that is causing the issue.

#### 3. Read the Code

Carefully read through the problematic code. Look for common issues such as:

-   Syntax errors (missing brackets, commas, etc.)
-   Incorrect variable names
-   Logic errors (e.g., using the wrong operator)
-   Incorrect API endpoints or URLs
-   Missing or incorrect database queries
-   Mismatching ID names or parameters

#### 4. Try to Fix the Issue

Based on your understanding of the code, make changes to fix the issue. This might involve correcting syntax, changing variable names, or adjusting logic.

## # NO

If there is no error message, it means the code is running but not producing the expected results. In this case, follow these steps:

-   **Add Console Logs**: Insert `console.log()` statements at various points in your code to check the values of variables and the flow of execution. This can help you identify where things are going wrong.

-   **Check Function Calls**: Ensure that functions are being called as expected and that they are receiving the correct parameters. Are you calling a certain function at all, or maybe you are calling it to multiple times when you shoudn't?

-   **Check Network Requests**: If your application makes network requests (e.g., fetching data from an API), use the Network tab in your browser's Developer Tools to inspect these requests. Check if they are successful and if the responses contain the expected data. Does the request URL look correct? Is it sending the right parameters?

-   **Check Data**: Ensure that the data being fetched from the server or database is correct. You can log the data to the console to verify its contents.

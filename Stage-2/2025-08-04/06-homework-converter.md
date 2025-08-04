# Kilometer - Meter Converter

## Layout

```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│    INPUT    │    │     ───▶    │    │    INPUT    │
│      &      │    └─────────────┘    │      &      │
│    OUTPUT   │    ┌─────────────┐    │    OUTPUT   │
│      km     │    │     ◀───    │    │    meters   │
└─────────────┘    └─────────────┘    └─────────────┘

```

## Task 1: Basic Converter Functionality

Create a distance unit converter with the following layout:

-   **Left input field**: For entering & showing values
-   **Right input field**: For entering & showing values
-   **Two conversion buttons** positioned between the input fields:
    -   **km to m button**: Converts kilometers (left) to meters (right)
    -   **m to km button**: Converts meters (right) to kilometers (left)

**Requirements:**

-   When user enters a number in the left field and clicks "km to m", display the result in meters in the right field
-   When user enters a number in the right field and clicks "m to km", display the result in kilometers in the left field
-   Use conversion factors: 1 km = 1000 m, 1 m = 0.001 km

## Task 2: Input Validation

Once "Task 1" is completed focus on making the converter more robust by adding input validation. Your core functionality works, now is the time to make sure it handles user input correctly.

**Validation Requirements:**

-   Check if input is a valid number (not empty, not text)
-   Handle negative numbers appropriately (decide if they should be allowed)
-   Display error messages for invalid inputs
-   Clear error messages when valid input is submitted

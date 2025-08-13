# Status200 Coding Bootcamp - Assignment Tracker

## Your Task

You work as an instructor at Status200 Coding Bootcamp and need to create an assignment tracking system. Use the provided data and complete the following tasks using **for loops** and **if statements**.

## The Data

Copy this data into your JavaScript file:

```javascript
const students = [
  { id: 1, name: "Aamena", score: 85, project: "JavaScript", week: 4 },
  { id: 2, name: "Ahmed", score: 72, project: "HTML/CSS", week: 2 },
  { id: 3, name: "Azizullah", score: 94, project: "JavaScript", week: 4 },
  { id: 4, name: "Elyas", score: 68, project: "JavaScript", week: 3 },
  { id: 5, name: "Esther", score: 91, project: "HTML/CSS", week: 4 },
  { id: 6, name: "Farwa", score: 78, project: "JavaScript", week: 3 },
  { id: 7, name: "Fathima", score: 83, project: "HTML/CSS", week: 4 },
  { id: 8, name: "Gong", score: 67, project: "JavaScript", week: 2 },
  { id: 9, name: "Yasser", score: 89, project: "HTML/CSS", week: 4 },
  { id: 10, name: "Ismail", score: 75, project: "JavaScript", week: 3 }
];
```

## Tasks to Complete

### Task 1: Calculate Average Assignment Score
Calculate the average score of all students' assignments.

**Expected Output:**
```
Average bootcamp score: 78.20
```

### Task 2: Find Outstanding Performers
Find and display all students who scored 80 or above on their assignments.

**Expected Output:**
```
Outstanding performers:
Aamena: 85
Azizullah: 94
Esther: 91
Fathima: 83
Yasser: 89
```

### Task 3: Count JavaScript Projects
Find all students working on JavaScript projects, add them to a new array, then count how many students are in the new array.

**Expected Output:**
```
JavaScript projects: 6
```

### Task 4: Find Top Performer
Find and display the student with the highest assignment score.

**Expected Output:**
```
Top performer:
Azizullah: 94
```

### Task 5: Find Students in Week 4
Find all students who are currently in week 4, add them to a new array, then loop through the new array to display each one.

**Expected Output:**
```
Students in week 4:
Aamena: JavaScript
Azizullah: JavaScript
Esther: HTML/CSS
Fathima: HTML/CSS
Yasser: HTML/CSS
```

## Requirements

- **Run your code using Node.js** in the terminal with `node filename.js`
- - Use `.toFixed(2)` to format the average to 2 decimal places


## Submission

Submit your completed JavaScript file with all 5 tasks solved. Make sure your output matches the expected results shown above.

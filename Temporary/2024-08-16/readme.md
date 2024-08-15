# JSON

JSON (JavaScript Object Notation) is a lightweight data format used for storing and exchanging data between a server and a client. It is easy for humans to read and write, and it's simple for machines to parse and generate.

### Key Points:

-   **Structure:** JSON represents data as key-value pairs, similar to how objects are structured in JavaScript. It uses curly braces `{}` for objects and square brackets `[]` for arrays.
-   **Data Types:** JSON supports several data types, including strings, numbers, booleans, arrays, objects, and null.
-   **Language-Independent:** Although it is based on JavaScript syntax, JSON is language-independent and can be used with most programming languages.

### Example:

```json
{
    "name": "Alice",
    "age": 25,
    "isStudent": false,
    "skills": ["HTML", "CSS", "JavaScript"],
    "address": {
        "city": "New York",
        "zip": "10001"
    }
}
```

In this example:

-   `"name"` is a string.
-   `"age"` is a number.
-   `"isStudent"` is a boolean.
-   `"skills"` is an array.
-   `"address"` is an object containing more key-value pairs.

JSON is commonly used for APIs and configurations due to its simplicity and compatibility with various systems.

# Practice

### Task 1: Create Your Own JSON

Create a simple JSON object that represents their your profile. It should include:

-   Their name (string)
-   Age (number)
-   Whether they are a student (boolean)
-   A list of their favorite programming languages (array of strings)
-   A nested object for their contact information with fields for email and phone number.

Example:

```json
{
    "name": "John Doe",
    "age": 20,
    "isStudent": true,
    "favoriteLanguages": ["JavaScript", "Python"],
    "contact": {
        "email": "john.doe@example.com",
        "phone": "123-456-7890"
    }
}
```

### Task 2: Parse and Access JSON Data

Provide a sample JSON object and ask them to write a small Node.js script that:

1. Parses the JSON string into a JavaScript object.
2. Accesses and prints specific values from the object (e.g., the name, one of the favorite languages, or the city).

Example JSON:

```json
{
    "name": "Sarah",
    "age": 22,
    "isStudent": true,
    "skills": ["React", "Node.js"],
    "address": {
        "city": "San Francisco",
        "zip": "94105"
    }
}
```

Sample Node.js Script:

```javascript
const jsonData = `{
    "name": "Sarah",
    "age": 22,
    "isStudent": true,
    "skills": ["React", "Node.js"],
    "address": {
        "city": "San Francisco",
        "zip": "94105"
    }
}`;

const parsedData = JSON.parse(jsonData);

console.log("Name:", parsedData.name);
console.log("First skill:", parsedData.skills[0]);
console.log("City:", parsedData.address.city);
```

### Task 3: Looping Through JSON Arrays

Extend the previous script to loop through an array within the JSON object, such as the `skills` array, and print each skill.

Example:

```javascript
const jsonData = `{
    "name": "Sarah",
    "age": 22,
    "isStudent": true,
    "skills": ["React", "Node.js", "HTML", "CSS"],
    "address": {
        "city": "San Francisco",
        "zip": "94105"
    }
}`;

const parsedData = JSON.parse(jsonData);

console.log("Skills:");
parsedData.skills.forEach((skill) => {
    console.log(skill);
});
```

### Task 4: Converting a JSON Object to a String

Ask the students to convert the JavaScript object back into a JSON string using `JSON.stringify()`.

Example:

```javascript
const jsonObject = {
    name: "Sarah",
    age: 22,
    isStudent: true,
    skills: ["React", "Node.js", "HTML", "CSS"],
    address: {
        city: "San Francisco",
        zip: "94105",
    },
};

const jsonString = JSON.stringify(jsonObject);

console.log("JSON String:", jsonString);
```

### Task 5: Nested Looping Through JSON Objects

Give them a more complex JSON object with nested arrays and objects, and ask them to loop through both the outer and inner elements.

Example JSON:

```json
{
    "project": "Website Development",
    "team": [
        {
            "name": "Alice",
            "role": "Frontend Developer",
            "skills": ["HTML", "CSS", "JavaScript"]
        },
        {
            "name": "Bob",
            "role": "Backend Developer",
            "skills": ["Node.js", "Express", "MongoDB"]
        }
    ]
}
```

Sample Node.js Script:

```javascript
const jsonData = `{
    "project": "Website Development",
    "team": [
        {
            "name": "Alice",
            "role": "Frontend Developer",
            "skills": ["HTML", "CSS", "JavaScript"]
        },
        {
            "name": "Bob",
            "role": "Backend Developer",
            "skills": ["Node.js", "Express", "MongoDB"]
        }
    ]
}`;

const parsedData = JSON.parse(jsonData);

parsedData.team.forEach((member) => {
    console.log(`Name: ${member.name}`);
    console.log(`Role: ${member.role}`);
    console.log("Skills:");
    member.skills.forEach((skill) => {
        console.log(` - ${skill}`);
    });
    console.log(""); // Add a blank line for readability
});
```
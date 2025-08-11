# Homework Exercises

## Overview

These exercises reinforce the concepts practiced in the morning session and provide additional challenges to prepare you for the ATM 3.0 assignment. Complete all exercises and be prepared to discuss your solutions in the next class.

---

## Exercise 1: Student Database

**Focus**: Array of objects, data manipulation

### Task:

Create a student management system with the following features:

1. Create an array `students` with 5 student objects, each having:

    - `name`: student name
    - `id`: student ID (e.g., "STU001")
    - `grades`: array of 3 grades (numbers)
    - `isActive`: boolean

2. Write functions to:

    - `addStudent(name, id)` - adds a new student with empty grades array
    - `addGrade(studentId, grade)` - adds a grade to a specific student
    - `calculateAverage(studentId)` - returns the average grade for a student
    - `findTopStudent()` - returns the student with the highest average
    - `getActiveStudents()` - returns array of only active students

3. Test all functions and print results

### Sample Data:

```javascript
const students = [
    { name: "Alice", id: "STU001", grades: [85, 90, 88], isActive: true },
    { name: "Bob", id: "STU002", grades: [78, 82, 85], isActive: true },
    { name: "Charlie", id: "STU003", grades: [92, 95, 89], isActive: false },
    // Add 2 more students...
];
```

---

## Exercise 2: Library Management System

**Focus**: Complex object structures, search functions

### Task:

Create a library system with the following structure:

1. Use this library object (6 books, 3 members):

```javascript
const library = {
    name: "City Library",
    books: [
        {
            title: "1984",
            author: "George Orwell",
            isbn: "1234567890",
            isAvailable: true,
        },
        {
            title: "To Kill a Mockingbird",
            author: "Harper Lee",
            isbn: "0987654321",
            isAvailable: false,
        },
        {
            title: "The Great Gatsby",
            author: "F. Scott Fitzgerald",
            isbn: "1122334455",
            isAvailable: true,
        },
        {
            title: "The Catcher in the Rye",
            author: "J.D. Salinger",
            isbn: "2233445566",
            isAvailable: true,
        },
        {
            title: "Brave New World",
            author: "Aldous Huxley",
            isbn: "3344556677",
            isAvailable: false,
        },
        {
            title: "Fahrenheit 451",
            author: "Ray Bradbury",
            isbn: "4455667788",
            isAvailable: true,
        },
    ],
    members: [
        { name: "Alice", memberId: "M001", borrowedBooks: [] },
        { name: "Bob", memberId: "M002", borrowedBooks: ["1234567890"] },
        { name: "Charlie", memberId: "M003", borrowedBooks: [] },
    ],
    isOpen: true,
};
```

2. Each book should have:

    - `title`, `author`, `isbn`, `isAvailable`

3. Each member should have:

    - `name`, `memberId`, `borrowedBooks` (array of ISBNs)

4. Create functions:

    - `addBook(title, author, isbn)` - adds a new book to the library
    - `registerMember(name, memberId)` - adds a new member
    - `borrowBook(memberId, isbn)` - handles book borrowing
    - `returnBook(memberId, isbn)` - handles book returns
    - `findMember(memberId)` - returns member object or null
    - `getAvailableBooks()` - returns array of available books
    - `getMemberBooks(memberId)` - returns books borrowed by a member

5. Handle error cases with appropriate return statements:
    - Book not found
    - Member not found
    - Book already borrowed
    - Library closed

**To remove an element from an array**, use `splice()` method. This allows you to remove an item at a specific index:

```javascript
const fruits = ["apple", "banana", "cherry"];
fruits.splice(0, 1); // Removes 'apple' (index 0)
console.log(fruits); // ["banana", "cherry"]

const books = ["1984", "To Kill a Mockingbird", "The Great Gatsby"];
books.splice(3, 1); // Removes 'The Great Gatsby' (index 3)
console.log(books); // ['1984', 'To Kill a Mockingbird']
```

### Test your system by:

-   Adding 3 books and 2 members
-   Having members borrow and return books
-   Checking availability and borrowed books

---

## Exercise 3: Contact Manager

**Focus**: CRUD operations, array manipulation

### Task:

Build a contact management system:

1. Create an array `contacts` with contact objects:

    - `id` (auto-increment), `name`, `email`, `phone`, `category`

2. Implement functions:

    - `addContact(name, email, phone, category)` - adds new contact with auto-generated ID
    - `deleteContact(id)` - removes contact by ID
    - `updateContact(id, newInfo)` - updates contact information
    - `findContact(searchTerm)` - finds contacts by name or email
    - `getContactsByCategory(category)` - filters contacts by category
    - `getAllContacts()` - returns all contacts

3. Create an HTML interface with:

    - Form to add new contacts
    - List display of all contacts
    - Search functionality
        - We've used `.indexOf()` and `.includes()` for searching in previous exercises.
    - Edit/delete buttons for each contact

**Auto-increment:** use a variable to keep track of the last used ID, increment it by 1 each time a new contact is added.

**Reminder:** to remove an element from an array, use `splice()` method. This allows you to remove an item at a specific index:

```javascript
const fruits = ["apple", "banana", "cherry"];
fruits.splice(0, 1); // Removes 'apple' (index 0)
console.log(fruits); // ["banana", "cherry"]

const books = ["1984", "To Kill a Mockingbird", "The Great Gatsby"];
books.splice(3, 1); // Removes 'The Great Gatsby' (index 3)
console.log(books); // ['1984', 'To Kill a Mockingbird']
```

---

## Bonus Challenge: Mini Social Network

### Task:

Create a basic social network simulation:

1. Create `users` array with user objects containing:

    - `id`, `username`, `email`, `friends` (array of user IDs), `posts` (array)

2. Each post should have:

    - `id`, `content`, `timestamp`, `likes` (count), `comments` (array)

3. Implement functions:

    - `createUser(username, email)` - registers new user
    - `sendFriendRequest(fromUserId, toUserId)` - adds friendship
    - `createPost(userId, content)` - adds new post
    - `likePost(postId)` - increments like count
    - `addComment(postId, userId, comment)` - adds comment to post
    - `getUserFeed(userId)` - returns posts from user and friends
    - `searchUsers(searchTerm)` - finds users by username
    - `getMutualFriends(userId1, userId2)` - finds common friends

4. Create interface with:
    - User registration/login
    - Friend list display
    - Post creation form
    - News feed showing posts
    - Like and comment functionality

---

## Submission Requirements

### For each exercise:

1. **Code**: Well-commented JavaScript code
2. **HTML**: Clean, semantic HTML structure (where applicable)
3. **CSS**: Basic styling to make interfaces readable
4. **Testing**: Show that you tested all functions with different inputs
5. **Documentation**: Brief explanation of your approach for complex exercises

### Grading Criteria:

-   **AI**: automatic failure if AI is detected. Maybe stay home.
-   **Functionality**: Does the code work as specified?
-   **Code Quality**: Is the code clean, readable, and well-organized?
-   **Error Handling**: Are edge cases properly handled?
-   **User Interface**: Is the HTML/CSS interface intuitive and functional?
-   **Testing**: Did you thoroughly test your functions?

### Tips for Success:

1. **Start Simple**: Get basic functionality working before adding complexity
2. **Test Often**: Test each function as you write it
3. **Use Console.log**: Debug your code by printing intermediate values
4. **Handle Errors**: Always validate inputs and handle edge cases
5. **Break Down Tasks**: Tackle one function at a time, don’t try to do everything at once

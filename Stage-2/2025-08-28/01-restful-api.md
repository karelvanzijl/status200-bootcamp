# RESTful APIs: Understanding the Client-Server Conversation

## What is a RESTful API?

Think of a RESTful API as a **conversation system** between two programs:
- **Client** (your website/app): "I need some data"
- **Server** (your backend): "Here's the data you requested"

It's like ordering at a restaurant - you tell the waiter what you want, and they bring it back from the kitchen.

## The Big Picture: Why Use RESTful APIs?

### Before APIs: The Problem
- Every website was isolated - no data sharing
- Mobile apps couldn't exist (no way to get data)
- No integration between different systems
- Each app needed its own custom backend

### With RESTful APIs: The Solution
- **One backend serves many frontends** (web, mobile, desktop)
- **Data sharing** between different applications
- **Third-party integrations** (payment systems, social media)
- **Scalable architecture** - separate concerns

**Real Example**: Netflix has one API that serves:
- Their website
- Mobile apps (iOS, Android)
- Smart TV apps
- Third-party integrations

---

## CRUD Operations: The Four Things Every App Does

| Operation | What it does | Real-life example |
|-----------|--------------|-------------------|
| **C**reate | Add new data | Adding a new movie |
| **R**ead | Get data | Showing movie list |
| **U**pdate | Change data | Editing movie details |
| **D**elete | Remove data | Removing a movie |

---

# Method-by-Method: How Client and Server Talk

## 1. GET Requests: "Give me some data"

### The Conversation
- **Client**: "Hey server, can you give me all the movies?"
- **Server**: "Sure! Here's the list of movies from the database."

### Client Side (Browser JavaScript)
```javascript
// Simple request - just asking for data
function getMovies() {
    fetch("http://localhost:3000/movies")
        .then(response => response.json())
        .then(movies => {
            console.log("Got movies:", movies);
            // Display movies on webpage
            displayMovies(movies);
        });
}
```

### Server Side (Express.js)
```javascript
// Server receives the request and responds
app.get("/movies", async (req, res) => {
    // Get data from database
    const results = await db.query("SELECT * FROM movies");
    const movies = results[0];
    
    // Send data back to client
    res.json(movies);
});
```

### What Happens:
1. Client makes GET request to `/movies`
2. Server runs the `app.get("/movies", ...)` function
3. Server queries database for all movies
4. Server sends movie data back as JSON
5. Client receives the data and displays it

**When to use**: Loading pages, showing lists, getting user profiles

---

## 2. DELETE Requests: "Remove this data"

### The Conversation
- **Client**: "Hey server, delete movie #5"
- **Server**: "Done! I removed movie #5 from the database."

### Client Side (Browser JavaScript)
```javascript
// Delete movie with specific ID
function deleteMovie(movieId) {
    fetch("http://localhost:3000/movies/" + movieId, {
        method: "DELETE"  // Tell server this is a delete operation
    })
    .then(response => response.json())
    .then(result => {
        console.log(result.message); // "Movie deleted successfully"
        // Maybe refresh the page or hide the deleted movie
        getMovies(); // Reload the movie list
    });
}
```

### Server Side (Express.js)
```javascript
// Server handles the delete request
app.delete("/movies/:movie_id", async (req, res) => {
    const movieId = req.params.movie_id; // Get ID from URL (5)
    
    // Delete from database
    const results = await db.query(`DELETE FROM movies WHERE movie_id = ${movieId}`);
    const result = results[0];
    
    if (result.affectedRows > 0) {
        res.json({ message: "Movie deleted successfully" });
    } else {
        res.status(404).json({ message: "Movie not found" });
    }
});
```

### What Happens:
1. Client sends DELETE request to `/movies/5`
2. Server extracts `5` from the URL (`req.params.movie_id`)
3. Server deletes movie with ID 5 from database
4. Server responds with success/failure message
5. Client updates the webpage

**When to use**: Delete buttons, removing items, canceling orders

---

## 3. POST Requests: "Save this new data"

### The Conversation
- **Client**: "Hey server, save this new movie for me"
- **Server**: "Got it! I saved your movie and gave it ID #47"

### Client Side (Browser JavaScript)
```javascript
// Create new movie
function createMovie() {
    // Get data from form inputs
    const title = document.getElementById("title").value;
    const year = document.getElementById("year").value;
    const duration = document.getElementById("duration").value;
    const description = document.getElementById("description").value;
    
    // Create the body data
    const movieData = {
        title: title,
        release_year: year,
        duration_minutes: duration,
        description: description
    };

    fetch("http://localhost:3000/movies", {
        method: "POST",                             // Tell server this creates new data
        headers: {
            "Content-Type": "application/json"      // Tell server we're sending JSON
        },
        body: JSON.stringify(movieData)             // Convert object to JSON string
    })
    .then(response => response.json())
    .then(result => {
        console.log("New movie created with ID:", result.movieId);
        getMovies(); // Reload the movie list
    });
}
```

### Server Side (Express.js)
```javascript
// Server handles the creation request
app.post("/movies", async (req, res) => {
    // Get data that client sent
    const { title, release_year, duration_minutes, description } = req.body;
    
    // Insert into database
    const results = await db.query(`
        INSERT INTO movies (title, release_year, duration_minutes, description)
        VALUES ('${title}', ${release_year}, ${duration_minutes}, '${description}')
    `);
    const result = results[0];
    
    // Send back success message with new ID
    res.json({ 
        message: "Movie created successfully",
        movieId: result.insertId  // Database gives us the new movie's ID
    });
});
```

### What Happens:
1. Client sends POST request with movie data in the `body`
2. Server extracts data from `req.body`
3. Server inserts new movie into database
4. Database assigns new ID to the movie
5. Server sends back success message with the new ID
6. Client can use the ID to update the webpage

**Key Points**:
- POST requests have a **body** with data
- Must include `Content-Type: application/json` header
- Use `JSON.stringify()` to convert data to string
- Server uses `req.body` to access the data

**When to use**: Contact forms, user registration, adding items to cart

---

## 4. PUT Requests: "Update this existing data"

### The Conversation
- **Client**: "Hey server, update movie #5 with this new information"
- **Server**: "Updated! Movie #5 now has the new details."

### Client Side (Browser JavaScript)
```javascript
// Update movie with specific ID
function updateMovie(movieId) {
    // Get data from form inputs
    const title = document.getElementById("editTitle").value;
    const year = document.getElementById("editYear").value;
    const duration = document.getElementById("editDuration").value;
    const description = document.getElementById("editDescription").value;
    
    // Create the body data
    const updatedData = {
        title: title,
        release_year: year,
        duration_minutes: duration,
        description: description
    };

    fetch("http://localhost:3000/movies/" + movieId, {
        method: "PUT",                              // Tell server this updates existing data
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(updatedData)
    })
    .then(response => response.json())
    .then(result => {
        console.log(result.message); // "Movie updated successfully"
        getMovies(); // Reload the movie list
    });
}
```

### Server Side (Express.js)
```javascript
// Server handles the update request
app.put("/movies/:movie_id", async (req, res) => {
    const movieId = req.params.movie_id; // Get ID from URL (5)
    const { title, release_year, duration_minutes, description } = req.body;
    
    // Update the database
    const results = await db.query(`
        UPDATE movies SET
            title = '${title}',
            release_year = ${release_year},
            duration_minutes = ${duration_minutes},
            description = '${description}'
        WHERE movie_id = ${movieId}
    `);
    const result = results[0];
    
    if (result.affectedRows > 0) {
        res.json({ message: "Movie updated successfully" });
    } else {
        res.status(404).json({ message: "Movie not found" });
    }
});
```

### What Happens:
1. Client sends PUT request to `/movies/5` with updated data
2. Server gets ID from URL and new data from `req.body`
3. Server updates movie #5 in the database
4. Server responds with success/failure message
5. Client updates the webpage display

**When to use**: Edit forms, updating profiles, modifying settings

---

# RESTful URL Patterns: Same URL, Different Actions

Notice how we use the **same URLs** with **different methods**:

| Method | URL | Express | What it does |
|--------|-----|---------|--------------|
| `GET` | `/movies` | `app.get("/movies", ...)` | Get all movies |
| `POST` | `/movies` | `app.post("/movies", ...)` | Create a new movie |
| `GET` | `/movies/5` | `app.get("/movies/:id", ...)` | Get movie #5 |
| `PUT` | `/movies/5` | `app.put("/movies/:id", ...)` | Update movie #5 |
| `DELETE` | `/movies/5` | `app.delete("/movies/:id", ...)` | Delete movie #5 |

**This is the beauty of REST**: 
- The **URL describes the resource** (`/movies`)
- The **HTTP method describes the action** (GET, POST, PUT, DELETE)

---

# Complete Working Example: Movie Manager

## HTML (The Interface)
```html
<!DOCTYPE html>
<html>
<head>
    <title>Movie Manager</title>
</head>
<body>
    <h1>Movie Manager</h1>
    
    <!-- Form to add new movie -->
    <h2>Add New Movie</h2>
    <input type="text" id="title" placeholder="Movie title">
    <input type="number" id="year" placeholder="Release year">
    <input type="number" id="duration" placeholder="Duration (minutes)">
    <textarea id="description" placeholder="Description"></textarea>
    <button onclick="createMovie()">Add Movie</button>
    
    <!-- Button to load movies -->
    <h2>Movie List</h2>
    <button onclick="getMovies()">Load Movies</button>
    <div id="movieList"></div>
    
    <script src="client.js"></script>
</body>
</html>
```

## Client JavaScript (client.js)
```javascript
const API_URL = 'http://localhost:3000';

// Create new movie (POST request)
function createMovie() {
    // Get form data
    const title = document.getElementById('title').value;
    const year = document.getElementById('year').value;
    const duration = document.getElementById('duration').value;
    const description = document.getElementById('description').value;
    
    // Create the body data
    const movieData = {
        title: title,
        release_year: year,
        duration_minutes: duration,
        description: description
    };
    
    // Send POST request to create movie
    fetch(API_URL + '/movies', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(movieData)
    })
    .then(response => response.json())
    .then(result => {
        console.log('Movie created:', result);
        // Clear form inputs
        document.getElementById('title').value = '';
        document.getElementById('year').value = '';
        document.getElementById('duration').value = '';
        document.getElementById('description').value = '';
        // Reload movies
        getMovies();
    });
}

// Load and display all movies (GET request)
function getMovies() {
    fetch(API_URL + '/movies')
        .then(response => response.json())
        .then(movies => {
            const movieList = document.getElementById('movieList');
            movieList.innerHTML = '';
            
            movies.forEach(movie => {
                movieList.innerHTML += `
                    <div style="border: 1px solid #ccc; margin: 10px; padding: 10px;">
                        <h3>${movie.title} (${movie.release_year})</h3>
                        <p><strong>Duration:</strong> ${movie.duration_minutes} minutes</p>
                        <p><strong>Description:</strong> ${movie.description}</p>
                        <button onclick="deleteMovie(${movie.movie_id})">Delete</button>
                    </div>
                `;
            });
        });
}

// Delete a movie (DELETE request)
function deleteMovie(id) {
    if (confirm('Are you sure you want to delete this movie?')) {
        fetch(API_URL + '/movies/' + id, {
            method: 'DELETE'
        })
        .then(response => response.json())
        .then(result => {
            console.log('Movie deleted:', result);
            // Reload movies
            getMovies();
        });
    }
}
```

## Server JavaScript (server.js)
```javascript
const express = require('express');
const cors = require('cors');
const mysql = require('mysql2/promise');

const app = express();
const port = 3000;

// REQUIRED middleware for APIs
app.use(express.json()); // Parse JSON from POST/PUT requests
app.use(cors());         // Allow requests from other domains

// Database connection
const db = mysql.createConnection({
    host: 'localhost',
    user: 'your_username',      // Replace with your MySQL username
    password: 'your_password',  // Replace with your MySQL password
    database: 'your_database'   // Replace with your database name
});

// GET all movies
app.get('/movies', async (req, res) => {
    try {
        const results = await db.query('SELECT * FROM movies ORDER BY movie_id');
        const movies = results[0];
        res.json(movies);
    } catch (error) {
        res.status(500).json({ message: 'Error fetching movies', error: error.message });
    }
});

// GET specific movie
app.get('/movies/:id', async (req, res) => {
    try {
        const results = await db.query(`SELECT * FROM movies WHERE movie_id = ${req.params.id}`);
        const movies = results[0];
        
        if (movies.length > 0) {
            res.json(movies[0]);
        } else {
            res.status(404).json({ message: 'Movie not found' });
        }
    } catch (error) {
        res.status(500).json({ message: 'Error fetching movie', error: error.message });
    }
});

// POST new movie
app.post('/movies', async (req, res) => {
    try {
        const { title, release_year, duration_minutes, description } = req.body;
        
        const results = await db.query(`
            INSERT INTO movies (title, release_year, duration_minutes, description) 
            VALUES ('${title}', ${release_year}, ${duration_minutes}, '${description}')
        `);
        const result = results[0];
        
        res.json({ 
            message: 'Movie created successfully',
            movieId: result.insertId 
        });
    } catch (error) {
        res.status(500).json({ message: 'Error creating movie', error: error.message });
    }
});

// PUT update movie
app.put('/movies/:id', async (req, res) => {
    try {
        const { title, release_year, duration_minutes, description } = req.body;
        
        const results = await db.query(`
            UPDATE movies SET 
                title = '${title}', 
                release_year = ${release_year}, 
                duration_minutes = ${duration_minutes}, 
                description = '${description}' 
            WHERE movie_id = ${req.params.id}
        `);
        const result = results[0];
        
        if (result.affectedRows > 0) {
            res.json({ message: 'Movie updated successfully' });
        } else {
            res.status(404).json({ message: 'Movie not found' });
        }
    } catch (error) {
        res.status(500).json({ message: 'Error updating movie', error: error.message });
    }
});

// DELETE movie
app.delete('/movies/:id', async (req, res) => {
    try {
        const results = await db.query(`DELETE FROM movies WHERE movie_id = ${req.params.id}`);
        const result = results[0];
        
        if (result.affectedRows > 0) {
            res.json({ 
                message: 'Movie deleted successfully',
                deletedRows: result.affectedRows 
            });
        } else {
            res.status(404).json({ message: 'Movie not found' });
        }
    } catch (error) {
        res.status(500).json({ message: 'Error deleting movie', error: error.message });
    }
});

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
```

---

# Essential Server Setup

Every RESTful API server needs this setup:

```javascript
const express = require('express');
const cors = require('cors');

const app = express();

// THESE TWO LINES ARE CRITICAL FOR APIs:
app.use(express.json()); // Without this, req.body will be undefined
app.use(cors());         // Without this, browsers will block requests

// Your routes go here...

app.listen(3000, () => console.log('Server running on port 3000'));
```

---

# Key Takeaways

## The Request-Response Cycle
1. **Client** makes request with `fetch()`
2. **Server** receives request in route handler (`app.get`, `app.post`, etc.)
3. **Server** processes data (usually database operations)
4. **Server** sends response with `res.json()`
5. **Client** receives response and updates interface

## Critical Points
- **URLs represent resources** (`/movies` = movie collection)
- **HTTP methods represent actions** (GET = read, POST = create)
- **JSON is the data format** - always use `express.json()` middleware
- **Always handle errors** - check if data exists before operations
- **RESTful patterns are consistent** - same URL, different methods

## Why This Matters
RESTful APIs enable:
- **Separation of concerns** (frontend ↔ backend)
- **Multiple client types** (web, mobile, desktop)
- **Scalable architecture**
- **Third-party integrations**
- **Team collaboration** (frontend/backend developers work independently)

Now you can build complete, interactive web applications that manage data professionally!
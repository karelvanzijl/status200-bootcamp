# RESTful API Practice Exercises

**Based on movie-website-v7 project**

These exercises will help you practice implementing all four CRUD operations using RESTful API principles. Currently, the movie website only uses GET requests. Let's add POST, PUT, and DELETE functionality!

## Setup Instructions

If you haven't already, download teh latest version of our movie website project [from here](./02-practice/movie-website-v7.zip) and unzip it.

1. Navigate to the `movie-website-v7` folder
2. Start your MySQL server and ensure the database is set up
3. Setup the server:
    - Navigate to the `server` folder
    - Run `npm install` to install dependencies
    - Update the database connection details in `index.js` if needed
4. Run the server: `node server/index.js`
5. Open the website in your browser

---

## Exercise 1: Add New Director (POST Request)

**Learning Goal**: Create new data using POST requests

### Task

Add functionality to create new directors in the database.

### Server-Side Implementation

Add this route to your `server/index.js` file:

```javascript
// POST - Add new director
app.post("/directors", async (req, res) => {
    try {
        const { name, birth_year, nationality } = req.body;

        const results = await db.query(`
            INSERT INTO directors (name, birth_year, nationality) 
            VALUES ('${name}', ${birth_year}, '${nationality}')
        `);
        const result = results[0];

        res.json({
            message: "Director created successfully",
            directorId: result.insertId,
        });
    } catch (error) {
        res.status(500).json({
            message: "Error creating director",
            error: error.message,
        });
    }
});
```

### Client-Side Implementation

Add this HTML form to your `index.html` (or create a new admin page):

```html
<div id="add-director-form">
    <h3>Add New Director</h3>
    <input type="text" id="directorName" placeholder="Director Name" required />
    <input type="number" id="birthYear" placeholder="Birth Year" required />
    <input type="text" id="nationality" placeholder="Nationality" required />
    <button onclick="addDirector()">Add Director</button>
    <div id="director-result"></div>
</div>
```

Add this function to your `app.js`:

```javascript
function addDirector() {
    const name = document.getElementById("directorName").value;
    const birthYear = parseInt(document.getElementById("birthYear").value);
    const nationality = document.getElementById("nationality").value;

    // Validation
    if (!name || !birthYear || !nationality) {
        alert("Please fill in all fields");
        return;
    }

    fetch("http://localhost:3000/directors", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
            name: name,
            birth_year: birthYear,
            nationality: nationality,
        }),
    })
        .then((response) => response.json())
        .then((result) => {
            document.getElementById(
                "director-result"
            ).innerHTML = `<p style="color: green;">${result.message} (ID: ${result.directorId})</p>`;

            // Clear form
            document.getElementById("directorName").value = "";
            document.getElementById("birthYear").value = "";
            document.getElementById("nationality").value = "";
        })
        .catch((error) => {
            document.getElementById(
                "director-result"
            ).innerHTML = `<p style="color: red;">Error: ${error.message}</p>`;
        });
}
```

---

## Exercise 2: Update Movie Description (PUT Request)

**Learning Goal**: Update existing data using PUT requests

### Task

Allow users to edit movie descriptions.

### Server-Side Implementation

Add this route to your `server/index.js`:

```javascript
// PUT - Update movie description
app.put("/movies/:movie_id/description", async (req, res) => {
    try {
        const movieId = req.params.movie_id;
        const { description } = req.body;

        const results = await db.query(`
            UPDATE movies 
            SET description = '${description}' 
            WHERE movie_id = ${movieId}
        `);
        const result = results[0];

        if (result.affectedRows > 0) {
            res.json({ message: "Movie description updated successfully" });
        } else {
            res.status(404).json({ message: "Movie not found" });
        }
    } catch (error) {
        res.status(500).json({
            message: "Error updating movie",
            error: error.message,
        });
    }
});
```

### Client-Side Implementation

Add this HTML to your `movie.html` page:

```html
<div id="edit-description">
    <h3>Edit Description</h3>
    <textarea
        id="newDescription"
        rows="4"
        cols="50"
        placeholder="Enter new description"
    ></textarea
    ><br />
    <button onclick="updateMovieDescription()">Update Description</button>
    <div id="update-result"></div>
</div>
```

Add this function to your `app.js`:

```javascript
function updateMovieDescription() {
    // Get movie ID from URL
    const urlParams = new URLSearchParams(window.location.search);
    const movieId = urlParams.get("movie_id");

    const newDescription = document.getElementById("newDescription").value;

    if (!newDescription.trim()) {
        alert("Please enter a description");
        return;
    }

    fetch(`http://localhost:3000/movies/${movieId}/description`, {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ description: newDescription }),
    })
        .then((response) => response.json())
        .then((result) => {
            document.getElementById(
                "update-result"
            ).innerHTML = `<p style="color: green;">${result.message}</p>`;

            // Reload movie details to show updated description
            setTimeout(() => {
                fetchAndDisplayMovieDetails();
            }, 1000);
        })
        .catch((error) => {
            document.getElementById(
                "update-result"
            ).innerHTML = `<p style="color: red;">Error: ${error.message}</p>`;
        });
}
```

---

## Exercise 3: Delete Movie (DELETE Request)

**Learning Goal**: Remove data using DELETE requests

### Task

Add the ability to delete movies from the database.

### Server-Side Implementation

Add this route to your `server/index.js`:

```javascript
// DELETE - Remove movie
app.delete("/movies/:movie_id", async (req, res) => {
    try {
        const movieId = req.params.movie_id;

        const results = await db.query(`
            DELETE FROM movies 
            WHERE movie_id = ${movieId}
        `);
        const result = results[0];

        if (result.affectedRows > 0) {
            res.json({
                message: "Movie deleted successfully",
                deletedRows: result.affectedRows,
            });
        } else {
            res.status(404).json({ message: "Movie not found" });
        }
    } catch (error) {
        res.status(500).json({
            message: "Error deleting movie",
            error: error.message,
        });
    }
});
```

### Client-Side Implementation

Modify your movie card template in `app.js` to include delete buttons. Update the `fetchAndDisplayMoviesByGenre` function:

```javascript
function fetchAndDisplayMoviesByGenre() {
    const urlParams = new URLSearchParams(window.location.search);
    const genreId = urlParams.get("genre_id");

    fetch(`http://localhost:3000/genre/${genreId}`)
        .then((response) => response.json())
        .then((movies) => {
            const moviesContainer = document.getElementById("movies-container");

            for (let i = 0; i < movies.length; i++) {
                const movie = movies[i];

                moviesContainer.innerHTML += `
                    <div class="movie-card" id="movie-${movie.movie_id}">
                        <h2>${movie.title} (${movie.release_year})</h2>
                        <p><strong>Duration:</strong> ${movie.duration_minutes} minutes</p>
                        <p><strong>Director:</strong> ${movie.director_name}</p>
                        <p><strong>Rating:</strong> ${movie.averageRating} out of ${movie.numberOfReviews} reviews</p>
                        <p>${movie.description}</p>
                        <p>
                            <a href="movie.html?movie_id=${movie.movie_id}">View Details</a>
                            <button onclick="deleteMovie(${movie.movie_id})" style="background-color: red; color: white; margin-left: 10px;">Delete Movie</button>
                        </p>
                    </div>
                `;
            }
        })
        .catch((error) => {
            console.error("Error fetching movies:", error);
        });
}
```

Add the delete function to your `app.js`:

```javascript
function deleteMovie(movieId) {
    if (
        confirm(
            "Are you sure you want to delete this movie? This action cannot be undone."
        )
    ) {
        fetch(`http://localhost:3000/movies/${movieId}`, {
            method: "DELETE",
        })
            .then((response) => response.json())
            .then((result) => {
                alert(result.message);

                // Remove the movie card from the page
                const movieCard = document.getElementById(`movie-${movieId}`);
                if (movieCard) {
                    movieCard.remove();
                }
            })
            .catch((error) => {
                alert("Error deleting movie: " + error.message);
            });
    }
}
```

---

## Exercise 4: Add Movie Review (POST Request)

**Learning Goal**: Create related data using POST requests

### Task

Allow users to submit reviews for movies.

### Server-Side Implementation

Add this route to your `server/index.js`:

```javascript
// POST - Add new review for a movie
app.post("/movies/:movie_id/reviews", async (req, res) => {
    try {
        const movieId = req.params.movie_id;
        const { user_id, rating, comment } = req.body;
        const reviewDate = new Date().toISOString().split("T")[0]; // Today's date

        const results = await db.query(`
            INSERT INTO reviews (movie_id, user_id, review_date, rating, comment) 
            VALUES (${movieId}, ${user_id}, '${reviewDate}', ${rating}, '${comment}')
        `);
        const result = results[0];

        res.json({
            message: "Review added successfully",
            reviewId: result.insertId,
        });
    } catch (error) {
        res.status(500).json({
            message: "Error adding review",
            error: error.message,
        });
    }
});
```

### Client-Side Implementation

Add this HTML to your `movie.html` page:

```html
<div id="add-review">
    <h3>Add Your Review</h3>
    <select id="reviewRating" required>
        <option value="">Select Rating</option>
        <option value="1">1 Star</option>
        <option value="2">2 Stars</option>
        <option value="3">3 Stars</option>
        <option value="4">4 Stars</option>
        <option value="5">5 Stars</option>
        <option value="6">6 Stars</option>
        <option value="7">7 Stars</option>
        <option value="8">8 Stars</option>
        <option value="9">9 Stars</option>
        <option value="10">10 Stars</option></select
    ><br /><br />
    <textarea
        id="reviewComment"
        rows="3"
        cols="50"
        placeholder="Write your review here..."
    ></textarea
    ><br /><br />
    <button onclick="addMovieReview()">Submit Review</button>
    <div id="review-result"></div>
</div>
```

Add this function to your `app.js`:

```javascript
function addMovieReview() {
    const urlParams = new URLSearchParams(window.location.search);
    const movieId = urlParams.get("movie_id");

    const rating = parseInt(document.getElementById("reviewRating").value);
    const comment = document.getElementById("reviewComment").value;
    const userId = 1; // Hardcoded for simplicity - in real app, would come from user session

    if (!rating || !comment.trim()) {
        alert("Please provide both a rating and a comment");
        return;
    }

    fetch(`http://localhost:3000/movies/${movieId}/reviews`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
            user_id: userId,
            rating: rating,
            comment: comment,
        }),
    })
        .then((response) => response.json())
        .then((result) => {
            document.getElementById(
                "review-result"
            ).innerHTML = `<p style="color: green;">${result.message}</p>`;

            // Clear form
            document.getElementById("reviewRating").value = "";
            document.getElementById("reviewComment").value = "";

            // Refresh movie details to show updated rating
            setTimeout(() => {
                fetchAndDisplayMovieDetails();
            }, 1000);
        })
        .catch((error) => {
            document.getElementById(
                "review-result"
            ).innerHTML = `<p style="color: red;">Error: ${error.message}</p>`;
        });
}
```

---

## Exercise 5: Update Genre Name (PUT Request)

**Learning Goal**: Edit reference data using PUT requests

### Task

Allow admins to rename movie genres.

### Server-Side Implementation

Add this route to your `server/index.js`:

```javascript
// PUT - Update genre name
app.put("/genres/:genre_id", async (req, res) => {
    try {
        const genreId = req.params.genre_id;
        const { name } = req.body;

        const results = await db.query(`
            UPDATE genres 
            SET name = '${name}' 
            WHERE genre_id = ${genreId}
        `);
        const result = results[0];

        if (result.affectedRows > 0) {
            res.json({ message: "Genre updated successfully" });
        } else {
            res.status(404).json({ message: "Genre not found" });
        }
    } catch (error) {
        res.status(500).json({
            message: "Error updating genre",
            error: error.message,
        });
    }
});
```

### Client-Side Implementation

Create a new HTML page called `admin.html`:

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Admin Panel - Movie Website</title>
        <link rel="stylesheet" href="styles.css" />
    </head>
    <body>
        <header>
            <nav>
                <ul id="nav-menu">
                    <li><a href="index.html">Home</a></li>
                </ul>
            </nav>
        </header>

        <main>
            <h1>Admin Panel</h1>

            <div id="manage-genres">
                <h2>Manage Genres</h2>
                <div id="genres-list"></div>
            </div>
        </main>

        <script src="app.js"></script>
        <script>
            // Load genres for editing
            loadGenresForEditing();
        </script>
    </body>
</html>
```

Add these functions to your `app.js`:

```javascript
function loadGenresForEditing() {
    fetch("http://localhost:3000/genres")
        .then((response) => response.json())
        .then((genres) => {
            const genresList = document.getElementById("genres-list");
            genresList.innerHTML = "";

            genres.forEach((genre) => {
                genresList.innerHTML += `
                    <div class="genre-edit" style="margin: 10px 0; padding: 10px; border: 1px solid #ccc;">
                        <input type="text" id="genre-${genre.genre_id}" value="${genre.name}">
                        <button onclick="updateGenreName(${genre.genre_id})">Update</button>
                        <div id="result-${genre.genre_id}"></div>
                    </div>
                `;
            });
        });
}

function updateGenreName(genreId) {
    const newName = document.getElementById(`genre-${genreId}`).value;

    if (!newName.trim()) {
        alert("Genre name cannot be empty");
        return;
    }

    fetch(`http://localhost:3000/genres/${genreId}`, {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ name: newName }),
    })
        .then((response) => response.json())
        .then((result) => {
            document.getElementById(
                `result-${genreId}`
            ).innerHTML = `<p style="color: green;">${result.message}</p>`;
        })
        .catch((error) => {
            document.getElementById(
                `result-${genreId}`
            ).innerHTML = `<p style="color: red;">Error: ${error.message}</p>`;
        });
}
```

---

## Testing Your Implementation

### Test Each Exercise:

1. **POST /directors**: Try adding directors with different data
2. **PUT /movies/:id/description**: Update descriptions for existing movies
3. **DELETE /movies/:id**: Delete movies and verify they're removed
4. **POST /movies/:id/reviews**: Add reviews and see updated ratings
5. **PUT /genres/:id**: Rename genres and check navigation updates

### Key Points to Remember:

-   **POST/PUT requests need `Content-Type: application/json` header**
-   **Always use `JSON.stringify()` for request body data**
-   **Server needs `express.json()` middleware to parse request bodies**
-   **Handle errors gracefully with try-catch blocks**
-   **Validate user input before sending requests**
-   **Use appropriate HTTP status codes (404, 500, etc.)**

### RESTful URL Patterns Summary:

| Method   | URL Pattern | Purpose          |
| -------- | ----------- | ---------------- |
| `GET`    | `/movies`   | Get all movies   |
| `POST`   | `/movies`   | Create new movie |
| `GET`    | `/movies/5` | Get movie #5     |
| `PUT`    | `/movies/5` | Update movie #5  |
| `DELETE` | `/movies/5` | Delete movie #5  |

Now you've implemented all four CRUD operations using RESTful API principles!

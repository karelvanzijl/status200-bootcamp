# Practice: Movie Details Page

Create a movie details page that displays detailed information about a selected movie, including its title, description, release year, genre, average rating, and number of ratings. Each movie card on the genre page should link to this movie details page.

---

```javascript
// server/index.js
const express = require("express");
const cors = require("cors");
const app = express();
const port = 3000;

app.use(express.json());
app.use(cors());

// Database connection
const mysql = require("mysql2/promise");
const db = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "",
    database: "movie-database",
});

/*
 *   ↑↑↑ DO NOT change the code above this comment
 *   =============================================
 *   ↓↓↓ ADD your code below this comment
 */

// Root route
app.get("/", (req, res) => {
    // Send a response
    res.send("Hello World!");
});

// Create a route to get all genres
app.get("/genres", async (req, res) => {
    // Query the database for all genres
    const results = await db.query(`
        SELECT genre_id, name 
        FROM genres 
        ORDER BY name
    `);

    // Send the results as the response
    res.send(results[0]);
});

// Create a route to get all movies for a specific genre
app.get("/genre/:genre_id", async (req, res) => {
    // Get the genre_id from the request parameters
    const genreId = req.params.genre_id;

    // Query the database for all movies for the specific genre
    const results = await db.query(`
        SELECT 
            m.movie_id,
            m.title,
            m.release_year,
            m.duration_minutes,
            m.description,
            d.name AS director_name,
            COUNT(r.review_id) AS numberOfReviews,
            ROUND(AVG(r.rating), 1) AS averageRating
        FROM movies m
        JOIN directors d ON m.director_id = d.director_id
        JOIN movie_genres mg ON m.movie_id = mg.movie_id
        JOIN reviews r ON r.movie_id=m.movie_id
        WHERE mg.genre_id = ${genreId}
        GROUP BY m.movie_id
        ORDER BY m.release_year DESC, m.title
    `);

    // Send the results as the response
    res.send(results[0]);
});

// Create a route to get a specific movie by its ID
app.get("/movies/:movie_id", async (req, res) => {
    // Get the movie_id from the request parameters
    const movieId = req.params.movie_id;

    // Query the database for all movies for the specific genre
    const results = await db.query(`
        SELECT 
            m.movie_id,
            m.title,
            m.release_year,
            m.duration_minutes,
            m.description,
            d.name AS director_name,
            COUNT(r.review_id) AS numberOfReviews,
            ROUND(AVG(r.rating), 1) AS averageRating
        FROM movies m
        JOIN directors d ON m.director_id = d.director_id
        JOIN reviews r ON r.movie_id=m.movie_id
        WHERE m.movie_id = ${movieId}
        GROUP BY m.movie_id
        ORDER BY m.release_year DESC, m.title
    `);

    // Send the results as the response
    res.send(results[0][0]);
});

/*
 *   ↑↑↑ ADD your code above this comment
 *   =============================================
 *   ↓↓↓ DO NOT change the code below this comment
 */
app.listen(port, () => {
    console.log(`Server app listening at http://localhost:${port}`);
});
```

```javascript
// public/app.js
function fetchAndDisplayGenres() {
    // Fetch the genres from the server
    fetch("http://localhost:3000/genres")
        .then((response) => response.json())
        .then((genres) => {
            // Test if we get the genres
            // console.log(genres);

            // Get the navigation menu element
            // Still need to add id="nav-menu" to the <ul> element in index.html
            const navMenu = document.getElementById("nav-menu");

            // Loop through the genres and create a list item for each genre
            for (let i = 0; i < genres.length; i++) {
                // Get the genre
                const genre = genres[i];

                // Add the list item to the navigation menu
                navMenu.innerHTML += `
                    <li>
                        <a href="genre.html?genre_id=${genre.genre_id}">
                            ${genre.name}
                        </a>
                    </li>
                `;
            }
        })
        // Didn't cover error handling in the lesson, but it's a good practice to add it
        .catch((error) => {
            // In case of an error (404, 500, etc)
            console.error("Error fetching genres:", error);
        });
}

function fetchAndDisplayMoviesByGenre() {
    // Get the genre ID from the URL query parameter
    const urlParams = new URLSearchParams(window.location.search);
    const genreId = urlParams.get("genre_id");

    // Fetch the movies for that genre from the server
    fetch(`http://localhost:3000/genre/${genreId}`)
        .then((response) => response.json())
        .then((movies) => {
            // Test if we get the movies
            // console.log(movies);

            // Get the container element
            // Still need to add id="movies-container" to a <div> element in genre.html
            const moviesContainer = document.getElementById("movies-container");

            // Loop through the movies and create a card for each movie
            for (let i = 0; i < movies.length; i++) {
                // Get the movie
                const movie = movies[i];

                // Add the movie card to the container
                moviesContainer.innerHTML += `
                    <div class="movie-card">
                        <h2>${movie.title} (${movie.release_year})</h2>
                        <p><strong>Duration:</strong> ${movie.duration_minutes} minutes</p>
                        <p><strong>Director:</strong> ${movie.director_name}</p>
                        <p><strong>Rating:</strong> ${movie.averageRating} out of ${movie.numberOfReviews} reviews</p>
                        <p>${movie.description}</p>
                        <p>
                            <a href="movie.html?movie_id=${movie.movie_id}">
                                View Details
                            </a>
                        </p>
                    </div>
                `;
            }
        })
        // Didn't cover error handling in the lesson, but it's a good practice to add it
        .catch((error) => {
            // In case of an error (404, 500, etc)
            console.error("Error fetching movies:", error);
        });
}

function fetchAndDisplayMovieDetails() {
    // Get the movie ID from the URL query parameter
    const urlParams = new URLSearchParams(window.location.search);
    const movieId = urlParams.get("movie_id");

    fetch("http://localhost:3000/movies/" + movieId)
        .then((response) => response.json())
        .then((movie) => {
            const display = document.getElementById("movies-container");
            display.innerHTML = `
                <div class="sssmovie-card">
                    <h2>${movie.title} (${movie.release_year})</h2>
                    <p><strong>Duration:</strong> ${movie.duration_minutes} minutes</p>
                    <p><strong>Director:</strong> ${movie.director_name}</p>
                    <p><strong>Rating:</strong> ${movie.averageRating} out of ${movie.numberOfReviews} reviews</p>
                    <p>${movie.description}</p>
                </div>
            `;
        });
}

// Call the function to fetch and display the genres in the nav menu
// We can do this because because all our pages load app.js
// and we want to show the genres in the navigation menu on all pages
fetchAndDisplayGenres();
```

```html
<!-- public/movie.html -->
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="styles.css" />
        <title>Movie Details</title>
    </head>
    <body>
        <!-- Navigation Menu -->
        <nav>
            <ul id="nav-menu">
                <li><a href="index.html">Home</a></li>
            </ul>
        </nav>

        <!-- Movie details container -->
        <h1>Movie Details</h1>
        <div id="movies-container"></div>

        <!-- Load app.js -->
        <script src="app.js"></script>
        <script>
            fetchAndDisplayMovieDetails();
        </script>
    </body>
</html>
```

## Task 2 - Frontend Integration

-   Update the `fetchAndDisplayMoviesByGenre()` function in `app.js` to display the average rating and the number of ratings for each movie.

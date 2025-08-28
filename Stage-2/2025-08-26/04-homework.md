# Homework - Movie Ratings

We have a movie database application that allows users to browse movies by genre. Each movie can have multiple reviews, and each review includes a rating from 1 to 10.

Your task is to enhance the application by adding the average rating and the number of ratings for each movie shown on the genre.html page.

## Setup

Before you get started, ensure you have the latest version of the project code we worked on in class.

In case you don't have it: [follow the setup instruction](#setup-instructions-optional) at the bottom of this document.

---

## Step 1 - Server-Side

#### Thought Process

To get the average rating and the number of ratings, we need to collect that data from the `reviews` table.

We can do this by joining the `reviews` table with the `movies` table on the `movie_id` column.

Do we need to use GROUP BY?

-   Yes, because we want to group the reviews by movie and calculate the average rating and the number of ratings for each movie.
-   [Checkout this document for help](../2025-08-21/03-aggregate-functions.md)
    -   You will need to use the `AVG()` and `COUNT()` aggregate functions.
    -   Use `ROUND()` to round the average rating to 1 decimal place.
    -   You'll need to use `GROUP BY` to group the results by movie ID.
    -   You will need to join the `reviews` table to get the ratings for each movie.

#### Work out what we just discussed above.

-   Update the SQL query in the `/genre/:genre_id` route to include the average rating and the number of ratings for each movie.
    -   Optional: before changing the query in your server script, you can test the query in a MySQL client like TablePlus, SQL Fiddle, or any other MySQL client you prefer.
    -   Once you have the query working, update the server script to use the new query.
-   Test the route by opening the following URL in your browser: `http://localhost:3000/genre/1`. You should see a JSON array of movies for the genre with ID 1, including the average rating and the number of ratings for each movie.

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

/*
 *   ↑↑↑ ADD your code above this comment
 *   =============================================
 *   ↓↓↓ DO NOT change the code below this comment
 */
app.listen(port, () => {
    console.log(`Server app listening at http://localhost:${port}`);
});
```

## Step 2 - Client-Side

-   Update the `fetchAndDisplayMoviesByGenre()` function (or whatever you called it) in `app.js` to display the average rating and the number of ratings for each movie.

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

// Call the function to fetch and display the genres in the nav menu
// We can do this because because all our pages load app.js
// and we want to show the genres in the navigation menu on all pages
fetchAndDisplayGenres();
```

---

# Setup Instructions (optional)

Download the [project code here](./04-homework/movie-website-v5.zip) and follow these steps:

### 1. Extract files

Unzip the file you downloaded. Inside you'll find three folders:

-   `database/` - Contains SQL scripts to set up the database schema and sample data.
-   `server/` - Contains the Node.js server code.
-   `public/` - Contains the frontend HTML, CSS, and JavaScript files.

### 2. Setup Database

If you haven't already, set up your MySQL database using the `setup-databse.sql` script located in the `database/` folder.

### 3. Setup - Node.js Server

1. Navigate to the `server/` directory
2. Install the required dependencies:

    ```bash
    # No need to run npm init -y if package.json already exists
    # Which in this case it does
    # The command below will install all dependencies listed in package.json
    npm install
    ```

3. Update the database connection details in `index.js` if necessary (username, password, database name).
4. Start the server: `node --watch index.js`
5. Test the server by navigating to `http://localhost:3000` in your web browser.
6. You should see "Hello World!" displayed in the browser.

### 4. Setup - Website

1. Navigate to the `public/` directory:
2. Open `index.html` in your web browser to view the website.
3. Ensure the website is communicating with the server by checking if the navigation menu is populated with all the genres from the database.
4. Click on a genre link to see the movies for that genre displayed on the page.

# Homework: Movie Website

Add a movie details page using the movie ID allowing users to view more information about a specific movie.

## Requirements

**1. Link to the movie details page (Client-Side):**

Add a link to each movie card in your website that navigates to your movie details page with a `query paramater` to tell which movie details you want to see:

`movie.html?id=1`

**2. Movie details page (Client-Side):**

Create a new HTML file named `movie.html` that will display the details of a movie based on the ID passed in the query parameter. Use the following steps:

1. Retrieve the `id` from the query parameters of the URL.
2. Use the `fetch` API to get the movie data from the server using the ID.

```javascript
// Get the query string part of the URL (everything after the ?)
const queryString = window.location.search;

// Create a URLSearchParams object
const urlParams = new URLSearchParams(queryString);

// Get the value of "id"
const movieId = urlParams.get("id");

// Go fetch the movie data from the server
```

**3. Get the movie data from the server (Server-Side):**

Add a new endpoint in your Node.js server to handle requests for movie details by ID.

The server should respond with the movie data in JSON format when a request is made to `/movies/:id`. Just that one movie should be returned based on the ID.

**4. Display all movie properties on the page (Client-Side):**

-   Title
-   Year
-   Director
-   Rating (based on review rating)
-   Reviews (count of reviews)
-   Genre
-   Description
-   Actors
-   Video (embedded player)
    ```html
    <video controls>
        <source src="movie-video-url.mp4" type="video/mp4" />
        Your browser does not support the video tag.
    </video>
    ```

## Started Code

You can download this [ZIP file](./movie-website-v3.zip) with all the code used in class so far. You're welcome to use this code as a starting point for your homework.

**Important:**

This ZIP file contains 2 directories:

`server/`:

Contains the Node.js server code.

1.  **You'll need to run `npm install` in this directory to install the required packages (express and cors).**
2.  After that, you can run the server with `node server.js`. **Make sure you're in the `server` directory when you run this command.**
3.  Check if the server is running by visiting `http://localhost:3000` in your browser.

`website/`:

Contains the HTML, CSS, and JavaScript files for the client-side of the movie website.

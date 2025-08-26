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

## Step 2 - Client-Side

-   Update the `fetchAndDisplayMoviesByGenre()` function (or whatever you called it) in `app.js` to display the average rating and the number of ratings for each movie.

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

### 4. Setup - Website

1. Navigate to the `public/` directory:
2. Open `index.html` in your web browser to view the website.
3. Ensure the website is communicating with the server by checking if the navigation menu is populated with all the genres from the database.
4. Click on a genre link to see the movies for that genre displayed on the page.

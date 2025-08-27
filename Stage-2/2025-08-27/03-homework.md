# Homework - Movie Homepage

We have a movie database application that allows users to browse movies by genre and see details about each movie. But we are missing acontent on the homepage.

Your task is to enhance the application by adding the latest 2 movies of each genre on the homepage (index.html).

## Setup

Before you get started, ensure you have the latest version of the project code we worked on in class.

In case you don't have it: [follow the setup instruction](#setup-instructions-optional) at the bottom of this document.

## Submission

Please submit your homework by ZIPping your modified project folder.

**REMOVE** the `node_modules` folder and the `package-lock.json` file before zipping.

---

# Table of Contents

-   [TO-DO | Server-Side](#to-do--server-side)
    -   [Approach 1: Add URL query paramater to route](#approach-1-add-url-query-paramater-to-route)
    -   [Approach 2: Create a new route](#approach-2-create-a-new-route)
    -   [Approach 3: Old School (not recommended)](#approach-3-old-school-not-recommended)
-   [TO-DO | Client-Side](#to-do--client-side)
    -   [Approach 1: Fetch latest 2 movies for each genre](#approach-1-fetch-latest-2-movies-for-each-genre)
    -   [Approach 2: Fetch from new route](#approach-2-fetch-from-new-route)
    -   [Approach 3: Old School (not recommended)](#approach-3-old-school-not-recommended)

---

## TO-DO | Server-Side

#### Approach 1: Add URL query paramater to route

For each genre, we need to get the latest 2 movies of that genre from the database. To do this, we can modify the existing `/genre/:genre_id` route to accept a **query parameter** that specifies the number of movies to return.

_How again do we get an URL query parameter in Express?_

-   `req.query` for **query parameters** (after the `?` in the URL) query parameter.

_Notice the difference with **route parameters**:_

-   `req.params` for URL parameters (part of the URL path)

**Important**: We are talking server-side code here, not client-side code!!! When we make a fetch request from the client-side, we can also add query parameters to the URL.

**Execution**

What do we actually need to do? We already have a route that returns all the genres in database. We also have a route that returns all movies for a specific genre. But this route returns all movies for that genre. We need to modify this route to return only the latest 2 movies for that genre if we ask for it. Otherwise, it should return all movies for that genre like it does now.

-   Update the `/genre/:genre_id` route to check for a `?limit=...` query parameter.
    -   If the `limit` query parameter is present, modify the SQL query to include a `LIMIT` clause to return only the specified number of movies.
    -   Ensure the movies are ordered by release year in descending order to get the latest movies.
-   Test if everything is working:
    -   Open `http://localhost:3000/genres/1` in your browser to see all movies that have genre_id 1.
    -   Open `http://localhost:3000/genre/1?limit=2` in your browser to see the latest 2 movies that have genre_id 1.

If the all above is working, we can move on to the next step. Your server-side code is done for now and you're ready to move on to the client-side code.

#### Approach 2: Create a new route

Create a new route `/latest-movies` that returns the latest 2 movies for each genre in a single JSON response. We need to loop through all genres and for each genre get the latest 2 movies.

**Execution**

-   Create a new route `/latest-movies` that returns the latest 2 movies for each genre.
-   We need to fetch all genres first, then for each genre fetch the query the database for the latest 2 movies of that genre.
    -   We can copy the query code from the `/genre/:genre_id` route and use it in the new route.
        -   Make sure to use `LIMIT 2` and `ORDER BY release_year DESC` in the SQL query.
-   Combine the results into a single JSON response and send it back to the client.
-   Test if everything is working:
    -   Open `http://localhost:3000/latest-movies` in your browser to see if you get the latest 2 movies for each genre in 1 JSON response.

If the all above is working, we can move on to the next step. Your server-side code is done for now and you're ready to move on to the client-side code.

#### Approach 3: Old School (not recommended)

Create a new route `/latest-movies`. In this route, we will write a single SQL query that fetches all movies ordered by genre and release year.

**Option 1:** We wil then loop though the results in JavaScript and group them by genre, keeping only the latest 2 movies for each genre.

**Option 2:** Return all movies to the client-side and do the grouping and filtering there.

**Test**
Test if everything is working. If the all above is working, we can move on to the next step. Your server-side code is done for now and you're ready to move on to the client-side code.

---

## TO-DO | Client-Side

Our server-side code is done and ready to receive requests from the client-side.

#### Approach 1: Fetch latest 2 movies for each genre

In `index.html`, we need to fetch the latest 2 movies for each genre and display them on the homepage.

To do this, we need to:

-   Fetch all genres from the server.
-   For each genre, fetch the latest 2 movies using the updated `/genre/:genre_id` route by adding the `?limit=2` query parameter.
-   Display the movies under each genre section on the homepage.
-   Test if everything is working:
    -   Open `index.html` in your browser.
    -   You should see the latest 2 movies for each genre displayed on the homepage.
    -   All other pages and functionality should still work as before.

#### Approach 2: Fetch from new route

In `index.html`, we need to fetch the latest 2 movies for each genre from the new `/latest-movies` route and display them on the homepage.

To do this, we need to:

-   Fetch the data from the new `/latest-movies` route.
-   Loop through the data and create sections for each genre.
-   For each genre, display the latest 2 movies.
-   Test if everything is working:
    -   Open `index.html` in your browser.
    -   You should see the latest 2 movies for each genre displayed on the homepage.
    -   All other pages and functionality should still work as before.

#### Approach 3: Old School (not recommended)

**Option 1:**

-   Fetch the data from the new `/latest-movies` route.
-   Loop through the data and create sections for each genre.
-   For each genre, display the latest 2 movies.
-   Test if everything is working:
    -   Open `index.html` in your browser.
    -   You should see the latest 2 movies for each genre displayed on the homepage.
    -   All other pages and functionality should still work as before.

**Option 2:**

-   Fetch the data from the new `/latest-movies` route.
-   Loop through all movies and group them by genre, keeping only the latest 2 movies for each genre.
-   Create sections for each genre and display the latest 2 movies.
-   Test if everything is working:
    -   Open `index.html` in your browser.
    -   You should see the latest 2 movies for each genre displayed on the homepage.
    -   All other pages and functionality should still work as before.

---

# Setup Instructions (optional)

Download the [project code here](./03-homework/movie-website-v6.zip) and follow these steps:

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

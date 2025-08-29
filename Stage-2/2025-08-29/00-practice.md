# Practice - Movie Reviews

We have a movie database application that allows users to browse movies by genre and see details about each movie. But we are missing reviews on the movie detail page.

Your task is to enhance the application by adding the reviews to the movie details page (movie.html).

## Setup Instructions (optional)

Download the [project code here](./practice/movie-website-v7.zip) and follow these steps:

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

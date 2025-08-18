# Homework: Movie Website

-   Add a movie details page using the movie ID.

## Requirements

-   Add a new dymamic route to handle movie details, something like `/movies/:id`.
-   Create a `movie.html` to show the movie details.
    -   All movie properties should be displayed:
        -   Title
        -   Year
        -   Director
        -   Rating
        -   Genre
        -   Description
        -   Actors
        -   Poster (image)
        -   Video (embedded player)
-   All pages must work:
    -   Homepage
    -   Genre pages (Action, Comedy, Drama, Horror, Sci-Fi)
    -   Movie details page

## Reminder - Node setup

1. Create a new directory for your project.
2. Navigate to the directory in your terminal.
3. Run `npm init -y` to create a `package.json` file.
    - the `-y` flag automatically answers "yes" to all prompts, creating a default `package.json` quickly.
4. Install Express by running `npm install express`.
5. Install Cors by running `npm install cors`.
6. Create a new file named `app.js` (or any name you prefer).
7. Open the file in your code editor and start writing your Express application.

## Ready to use

-   [Node server code](#latest-code-node-server---movies-using-expressjs)
-   [Website Homepage](#latest-code-client-side---homepage)
-   [Website Genre Page](#latest-code-client-side---genre-page)

### Latest Code Node Server - Movies using Express.js

```javascript
const express = require("express");
const cors = require("cors");
const app = express();
const port = 3000;

app.use(cors());
app.listen(port, () => {
    console.log(`Server app listening at http://localhost:${port}`);
});

/*
 *   ↑↑↑ DO NOT change the code above this comment
 *   =============================================
 *   ↓↓↓ ADD your code below this comment
 */

// Get Homepage movie data
app.get("/", (req, res) => {
    let data = [];
    for (let i = 0; i < genres.length; i++) {
        let moviesByGenre = [];
        for (let j = 0; j < movies.length; j++) {
            if (movies[j].genre == genres[i]) {
                moviesByGenre.push(movies[j]);
                if (moviesByGenre.length >= 2) {
                    break;
                }
            }
        }
        data.push({
            genre: genres[i],
            movies: moviesByGenre,
        });
    }
    res.json(data);
});

/* 
    Get all movies of a certain genre:

    - /genres/Action
    - /genres/Comedy
    - /genres/Drama
    - /genres/Horror
    - /genres/Sci-Fi
*/
app.get("/genres/:genre", (req, res) => {
    const genre = req.params.genre;
    const moviesByGenre = [];
    for (let i = 0; i < movies.length; i++) {
        if (movies[i].genre == genre) {
            moviesByGenre.push(movies[i]);
        }
    }
    res.json(moviesByGenre);
});

// Movie data
const movies = [
    {
        id: 1,
        title: "Mad Max: Fury Road",
        year: 2015,
        director: "George Miller",
        rating: 8.6,
        genre: "Action",
        description:
            "In a desert wasteland, Max and Furiosa flee a tyrant in a roaring convoy chase.",
        actors: ["Tom Hardy", "Charlize Theron", "Nicholas Hoult"],
        poster: "https://upload.wikimedia.org/wikipedia/en/6/6e/Mad_Max_Fury_Road.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    },
    {
        id: 2,
        title: "John Wick",
        year: 2014,
        director: "Chad Stahelski",
        rating: 8.0,
        genre: "Action",
        description:
            "A retired hitman returns to the underworld to exact revenge.",
        actors: ["Keanu Reeves", "Michael Nyqvist", "Alfie Allen"],
        poster: "https://upload.wikimedia.org/wikipedia/en/9/98/John_Wick_TeaserPoster.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
    },
    {
        id: 3,
        title: "Mission: Impossible – Fallout",
        year: 2018,
        director: "Christopher McQuarrie",
        rating: 8.2,
        genre: "Action",
        description:
            "Ethan Hunt races to stop a global catastrophe after a mission goes wrong.",
        actors: ["Tom Cruise", "Henry Cavill", "Rebecca Ferguson"],
        poster: "https://upload.wikimedia.org/wikipedia/en/f/ff/MI_%E2%80%93_Fallout.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
    },
    {
        id: 4,
        title: "Die Hard",
        year: 1988,
        director: "John McTiernan",
        rating: 8.2,
        genre: "Action",
        description:
            "An NYPD cop battles terrorists in a Los Angeles skyscraper on Christmas Eve.",
        actors: ["Bruce Willis", "Alan Rickman", "Bonnie Bedelia"],
        poster: "https://upload.wikimedia.org/wikipedia/en/thumb/c/ca/Die_Hard_%281988_film%29_poster.jpg/250px-Die_Hard_%281988_film%29_poster.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
    },
    {
        id: 5,
        title: "The Dark Knight",
        year: 2008,
        director: "Christopher Nolan",
        rating: 9.0,
        genre: "Action",
        description:
            "Batman faces the Joker, whose chaos tests Gotham and the hero’s limits.",
        actors: ["Christian Bale", "Heath Ledger", "Aaron Eckhart"],
        poster: "https://upload.wikimedia.org/wikipedia/en/1/1c/The_Dark_Knight_%282008_film%29.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
    },
    {
        id: 6,
        title: "Superbad",
        year: 2007,
        director: "Greg Mottola",
        rating: 7.7,
        genre: "Comedy",
        description:
            "Two best friends scramble to make their last week of high school legendary.",
        actors: ["Jonah Hill", "Michael Cera", "Christopher Mintz-Plasse"],
        poster: "https://upload.wikimedia.org/wikipedia/en/8/8b/Superbad_Poster.png",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
    },
    {
        id: 7,
        title: "The Hangover",
        year: 2009,
        director: "Todd Phillips",
        rating: 7.7,
        genre: "Comedy",
        description:
            "After a wild night in Vegas, three friends retrace their steps to find the groom.",
        actors: ["Bradley Cooper", "Ed Helms", "Zach Galifianakis"],
        poster: "https://upload.wikimedia.org/wikipedia/en/b/b9/Hangoverposter09.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
    },
    {
        id: 8,
        title: "Groundhog Day",
        year: 1993,
        director: "Harold Ramis",
        rating: 8.0,
        genre: "Comedy",
        description:
            "A cynical weatherman relives the same day until he gets life right.",
        actors: ["Bill Murray", "Andie MacDowell", "Chris Elliott"],
        poster: "https://upload.wikimedia.org/wikipedia/en/thumb/b/b1/Groundhog_Day_%28movie_poster%29.jpg/250px-Groundhog_Day_%28movie_poster%29.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
    },
    {
        id: 9,
        title: "Bridesmaids",
        year: 2011,
        director: "Paul Feig",
        rating: 7.5,
        genre: "Comedy",
        description:
            "A down-on-her-luck maid of honor spirals as a wedding approaches.",
        actors: ["Kristen Wiig", "Maya Rudolph", "Rose Byrne"],
        poster: "https://upload.wikimedia.org/wikipedia/en/thumb/d/df/BridesmaidsPoster.jpg/250px-BridesmaidsPoster.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
    },
    {
        id: 10,
        title: "Mean Girls",
        year: 2004,
        director: "Mark Waters",
        rating: 7.1,
        genre: "Comedy",
        description:
            "A teen navigates high school cliques after moving from Africa to the suburbs.",
        actors: ["Lindsay Lohan", "Rachel McAdams", "Tina Fey"],
        poster: "https://upload.wikimedia.org/wikipedia/en/thumb/a/ac/Mean_Girls_film_poster.png/250px-Mean_Girls_film_poster.png",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4",
    },
    {
        id: 11,
        title: "The Shawshank Redemption",
        year: 1994,
        director: "Frank Darabont",
        rating: 9.3,
        genre: "Drama",
        description:
            "Two imprisoned men bond over years, finding solace and redemption.",
        actors: ["Tim Robbins", "Morgan Freeman", "Bob Gunton"],
        poster: "https://upload.wikimedia.org/wikipedia/en/8/81/ShawshankRedemptionMoviePoster.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4",
    },
    {
        id: 12,
        title: "Forrest Gump",
        year: 1994,
        director: "Robert Zemeckis",
        rating: 8.8,
        genre: "Drama",
        description:
            "A simple man unwittingly influences decades of American history.",
        actors: ["Tom Hanks", "Robin Wright", "Gary Sinise"],
        poster: "https://upload.wikimedia.org/wikipedia/en/6/67/Forrest_Gump_poster.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
    },
    {
        id: 13,
        title: "The Godfather",
        year: 1972,
        director: "Francis Ford Coppola",
        rating: 9.2,
        genre: "Drama",
        description:
            "The aging patriarch of a crime dynasty transfers control to his reluctant son.",
        actors: ["Marlon Brando", "Al Pacino", "James Caan"],
        poster: "https://upload.wikimedia.org/wikipedia/en/1/1c/Godfather_ver1.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4",
    },
    {
        id: 14,
        title: "Moonlight",
        year: 2016,
        director: "Barry Jenkins",
        rating: 8.2,
        genre: "Drama",
        description:
            "A young Black man grapples with identity and love across three chapters of his life.",
        actors: ["Trevante Rhodes", "André Holland", "Janelle Monáe"],
        poster: "https://upload.wikimedia.org/wikipedia/en/8/84/Moonlight_%282016_film%29.png",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
    },
    {
        id: 15,
        title: "Whiplash",
        year: 2014,
        director: "Damien Chazelle",
        rating: 8.5,
        genre: "Drama",
        description:
            "An ambitious drummer clashes with a ruthless jazz instructor.",
        actors: ["Miles Teller", "J. K. Simmons", "Melissa Benoist"],
        poster: "https://upload.wikimedia.org/wikipedia/en/0/01/Whiplash_poster.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
    },
    {
        id: 16,
        title: "The Exorcist",
        year: 1973,
        director: "William Friedkin",
        rating: 8.1,
        genre: "Horror",
        description:
            "When a girl is possessed, a priest confronts a demonic force.",
        actors: ["Ellen Burstyn", "Max von Sydow", "Linda Blair"],
        poster: "https://upload.wikimedia.org/wikipedia/en/thumb/7/7b/Exorcist_ver2.jpg/250px-Exorcist_ver2.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
    },
    {
        id: 17,
        title: "A Nightmare on Elm Street",
        year: 1984,
        director: "Wes Craven",
        rating: 7.4,
        genre: "Horror",
        description:
            "Teens are stalked in their dreams by a burned killer with a bladed glove.",
        actors: ["Heather Langenkamp", "Robert Englund", "Johnny Depp"],
        poster: "https://upload.wikimedia.org/wikipedia/en/thumb/f/fa/A_Nightmare_on_Elm_Street_%281984%29_theatrical_poster.jpg/250px-A_Nightmare_on_Elm_Street_%281984%29_theatrical_poster.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
    },
    {
        id: 18,
        title: "The Conjuring",
        year: 2013,
        director: "James Wan",
        rating: 7.5,
        genre: "Horror",
        description:
            "Paranormal investigators help a family terrorized by a dark presence.",
        actors: ["Vera Farmiga", "Patrick Wilson", "Lili Taylor"],
        poster: "https://upload.wikimedia.org/wikipedia/en/8/8c/The_Conjuring_poster.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
    },
    {
        id: 19,
        title: "Hereditary",
        year: 2018,
        director: "Ari Aster",
        rating: 7.8,
        genre: "Horror",
        description: "A family’s grief uncovers a chilling, inherited fate.",
        actors: ["Toni Collette", "Alex Wolff", "Milly Shapiro"],
        poster: "https://upload.wikimedia.org/wikipedia/en/thumb/d/d9/Hereditary.png/250px-Hereditary.png",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
    },
    {
        id: 20,
        title: "Get Out",
        year: 2017,
        director: "Jordan Peele",
        rating: 8.0,
        genre: "Horror",
        description:
            "A Black man uncovers a sinister secret while visiting his white girlfriend’s family.",
        actors: ["Daniel Kaluuya", "Allison Williams", "Bradley Whitford"],
        poster: "https://upload.wikimedia.org/wikipedia/en/a/a3/Get_Out_poster.png",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
    },
    {
        id: 21,
        title: "Interstellar",
        year: 2014,
        director: "Christopher Nolan",
        rating: 8.6,
        genre: "Sci-Fi",
        description:
            "Explorers travel through a wormhole to save humanity from a dying Earth.",
        actors: ["Matthew McConaughey", "Anne Hathaway", "Jessica Chastain"],
        poster: "https://upload.wikimedia.org/wikipedia/en/b/bc/Interstellar_film_poster.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
    },
    {
        id: 22,
        title: "Blade Runner 2049",
        year: 2017,
        director: "Denis Villeneuve",
        rating: 8.0,
        genre: "Sci-Fi",
        description:
            "A young blade runner unearths a secret that could plunge society into chaos.",
        actors: ["Ryan Gosling", "Harrison Ford", "Ana de Armas"],
        poster: "https://upload.wikimedia.org/wikipedia/en/9/9b/Blade_Runner_2049_poster.png",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
    },
    {
        id: 23,
        title: "The Matrix",
        year: 1999,
        director: "The Wachowskis",
        rating: 8.7,
        genre: "Sci-Fi",
        description:
            "A hacker learns reality is a simulation and joins the fight to free humanity.",
        actors: ["Keanu Reeves", "Laurence Fishburne", "Carrie-Anne Moss"],
        poster: "https://upload.wikimedia.org/wikipedia/en/9/94/The_Matrix.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    },
    {
        id: 24,
        title: "Inception",
        year: 2010,
        director: "Christopher Nolan",
        rating: 8.8,
        genre: "Sci-Fi",
        description:
            "A thief enters dreams to plant an idea in a target’s mind.",
        actors: ["Leonardo DiCaprio", "Joseph Gordon-Levitt", "Elliot Page"],
        poster: "https://upload.wikimedia.org/wikipedia/en/2/2e/Inception_%282010%29_theatrical_poster.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
    },
    {
        id: 25,
        title: "Star Wars: Episode IV – A New Hope",
        year: 1977,
        director: "George Lucas",
        rating: 8.6,
        genre: "Sci-Fi",
        description:
            "A farm boy joins a rebellion to destroy a planet-killing battle station.",
        actors: ["Mark Hamill", "Harrison Ford", "Carrie Fisher"],
        poster: "https://upload.wikimedia.org/wikipedia/en/8/87/StarWarsMoviePoster1977.jpg",
        video: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
    },
];
```

### Latest Code Client Side - Homepage

```html
<!-- index.html -->
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
        <nav>
            <a href="./index.html">Home</a> |
            <a href="./action.html">Action</a> |
            <a href="./comedy.html">Comedy</a> |
            <a href="./drama.html">Drama</a> |
            <a href="./horror.html">Horror</a> |
            <a href="./sci-fi.html">Sci-Fi</a>
        </nav>
        <br /><br />
        <div id="Action"></div>
        <div id="Comedy"></div>
        <div id="Drama"></div>
        <div id="Horror"></div>
        <div id="Sci-Fi"></div>
        <script>
            fetch("http://localhost:3000/")
                .then(function (response) {
                    return response.text();
                })
                .then(function (data) {
                    let genres = JSON.parse(data);
                    console.log(genres);
                    let display;
                    for (let i = 0; i < genres.length; i++) {
                        display = document.getElementById(genres[i].genre);
                        for (let j = 0; j < genres[i].movies.length; j++) {
                            let movie = genres[i].movies[j];
                            display.innerHTML += `
                                <div class="card">
                                    <img src="${movie.poster}" />
                                    <h2>${movie.title}</h2>
                                    <p>
                                        <strong>Year:</strong> 
                                        ${movie.year}
                                    </p>
                                    <p>
                                        <strong>Director:</strong>
                                        ${movie.director}
                                    </p>
                                    <p>
                                        <strong>Rating:</strong>
                                        ${movie.rating}
                                    </p>
                                    <p>
                                        <strong>Actors:</strong>
                                        ${movie.actors.join(", ")}
                                    </p>
                                    <p>
                                        ${movie.description}
                                    </p>
                                </div>
                            `;
                        }
                    }
                });
        </script>
    </body>
</html>
```

### Latest Code Client Side - Genre Page

Example code for the Action genre page. You'll need to create similar pages for Comedy, Drama, Horror, and Sci-Fi by changing the fetch URL to match the genre.

```html
<!-- action.html -->
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
    </head>
    <body>
        <nav>
            <a href="./index.html">Home</a> |
            <a href="./action.html">Action</a> |
            <a href="./comedy.html">Comedy</a> |
            <a href="./drama.html">Drama</a> |
            <a href="./horror.html">Horror</a> |
            <a href="./sci-fi.html">Sci-Fi</a>
        </nav>
        <br /><br />
        <div id="movies"></div>
        <script>
            let movieDisplay = document.getElementById("movies");
            fetch("http://localhost:3000/Action")
                .then(function (response) {
                    return response.text();
                })
                .then(function (data) {
                    let movies = JSON.parse(data);

                    for (let i = 0; i < movies.length; i++) {
                        movieDisplay.innerHTML += `
                            <div class="card">
                                <img src="${movies[i].poster}" />
                                <h2>${movies[i].title}</h2>
                                <p><strong>Year:</strong> ${movies[i].year}</p>
                                <p>
                                    <strong>Director:</strong> 
                                    ${movies[i].director}
                                </p>
                                <p>
                                    <strong>Rating:</strong> 
                                    ${movies[i].rating}
                                </p>
                                <p>
                                    <strong>Actors:</strong> 
                                    ${movies[i].actors.join(", ")}
                                </p>
                                <p>${movies[i].description}</p>
                            </div>
                        `;
                    }
                });
        </script>
    </body>
</html>
```

# Assigment Code

## Node Server

```javascript
// Import the built-in HTTP module
const http = require("http");

const movies = [
    // ===== ACTION =====
    {
        title: "Mad Max: Fury Road",
        year: 2015,
        director: "George Miller",
        rating: 8.6,
        genre: "Action",
        description:
            "In a desert wasteland, Max and Furiosa flee a tyrant in a roaring convoy chase.",
        actors: ["Tom Hardy", "Charlize Theron", "Nicholas Hoult"],
        poster: "https://upload.wikimedia.org/wikipedia/en/6/6e/Mad_Max_Fury_Road.jpg", // Wikipedia poster
    },
    {
        title: "John Wick",
        year: 2014,
        director: "Chad Stahelski",
        rating: 8.0,
        genre: "Action",
        description:
            "A retired hitman returns to the underworld to exact revenge.",
        actors: ["Keanu Reeves", "Michael Nyqvist", "Alfie Allen"],
        poster: "https://upload.wikimedia.org/wikipedia/en/9/98/John_Wick_TeaserPoster.jpg",
    },
    {
        title: "Mission: Impossible – Fallout",
        year: 2018,
        director: "Christopher McQuarrie",
        rating: 8.2,
        genre: "Action",
        description:
            "Ethan Hunt races to stop a global catastrophe after a mission goes wrong.",
        actors: ["Tom Cruise", "Henry Cavill", "Rebecca Ferguson"],
        poster: "https://upload.wikimedia.org/wikipedia/en/f/ff/MI_%E2%80%93_Fallout.jpg",
    },
    {
        title: "Die Hard",
        year: 1988,
        director: "John McTiernan",
        rating: 8.2,
        genre: "Action",
        description:
            "An NYPD cop battles terrorists in a Los Angeles skyscraper on Christmas Eve.",
        actors: ["Bruce Willis", "Alan Rickman", "Bonnie Bedelia"],
        poster: "https://upload.wikimedia.org/wikipedia/en/thumb/c/ca/Die_Hard_%281988_film%29_poster.jpg/250px-Die_Hard_%281988_film%29_poster.jpg",
    },
    {
        title: "The Dark Knight",
        year: 2008,
        director: "Christopher Nolan",
        rating: 9.0,
        genre: "Action",
        description:
            "Batman faces the Joker, whose chaos tests Gotham and the hero’s limits.",
        actors: ["Christian Bale", "Heath Ledger", "Aaron Eckhart"],
        poster: "https://upload.wikimedia.org/wikipedia/en/1/1c/The_Dark_Knight_%282008_film%29.jpg",
    },

    // ===== COMEDY =====
    {
        title: "Superbad",
        year: 2007,
        director: "Greg Mottola",
        rating: 7.7,
        genre: "Comedy",
        description:
            "Two best friends scramble to make their last week of high school legendary.",
        actors: ["Jonah Hill", "Michael Cera", "Christopher Mintz-Plasse"],
        poster: "https://upload.wikimedia.org/wikipedia/en/8/8b/Superbad_Poster.png",
    },
    {
        title: "The Hangover",
        year: 2009,
        director: "Todd Phillips",
        rating: 7.7,
        genre: "Comedy",
        description:
            "After a wild night in Vegas, three friends retrace their steps to find the groom.",
        actors: ["Bradley Cooper", "Ed Helms", "Zach Galifianakis"],
        poster: "https://upload.wikimedia.org/wikipedia/en/b/b9/Hangoverposter09.jpg",
    },
    {
        title: "Groundhog Day",
        year: 1993,
        director: "Harold Ramis",
        rating: 8.0,
        genre: "Comedy",
        description:
            "A cynical weatherman relives the same day until he gets life right.",
        actors: ["Bill Murray", "Andie MacDowell", "Chris Elliott"],
        poster: "https://upload.wikimedia.org/wikipedia/en/thumb/b/b1/Groundhog_Day_%28movie_poster%29.jpg/250px-Groundhog_Day_%28movie_poster%29.jpg",
    },
    {
        title: "Bridesmaids",
        year: 2011,
        director: "Paul Feig",
        rating: 7.5,
        genre: "Comedy",
        description:
            "A down-on-her-luck maid of honor spirals as a wedding approaches.",
        actors: ["Kristen Wiig", "Maya Rudolph", "Rose Byrne"],
        poster: "https://upload.wikimedia.org/wikipedia/en/thumb/d/df/BridesmaidsPoster.jpg/250px-BridesmaidsPoster.jpg",
    },
    {
        title: "Mean Girls",
        year: 2004,
        director: "Mark Waters",
        rating: 7.1,
        genre: "Comedy",
        description:
            "A teen navigates high school cliques after moving from Africa to the suburbs.",
        actors: ["Lindsay Lohan", "Rachel McAdams", "Tina Fey"],
        poster: "https://upload.wikimedia.org/wikipedia/en/thumb/a/ac/Mean_Girls_film_poster.png/250px-Mean_Girls_film_poster.png",
    },

    // ===== DRAMA =====
    {
        title: "The Shawshank Redemption",
        year: 1994,
        director: "Frank Darabont",
        rating: 9.3,
        genre: "Drama",
        description:
            "Two imprisoned men bond over years, finding solace and redemption.",
        actors: ["Tim Robbins", "Morgan Freeman", "Bob Gunton"],
        poster: "https://upload.wikimedia.org/wikipedia/en/8/81/ShawshankRedemptionMoviePoster.jpg",
    },
    {
        title: "Forrest Gump",
        year: 1994,
        director: "Robert Zemeckis",
        rating: 8.8,
        genre: "Drama",
        description:
            "A simple man unwittingly influences decades of American history.",
        actors: ["Tom Hanks", "Robin Wright", "Gary Sinise"],
        poster: "https://upload.wikimedia.org/wikipedia/en/6/67/Forrest_Gump_poster.jpg",
    },
    {
        title: "The Godfather",
        year: 1972,
        director: "Francis Ford Coppola",
        rating: 9.2,
        genre: "Drama",
        description:
            "The aging patriarch of a crime dynasty transfers control to his reluctant son.",
        actors: ["Marlon Brando", "Al Pacino", "James Caan"],
        poster: "https://upload.wikimedia.org/wikipedia/en/1/1c/Godfather_ver1.jpg",
    },
    {
        title: "Moonlight",
        year: 2016,
        director: "Barry Jenkins",
        rating: 8.2,
        genre: "Drama",
        description:
            "A young Black man grapples with identity and love across three chapters of his life.",
        actors: ["Trevante Rhodes", "André Holland", "Janelle Monáe"],
        poster: "https://upload.wikimedia.org/wikipedia/en/8/84/Moonlight_%282016_film%29.png",
    },
    {
        title: "Whiplash",
        year: 2014,
        director: "Damien Chazelle",
        rating: 8.5,
        genre: "Drama",
        description:
            "An ambitious drummer clashes with a ruthless jazz instructor.",
        actors: ["Miles Teller", "J. K. Simmons", "Melissa Benoist"],
        poster: "https://upload.wikimedia.org/wikipedia/en/0/01/Whiplash_poster.jpg",
    },

    // ===== HORROR =====
    {
        title: "The Exorcist",
        year: 1973,
        director: "William Friedkin",
        rating: 8.1,
        genre: "Horror",
        description:
            "When a girl is possessed, a priest confronts a demonic force.",
        actors: ["Ellen Burstyn", "Max von Sydow", "Linda Blair"],
        poster: "https://upload.wikimedia.org/wikipedia/en/thumb/7/7b/Exorcist_ver2.jpg/250px-Exorcist_ver2.jpg",
    },
    {
        title: "A Nightmare on Elm Street",
        year: 1984,
        director: "Wes Craven",
        rating: 7.4,
        genre: "Horror",
        description:
            "Teens are stalked in their dreams by a burned killer with a bladed glove.",
        actors: ["Heather Langenkamp", "Robert Englund", "Johnny Depp"],
        poster: "https://upload.wikimedia.org/wikipedia/en/thumb/f/fa/A_Nightmare_on_Elm_Street_%281984%29_theatrical_poster.jpg/250px-A_Nightmare_on_Elm_Street_%281984%29_theatrical_poster.jpg",
    },
    {
        title: "The Conjuring",
        year: 2013,
        director: "James Wan",
        rating: 7.5,
        genre: "Horror",
        description:
            "Paranormal investigators help a family terrorized by a dark presence.",
        actors: ["Vera Farmiga", "Patrick Wilson", "Lili Taylor"],
        poster: "https://upload.wikimedia.org/wikipedia/en/8/8c/The_Conjuring_poster.jpg",
    },
    {
        title: "Hereditary",
        year: 2018,
        director: "Ari Aster",
        rating: 7.8,
        genre: "Horror",
        description: "A family’s grief uncovers a chilling, inherited fate.",
        actors: ["Toni Collette", "Alex Wolff", "Milly Shapiro"],
        poster: "https://upload.wikimedia.org/wikipedia/en/thumb/d/d9/Hereditary.png/250px-Hereditary.png",
    },
    {
        title: "Get Out",
        year: 2017,
        director: "Jordan Peele",
        rating: 8.0,
        genre: "Horror",
        description:
            "A Black man uncovers a sinister secret while visiting his white girlfriend’s family.",
        actors: ["Daniel Kaluuya", "Allison Williams", "Bradley Whitford"],
        poster: "https://upload.wikimedia.org/wikipedia/en/a/a3/Get_Out_poster.png",
    },

    // ===== SCI-FI =====
    {
        title: "Interstellar",
        year: 2014,
        director: "Christopher Nolan",
        rating: 8.6,
        genre: "Sci-Fi",
        description:
            "Explorers travel through a wormhole to save humanity from a dying Earth.",
        actors: ["Matthew McConaughey", "Anne Hathaway", "Jessica Chastain"],
        poster: "https://upload.wikimedia.org/wikipedia/en/b/bc/Interstellar_film_poster.jpg",
    },
    {
        title: "Blade Runner 2049",
        year: 2017,
        director: "Denis Villeneuve",
        rating: 8.0,
        genre: "Sci-Fi",
        description:
            "A young blade runner unearths a secret that could plunge society into chaos.",
        actors: ["Ryan Gosling", "Harrison Ford", "Ana de Armas"],
        poster: "https://upload.wikimedia.org/wikipedia/en/9/9b/Blade_Runner_2049_poster.png",
    },
    {
        title: "The Matrix",
        year: 1999,
        director: "The Wachowskis",
        rating: 8.7,
        genre: "Sci-Fi",
        description:
            "A hacker learns reality is a simulation and joins the fight to free humanity.",
        actors: ["Keanu Reeves", "Laurence Fishburne", "Carrie-Anne Moss"],
        poster: "https://upload.wikimedia.org/wikipedia/en/9/94/The_Matrix.jpg",
    },
    {
        title: "Inception",
        year: 2010,
        director: "Christopher Nolan",
        rating: 8.8,
        genre: "Sci-Fi",
        description:
            "A thief enters dreams to plant an idea in a target’s mind.",
        actors: ["Leonardo DiCaprio", "Joseph Gordon-Levitt", "Elliot Page"],
        poster: "https://upload.wikimedia.org/wikipedia/en/2/2e/Inception_%282010%29_theatrical_poster.jpg",
    },
    {
        title: "Star Wars: Episode IV – A New Hope",
        year: 1977,
        director: "George Lucas",
        rating: 8.6,
        genre: "Sci-Fi",
        description:
            "A farm boy joins a rebellion to destroy a planet-killing battle station.",
        actors: ["Mark Hamill", "Harrison Ford", "Carrie Fisher"],
        poster: "https://upload.wikimedia.org/wikipedia/en/8/87/StarWarsMoviePoster1977.jpg",
    },
];

// Create an HTTP server
const server = http.createServer((req, res) => {
    // Set CORS headers
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS");
    res.setHeader("Access-Control-Allow-Headers", "Content-Type");

    // Set response status and content type
    res.writeHead(200, { "Content-Type": "application/json" });

    // Your logic
    let data = [];
    if (req.url == "/") {
        const genres = ["Action", "Comedy", "Drama", "Horror", "Sci-Fi"];
        let genreMovies;
        for (let i = 0; i < genres.length; i++) {
            genreMovies = [];
            for (let j = 0; j < movies.length; j++) {
                if (movies[j].genre == genres[i]) {
                    genreMovies.push(movies[j]);
                    if (genreMovies.length >= 2) {
                        break;
                    }
                }
            }
            data.push({
                genre: genres[i],
                movies: genreMovies,
            });
        }
    } else if (req.url == "/action") {
        for (let i = 0; i < movies.length; i++) {
            if (movies[i].genre == "Action") {
                data.push(movies[i]);
            }
        }
    } else if (req.url == "/comedy") {
        for (let i = 0; i < movies.length; i++) {
            if (movies[i].genre == "Comedy") {
                data.push(movies[i]);
            }
        }
    } else if (req.url == "/drama") {
        for (let i = 0; i < movies.length; i++) {
            if (movies[i].genre == "Drama") {
                data.push(movies[i]);
            }
        }
    } else if (req.url == "/horror") {
        for (let i = 0; i < movies.length; i++) {
            if (movies[i].genre == "Horror") {
                data.push(movies[i]);
            }
        }
    } else if (req.url == "/sci-fi") {
        for (let i = 0; i < movies.length; i++) {
            if (movies[i].genre == "Sci-Fi") {
                data.push(movies[i]);
            }
        }
    }
    res.write(JSON.stringify(data));

    // Send response back to the client
    res.end();
});

// Start the server and listen on the specified port
const PORT = 3000;
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/`);
});
```

## Client Code

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
            fetch("http://localhost:3000/action")
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

Other HTML files (comedy.html, drama.html, horror.html, sci-fi.html) are the same as action.html, just change the fetch URL to the respective genre route.

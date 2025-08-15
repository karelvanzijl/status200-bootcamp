## Assignment: Movie Website

In this assignment, you will create a **movie website** using:

-   **Node.js** with the built-in `http` module for your server
-   **HTML, CSS, and JavaScript** for your client-side pages

---

### Project Structure

Your project will have **multiple HTML pages**, all connected through a navigation menu.

---

### Pages to Create

1. **Homepage**

    - Shows the **first two movies** from each genre.
    - Each genre section should have a **link** to its full list page.

2. **Action Movies Page**

3. **Comedy Movies Page**

4. **Drama Movies Page**

5. **Horror Movies Page**

6. **Sci-Fi Movies Page**

    - Each of these pages lists **all movies** from that genre.

---

### Navigation Menu

Every page should include a **navigation menu** so users can easily move between the homepage and each genre page.

---

### Movie Cards

-   Each movie should be displayed inside a **card** with:

    -   Title
    -   Year
    -   Director
    -   Rating
    -   Genre
    -   Description
    -   Actors (as a comma-separated list)
    -   Movie poster (image)

-   Make it **look nice** with CSS.
-   You **may** use AI to help generate your CSS styles.

---

### Requirements

-   You must have a **movies array** with **5 movies for each genre** (25 movies total).
-   A movie object must have these properties:

    -   `title`: string
    -   `year`: number
    -   `director`: string
    -   `rating`: number (0-10)
    -   `genre`: string (e.g., "Action", "Comedy", "Drama", "Horror", "Sci-Fi")
    -   `description`: string
    -   `actors`: array of strings
    -   `poster`: string (URL to the movie poster image)

#### Sample movies array

At the bottom of this page, you will find a **sample movies array** you can use. You're also welcome to ask AI to generate an array with movies for you. As long as it has the required properties.

#### Code templates

You can find the templates to get you you get started over here:

-   **Node.js server**: [go to template](./05-class-code.md#node-server)

-   **`fetch()`**: [go to template](./05-class-code.md#fetch-function-client-side)

---

### How It All Connects

-   Your **Node.js server** (http module) will serve the HTML pages and the movies array as JSON.
-   Your **client-side JavaScript** will fetch the data from the server and display it on the pages.
-   The **homepage** uses the data to show the first two movies from each genre.
-   Genre pages show all movies for that genre.

---

### Tips

-   Work step-by-step:

    1. Create your Node.js server first.
        - Use the built-in `http` module to create a simple server.
        - Make sure it can respond to requests as you expect.
        - You can use the code from the class as a starting point.
    2. Create your HTML pages.
        - Create your HTML pages and navigation.
        - Start with the homepage and add links to each genre page.
        - Use basic HTML and CSS to style your pages.
    3. Start connecting everything.
        - Fetch and display data using innerHTML.

-   Test each page as you build it.

---

## Bonus Challenges (optional)

-   Add a **search feature** to filter movies by title or actor.
    -   Only movies that match the search criteria should be displayed.
-   Implement a **sorting feature** to sort movies by rating or year.
    -   Users can choose how they want to sort the movies.

**Hints:**

-   Do this in the client-side JavaScript, you alrready have the data of the movies you need on a specific page.
-   **Search**: You already sort of know how to do the search feature, we did it in the class before. Search in an array, like find all students in week 4.
    -   You can use the `filter()` method in JavaScript to implement this feature. But this is something we never used in class. If you want to use it, make sure you understand how it works
        -   `filter()`: [more info here](https://mimo.org/glossary/javascript/filter)
-   **Sort**: you need can use the `sort()` methods in JavaScript to implement these feature.
    -   `sort()`: [more info here](https://mimo.org/glossary/javascript/sort)

---

## Movies Data Array

You can use the following JavaScript code to create an array of movie objects, each representing a movie in a specific genre. This array can be used to populate your movie website.

```javascript
const movies = [
    // ===== ACTION =====
    {
        title: "Steel Horizon",
        year: 2021,
        director: "Michael Grant",
        rating: 8.1,
        genre: "Action",
        description:
            "A retired Navy captain is forced back into action when pirates hijack a cargo ship.",
        actors: ["Chris Dalton", "Eva Torres", "Liam Brooks"],
        poster: "https://example.com/posters/steel-horizon.jpg",
    },
    {
        title: "Shadow Protocol",
        year: 2019,
        director: "Sarah Whitman",
        rating: 7.4,
        genre: "Action",
        description:
            "A rogue CIA agent uncovers a conspiracy that could ignite a global war.",
        actors: ["Daniel Harris", "Sophia Lee", "Mark Ridley"],
        poster: "https://example.com/posters/shadow-protocol.jpg",
    },
    {
        title: "Zero Hour",
        year: 2022,
        director: "Ava Johnson",
        rating: 8.5,
        genre: "Action",
        description:
            "A race against time to stop a ticking nuclear bomb in New York City.",
        actors: ["Ryan Blake", "Maya Chen", "Tom Keaton"],
        poster: "https://example.com/posters/zero-hour.jpg",
    },
    {
        title: "Iron Fist",
        year: 2018,
        director: "Kevin Doyle",
        rating: 7.2,
        genre: "Action",
        description:
            "A martial artist uses his skills to protect a small town from mercenaries.",
        actors: ["Lance Cooper", "Anna Vega", "George Wright"],
        poster: "https://example.com/posters/iron-fist.jpg",
    },
    {
        title: "Vortex Assault",
        year: 2021,
        director: "Tyler Matthews",
        rating: 8.3,
        genre: "Action",
        description:
            "A pilot must navigate a deadly storm to deliver supplies to a quarantined island.",
        actors: ["Luke Foster", "Chloe Reed", "Andre Kim"],
        poster: "https://example.com/posters/vortex-assault.jpg",
    },

    // ===== COMEDY =====
    {
        title: "Banana Bandits",
        year: 2019,
        director: "Linda Morris",
        rating: 6.8,
        genre: "Comedy",
        description:
            "Two clumsy thieves accidentally steal a shipment of bananas instead of gold.",
        actors: ["Eddie Clark", "Tina Evans", "Greg Hall"],
        poster: "https://example.com/posters/banana-bandits.jpg",
    },
    {
        title: "Roommate Roulette",
        year: 2020,
        director: "Charlie Young",
        rating: 7.0,
        genre: "Comedy",
        description:
            "Three strangers with wildly different personalities end up sharing a tiny apartment.",
        actors: ["Lily Turner", "Ben Hughes", "Sofia Martinez"],
        poster: "https://example.com/posters/roommate-roulette.jpg",
    },
    {
        title: "Office Olympics",
        year: 2022,
        director: "Brian Coleman",
        rating: 7.2,
        genre: "Comedy",
        description:
            "Bored office workers create their own Olympics during a slow business season.",
        actors: ["Emma Russell", "Josh Adams", "Hannah Moore"],
        poster: "https://example.com/posters/office-olympics.jpg",
    },
    {
        title: "Backyard Billionaires",
        year: 2019,
        director: "Oscar Grant",
        rating: 7.1,
        genre: "Comedy",
        description:
            "Two broke cousins accidentally become millionaires after finding buried treasure.",
        actors: ["Derek Hill", "Paula Cruz", "Felix Morgan"],
        poster: "https://example.com/posters/backyard-billionaires.jpg",
    },
    {
        title: "Mall Mayhem",
        year: 2020,
        director: "Jessica Hart",
        rating: 7.0,
        genre: "Comedy",
        description:
            "An accidental fire alarm causes total chaos in the largest mall in the city.",
        actors: ["Kevin Riley", "Ava Simmons", "Owen Price"],
        poster: "https://example.com/posters/mall-mayhem.jpg",
    },

    // ===== DRAMA =====
    {
        title: "Autumn Skies",
        year: 2019,
        director: "Grace Holloway",
        rating: 8.4,
        genre: "Drama",
        description:
            "A widowed painter rediscovers her passion for life through a young art student.",
        actors: ["Maggie Clarke", "Ethan Ray", "Clara Bennett"],
        poster: "https://example.com/posters/autumn-skies.jpg",
    },
    {
        title: "The Last Letter",
        year: 2020,
        director: "Julian Parker",
        rating: 8.2,
        genre: "Drama",
        description:
            "A soldier's final letter to his wife sparks a journey of healing for their family.",
        actors: ["Henry Cole", "Laura Peters", "Sam Whitman"],
        poster: "https://example.com/posters/the-last-letter.jpg",
    },
    {
        title: "Broken Strings",
        year: 2021,
        director: "Melissa Grant",
        rating: 7.9,
        genre: "Drama",
        description:
            "A violin prodigy faces the challenge of rebuilding her career after an accident.",
        actors: ["Anna Rose", "James Holloway", "Victor Kim"],
        poster: "https://example.com/posters/broken-strings.jpg",
    },
    {
        title: "Glass Walls",
        year: 2022,
        director: "Charlotte Reed",
        rating: 8.5,
        genre: "Drama",
        description:
            "A CEO must face the moral consequences of her decisions during a corporate scandal.",
        actors: ["Natalie Brooks", "Alan Torres", "Dylan Scott"],
        poster: "https://example.com/posters/glass-walls.jpg",
    },
    {
        title: "The Long Road Home",
        year: 2018,
        director: "Robert Lane",
        rating: 8.2,
        genre: "Drama",
        description:
            "A war veteran travels across the country to reunite with his estranged daughter.",
        actors: ["Tom Richards", "Grace Lee", "Paul Simmons"],
        poster: "https://example.com/posters/the-long-road-home.jpg",
    },

    // ===== HORROR =====
    {
        title: "Whispering Woods",
        year: 2018,
        director: "Sophie Daniels",
        rating: 7.3,
        genre: "Horror",
        description: "Campers vanish in a forest haunted by an ancient curse.",
        actors: ["Liam Carter", "Emma Brooks", "Aiden Morris"],
        poster: "https://example.com/posters/whispering-woods.jpg",
    },
    {
        title: "The Hollow Eyes",
        year: 2019,
        director: "Marcus Webb",
        rating: 7.6,
        genre: "Horror",
        description:
            "A family moves into a house where the walls seem to be watching.",
        actors: ["Nora White", "Jacob Hill", "Mason Ford"],
        poster: "https://example.com/posters/the-hollow-eyes.jpg",
    },
    {
        title: "Midnight Feast",
        year: 2021,
        director: "Harper Lee",
        rating: 7.4,
        genre: "Horror",
        description: "Guests at a dinner party realize they're on the menu.",
        actors: ["Chloe West", "Owen Young", "Lucas Hayes"],
        poster: "https://example.com/posters/midnight-feast.jpg",
    },
    {
        title: "Beneath the Lake",
        year: 2020,
        director: "Ethan Cross",
        rating: 7.2,
        genre: "Horror",
        description:
            "Divers disturb a sleeping evil in the depths of an isolated lake.",
        actors: ["Mia Clarke", "Ethan Black", "Samantha Lewis"],
        poster: "https://example.com/posters/beneath-the-lake.jpg",
    },
    {
        title: "The Red Door",
        year: 2019,
        director: "Rachel Simmons",
        rating: 7.0,
        genre: "Horror",
        description:
            "A mysterious red door appears in a child's bedroom overnight.",
        actors: ["Zoe King", "Isaac Ross", "Ella Parker"],
        poster: "https://example.com/posters/the-red-door.jpg",
    },

    // ===== SCI-FI =====
    {
        title: "Nebula Rising",
        year: 2019,
        director: "Caleb Moore",
        rating: 8.1,
        genre: "Sci-Fi",
        description:
            "A space crew discovers a new galaxy, but entering it means altering time itself.",
        actors: ["Ryan Torres", "Amelia Diaz", "Carter West"],
        poster: "https://example.com/posters/nebula-rising.jpg",
    },
    {
        title: "Quantum Rift",
        year: 2021,
        director: "Hannah Scott",
        rating: 8.3,
        genre: "Sci-Fi",
        description:
            "A physicist's experiment opens a tear between parallel universes.",
        actors: ["Ethan Clarke", "Sophia Grant", "Logan Morris"],
        poster: "https://example.com/posters/quantum-rift.jpg",
    },
    {
        title: "The Singularity Code",
        year: 2020,
        director: "Derek Hughes",
        rating: 8.0,
        genre: "Sci-Fi",
        description: "An AI gains self-awareness and demands equal rights.",
        actors: ["Oliver Ross", "Maya Brooks", "Daniel Kim"],
        poster: "https://example.com/posters/the-singularity-code.jpg",
    },
    {
        title: "Starlight Exodus",
        year: 2022,
        director: "Ivy Bennett",
        rating: 8.4,
        genre: "Sci-Fi",
        description:
            "Humanity's last survivors flee Earth in search of a new home.",
        actors: ["Noah Lewis", "Chloe Adams", "Liam Rivera"],
        poster: "https://example.com/posters/starlight-exodus.jpg",
    },
    {
        title: "Chronos Divide",
        year: 2018,
        director: "Mason Kelly",
        rating: 7.9,
        genre: "Sci-Fi",
        description:
            "A time traveler must prevent his younger self from altering history.",
        actors: ["Evan Turner", "Sienna Hall", "Owen Brooks"],
        poster: "https://example.com/posters/chronos-divide.jpg",
    },
];
```

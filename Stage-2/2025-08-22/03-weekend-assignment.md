# Weekend Assignment: Movie Database Design & Implementation

**Due Date**: Sunday, August 24, 8 PM, 2025

## Assignment Overview

You will create a **Movie Database System** that can store information about movies, directors, actors, genres, users, and reviews. This database will demonstrate all the relationship types we've learned in class.

## Database Schema Requirements

-   `required` fields must have NOT NULL constraints
-   `optional` fields can be NULL
-   `unique` fields must have UNIQUE constraints

### Solutions

-   [schema.sql](./03-weekend-assigment/schema.sql)
-   [sample_data.sql](./03-weekend-assigment/sample_data.sql)
-   [queries.sql](./03-weekend-assigment/queries.sql)

### Core Tables to Create

#### 1. Directors Table

-   director_id: Primary key, auto-increment integer
-   name: Director's full name (required)
-   birth_year: Year born (optional)
-   nationality: Country of origin (optional)

#### 2. Movies Table

-   movie_id: Primary key, auto-increment integer
-   director_id: Foreign key linking to directors table (required)
-   title: Movie title (required)
-   release_year: Year released (required)
-   description: Plot summary (required)
-   duration_minutes: Movie length (required)
-   poster_url: Link to movie poster image (required)
-   trailer_url: Link to movie trailer (optional)

#### 3. Actors Table

-   actor_id: Primary key, auto-increment integer
-   name: Actor's full name (required)
-   birth_year: Year born (optional)
-   nationality: Country of origin (optional)

#### 4. Genres Table

-   genre_id: Primary key, auto-increment integer
-   name: Genre name like "Action", "Comedy", "Drama" (required and unique)

#### 5. Users Table

-   user_id: Primary key, auto-increment integer
-   email: User's email address (required and unique)
-   password: User's password (required)
-   first_name: User's first name (required)
-   last_name: User's last name (required)
-   date_joined: Date user registered (required)

#### 6. Reviews Table

-   review_id: Primary key, auto-increment integer
-   movie_id: Foreign key linking to movies table (required)
-   user_id: Foreign key linking to users table (required)
-   review_date: Date review was written (required)
-   rating: Rating from 1-10 (required)
-   comment: Written review text (optional)

## 🔗 Relationship Requirements

Your database must support these relationships:

### One-to-Many Relationships:

-   One director can direct many movies
-   One movie can have many reviews
-   One user can write many reviews

### Many-to-Many Relationships:

You need to create junction / pivot tables for these:

#### Movies ↔ Actors

-   One movie can have many actors
-   One actor can appear in many movies
-   Create a junction table called **movie_actors**

#### Movies ↔ Genres

-   One movie can belong to many genres (e.g., Action + Comedy)
-   One genre can contain many movies
-   Create a junction table called **movie_genres**

## Part 1: Create the Database Schema

### Step 1: Create the Basic Tables

Create all 6 core tables with proper:

-   Primary keys with AUTO_INCREMENT
-   Foreign key constraints pointing to the correct parent tables
-   NOT NULL constraints for required fields
-   UNIQUE constraints where specified

### Step 2: Create Junction Tables

#### Movie-Actors Junction Table

-   movie_id: Foreign key to movies table
-   actor_id: Foreign key to actors table
-   character_name: Name of character the actor played (required)
-   Use a composite primary key (both movie_id and actor_id together)

#### Movie-Genres Junction Table

-   movie_id: Foreign key to movies table
-   genre_id: Foreign key to genres table
-   Use a composite primary key (both movie_id and genre_id together)

## Part 2: Insert Sample Data

Mention all your create statements and ask AI to generate sample data for each table. Ensure you have at least:

-   10 directors
-   20 movies
-   15 actors
-   5 genres
-   10 users
-   30 reviews

**AI Prompt for Generating Movie Database Sample Data:**

```
I need help generating sample data for my movie database assignment. I have the following 8 tables with these exact structures:

**Tables:**
1. directors (director_id, name, birth_year, nationality)
2. movies (movie_id, director_id, title, release_year, description,
duration_minutes, poster_url, trailer_url)
3. actors (actor_id, name, birth_year, nationality)
4. genres (genre_id, name)
5. users (user_id, email, password, first_name, last_name,
date_joined)
6. reviews (review_id, movie_id, user_id, review_date, rating,
comment)
7. movie_actors (movie_id, actor_id, character_name)
8. movie_genres (movie_id, genre_id)

**Please generate INSERT statements for:**
- 10 directors (realistic names and details)
- 20 movies (with proper director_id references, realistic titles,
descriptions, durations 90-180 minutes)
- 15 actors (realistic names and details)
- 5 genres (Action, Comedy, Drama, Horror, Sci-Fi)
- 10 users (realistic email addresses, names, passwords, and join
dates from 2023-2024)
- 30 reviews (ratings 1-10, varied comments, realistic review dates)
- Movie-actor relationships (each movie should have 2-4 actors with
character names)
- Movie-genre relationships (each movie should have 1-3 genres)

**Requirements:**
- Use realistic movie titles, actor names, and director names
- Include proper foreign key references
- Make poster_urls realistic (use placeholder image URLs)
- Make trailer_urls optional (some NULL values)
- Ensure review dates are after movie release years
- Use realistic character names for movie_actors table

Please provide complete INSERT statements in proper execution order.
```

## Part 3: Write JOIN Queries

Write these three queries to demonstrate your JOIN skills (and test of your database is working correctly):

### Query 1: Movie Details with Director

Show all movies along with their director names. Include movie title, release year, and director name.

### Query 2: Movie Cast Information

Display all movies with their actors. Include movie title, actor name, and character name.

### Query 3: User Reviews with Movie Info

Show all reviews with complete information. Include movie title, reviewer's first and last name, rating, and comment.

## Submission Requirements 📝

### Create these files:

1. **schema.sql** - All your CREATE TABLE statements
2. **sample_data.sql** - All your INSERT statements with sample data
3. **queries.sql** - The 3 required SELECT queries with JOIN statements

### Folder Structure:

```
weekend-assignment-movie-db/
├── schema.sql
├── sample_data.sql
└── queries.sql
```

## Tips for Success 💡

### Work in Order

1. Create parent tables first (directors, actors, genres, users)
2. Then create child tables (movies, reviews)
3. Finally create junction tables (movie_actors, movie_genres)

### Test as You Go

-   Insert sample data after creating each table
-   Test foreign key relationships work correctly
-   Verify your queries return expected results

### Common Issues to Watch For

-   **Create Order**: Parent tables must exist before child tables
-   **Data Types**: Keep related columns the same data type (all IDs as INT)
-   **Insert Order**: Parent records must exist before child records
-   **Junction Tables**: Both parent records must exist before creating relationships

## Available Resources

-   Database Relationships lesson from Wednesday, Thursday, and Friday classes
-   Practice exercises we completed together
-   Setup file examples for reference

## Important Note on Learning 🚫

**Please attempt this assignment without AI assistance.** The goal is to practice and strengthen your understanding of database design concepts. Use the course materials we've provided, work through problems step by step, and don't be afraid to make mistakes - that's how you learn!

If you get stuck, review the lesson materials and try a simpler approach first. Bring specific questions to class if needed.

---

**Due Date**: Sunday, August 24, 8 PM, 2025
**Estimated Time**: 3-4 hours  
**Difficulty Level**: Intermediate

Good luck building your movie database! 🎬✨

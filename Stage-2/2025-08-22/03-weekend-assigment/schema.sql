SET FOREIGN_KEY_CHECKS = 0;
-- Drop tables if they exist to start fresh
DROP TABLE IF EXISTS movie_actors;
DROP TABLE IF EXISTS movie_genres;
DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS directors;
DROP TABLE IF EXISTS genres;
SET FOREIGN_KEY_CHECKS = 1;

-- ================================================
-- STEP 1: CREATE PARENT TABLES FIRST
-- ================================================
-- Tables with no foreign key dependencies

-- Directors table
CREATE TABLE directors (
    director_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birth_year INT,
    nationality VARCHAR(50)
);

-- Actors table  
CREATE TABLE actors (
    actor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birth_year INT,
    nationality VARCHAR(50)
);

-- Genres table
CREATE TABLE genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

-- Users table
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(150) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_joined DATE NOT NULL
);

-- ================================================
-- STEP 2: CREATE CHILD TABLES WITH FOREIGN KEYS
-- ================================================
-- Tables that reference other tables

-- Movies table (references directors)
CREATE TABLE movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    director_id INT NOT NULL,
    title VARCHAR(200) NOT NULL,
    release_year INT NOT NULL,
    description TEXT NOT NULL,
    duration_minutes INT NOT NULL,
    poster_url VARCHAR(500) NOT NULL,
    trailer_url VARCHAR(500),
    FOREIGN KEY (director_id) REFERENCES directors(director_id) ON DELETE CASCADE
);

-- Reviews table (references movies and users)
CREATE TABLE reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT NOT NULL,
    user_id INT NOT NULL,
    review_date DATE NOT NULL,
    rating INT NOT NULL,
    comment TEXT,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- ================================================
-- STEP 3: CREATE JUNCTION TABLES FOR MANY-TO-MANY
-- ================================================
-- Tables that connect two other tables

-- Movie-Actors junction table (many-to-many relationship)
CREATE TABLE movie_actors (
    movie_id INT NOT NULL,
    actor_id INT NOT NULL,
    character_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (movie_id, actor_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE,
    FOREIGN KEY (actor_id) REFERENCES actors(actor_id) ON DELETE CASCADE
);

-- Movie-Genres junction table (many-to-many relationship)
CREATE TABLE movie_genres (
    movie_id INT NOT NULL,
    genre_id INT NOT NULL,
    PRIMARY KEY (movie_id, genre_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE,
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id) ON DELETE CASCADE
);

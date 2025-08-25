SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS order_details;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS suppliers;
DROP TABLE IF EXISTS customers;
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
    FOREIGN KEY (director_id) REFERENCES directors(director_id)
);

-- Reviews table (references movies and users)
CREATE TABLE reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT NOT NULL,
    user_id INT NOT NULL,
    review_date DATE NOT NULL,
    rating INT NOT NULL,
    comment TEXT,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
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
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES actors(actor_id)
);

-- Movie-Genres junction table (many-to-many relationship)
CREATE TABLE movie_genres (
    movie_id INT NOT NULL,
    genre_id INT NOT NULL,
    PRIMARY KEY (movie_id, genre_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

-- ================================================
-- SCHEMA CREATION COMPLETE
-- ================================================
-- You can now insert sample data into these tables
-- Remember to insert in the correct order:
-- 1. Parent tables first (directors, actors, genres, users)
-- 2. Child tables next (movies, reviews) 
-- 3. Junction tables last (movie_actors, movie_genres)
-- ================================================
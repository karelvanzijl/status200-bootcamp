-- Weekend Assignment: Movie Database JOIN Queries
-- Due: Sunday, August 24, 8 PM, 2025

-- Query 1: Movie Details with Director
-- Show all movies along with their director names. Include movie title, release year, and director name.
SELECT 
    m.title,
    m.release_year,
    d.name AS director_name
FROM movies m
JOIN directors d ON m.director_id = d.director_id
ORDER BY m.release_year DESC;

-- Query 2: Movie Cast Information
-- Display all movies with their actors. Include movie title, actor name, and character name.
SELECT 
    m.title AS movie_title,
    a.name AS actor_name,
    ma.character_name
FROM movies m
JOIN movie_actors ma ON m.movie_id = ma.movie_id
JOIN actors a ON ma.actor_id = a.actor_id
ORDER BY m.title, a.name;

-- Query 3: User Reviews with Movie Info
-- Show all reviews with complete information. Include movie title, reviewer's first and last name, rating, and comment.
SELECT 
    m.title AS movie_title,
    u.first_name,
    u.last_name,
    r.rating,
    r.comment,
    r.review_date
FROM reviews r
JOIN movies m ON r.movie_id = m.movie_id
JOIN users u ON r.user_id = u.user_id
ORDER BY r.review_date DESC;